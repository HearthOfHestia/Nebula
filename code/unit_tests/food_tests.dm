/**
 *  Each slice origin items should cut into the same slice.
 *
 *  Each slice type defines an item from which it originates. Each sliceable
 *  item defines what item it cuts into. This test checks if the two defnitions
 *  are consistent between the two items.
 */
/datum/unit_test/food_slices_and_origin_items_should_be_consistent
	name = "FOOD: Each slice origin item should cut into the appropriate slice"

/datum/unit_test/food_slices_and_origin_items_should_be_consistent/start_test()
	var/any_failed = FALSE

	for (var/subtype in subtypesof(/obj/item/chems/food/slice))
		var/obj/item/chems/food/slice/slice = subtype
		if(!initial(slice.whole_path))
			log_bad("[slice] does not define a whole_path.")
			any_failed = TRUE
			continue

		if(!ispath(initial(slice.whole_path), /obj/item/chems/food/sliceable))
			log_bad("[slice]/whole_path is not a subtype of sliceable.")
			any_failed = TRUE
			continue

		var/obj/item/chems/food/sliceable/whole = initial(slice.whole_path)

		// note that the slice can be a subtype of the one defined in slice_path
		if(!ispath(slice, initial(whole.slice_path)))
			log_bad("[whole] does not define slice_path as [slice].")
			any_failed = TRUE
			continue

	if(any_failed)
		fail("Some slice types were incorrectly defined.")
	else
		pass("All slice types defined correctly.")

	return 1


/**
 *  Each recipe's fruit entries should correspond to some plant's kitchen_tag.
 *
 *  Seed datums define kitchen_tags and traits that determine if they can be
 *  modified in certain ways, while recipes define combinations of tags and
 *  traits that they need to succeed. This test ensures that all entries in
 *  the latter are valid.
 */
/datum/unit_test/kitchen_tags
	name = "FOOD: Recipe fruit entries shall correspond to seeds"
	var/static/list/modifiers = list("dried", "slice")

/datum/unit_test/kitchen_tags/start_test()
	var/list/failures = list()
	var/list/known_tags = list()

	for(var/seedname in SSplants.seeds)
		var/datum/seed/seed = SSplants.seeds[seedname]
		if(!seed.roundstart)
			continue
		if(!seed.kitchen_tag)
			continue
		LAZYADD(known_tags[seed.kitchen_tag], seed)

	var/list/recipe_subtypes = decls_repository.get_decls_of_subtype(/decl/recipe)
	for (var/recipetype in recipe_subtypes)
		var/decl/recipe/recipe = recipe_subtypes[recipetype]
		for(var/fruit_entry in recipe.fruit)
			var/list/tags = splittext(fruit_entry, " ")
			if(!length(tags))
				LAZYADD(failures[recipetype], " - has invalid seed tag '[fruit_entry]'")
				continue
			var/base_tag = LAZYACCESS((tags - modifiers), 1)
			if(!base_tag)
				LAZYADD(failures[recipetype], " - has fruit entry '[fruit_entry]' that is only modifiers")
				continue
			if(!LAZYLEN(known_tags[base_tag]))
				LAZYADD(failures[recipetype], " - has fruit entry '[fruit_entry]' and no matching seed")
				continue
			if("slice" in tags)
				var/slice_failed = FALSE
				for(var/datum/seed/S in known_tags[base_tag])
					if(!S.get_trait(TRAIT_FLESH_COLOUR))
						LAZYADD(failures[recipetype], " - has fruit entry '[fruit_entry]', but [S.type] cannot be sliced")
						slice_failed = TRUE
						continue
				if(slice_failed)
					continue

	// Report failures.
	if(length(failures))
		var/failtext = ""
		for(var/failed_recipe in failures)
			failtext += "\n[failed_recipe]:\n\t[jointext(failures[failed_recipe],"\n\t")]"
		fail("[length(failures)] /decl/recipe\s failed kitchen tag validation.[failtext]")
	else
		pass("All /decl/recipe kitchen tags were validated successfully.")
	return 1