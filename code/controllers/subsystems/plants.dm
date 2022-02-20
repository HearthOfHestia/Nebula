PROCESSING_SUBSYSTEM_DEF(plants)
	name = "Plants"
	priority = SS_PRIORITY_PLANTS
	runlevels = RUNLEVEL_GAME|RUNLEVEL_POSTGAME
	flags = SS_BACKGROUND|SS_POST_FIRE_TIMING
	init_order = SS_INIT_PLANTS
	wait = 60

	process_proc = /obj/machinery/portable_atmospherics/hydroponics/Process

	var/list/product_descs = list()         // Stores generated fruit descs.
	var/list/seeds = list()                 // All seed data stored here.
	var/list/gene_tag_masks = list()        // Gene obfuscation for delicious trial and error goodness.
	var/list/plant_icon_cache = list()      // Stores images of growth, fruits and seeds.
	var/list/plant_sprites = list()         // List of all harvested product icon state names.
	var/list/plant_product_sprites = list() // List of all growth icon state names plus number of growth stages.
	var/list/gene_masked_list = list()		// Stored gene masked list, rather than recreating it when needed.
	var/list/plant_gene_datums = list()		// Stored datum versions of the gene masked list.

/datum/controller/subsystem/processing/plants/Initialize()
	// Build the icon lists.
	for(var/icostate in icon_states('icons/obj/hydroponics/hydroponics_growing.dmi'))
		var/split = findtext(icostate,"-")
		if(!split)
			// invalid icon_state
			continue

		var/ikey = copytext(icostate,(split+1))
		if(ikey == "dead")
			// don't count dead icons
			continue
		ikey = text2num(ikey)
		var/base = copytext(icostate,1,split)

		if(!(plant_sprites[base]) || (plant_sprites[base]<ikey))
			plant_sprites[base] = ikey

	for(var/icostate in icon_states('icons/obj/hydroponics/hydroponics_products.dmi'))
		var/split = findtext(icostate,"-")
		if(split)
			plant_product_sprites |= copytext(icostate,1,split)

	// Populate the global seed datum list.
	for(var/type in subtypesof(/datum/seed))
		var/datum/seed/S = new type
		S.update_growth_stages()
		seeds[S.name] = S
		S.roundstart = 1

	//Might as well mask the gene types while we're at it.
	var/list/gene_datums = decls_repository.get_decls_of_subtype(/decl/plantgene)
	var/list/used_masks = list()
	var/list/plant_traits = ALL_GENES
	while(plant_traits && plant_traits.len)
		var/gene_tag = pick(plant_traits)
		var/gene_mask = "[uppertext(num2hex(rand(0,255)))]"

		while(gene_mask in used_masks)
			gene_mask = "[uppertext(num2hex(rand(0,255)))]"

		var/decl/plantgene/G

		for(var/D in gene_datums)
			var/decl/plantgene/P = gene_datums[D]
			if(gene_tag == P.gene_tag)
				G = P
				gene_datums -= D
		used_masks += gene_mask
		plant_traits -= gene_tag
		gene_tag_masks[gene_tag] = gene_mask
		plant_gene_datums[gene_mask] = G
		gene_masked_list.Add(list(list("tag" = gene_tag, "mask" = gene_mask)))
	. = ..()

// Proc for creating a random seed type.
/datum/controller/subsystem/processing/plants/proc/create_random_seed(var/survive_on_station)
	var/datum/seed/seed = new()
	seed.randomize()
	seed.name = "[seed.uid]"
	seed.base_seed_value = rand(10, 15)
	seeds[seed.name] = seed

	if(survive_on_station)
		seed.consume_gasses = null
		seed.set_trait(TRAIT_IDEAL_HEAT,293)
		seed.set_trait(TRAIT_HEAT_TOLERANCE,20)
		seed.set_trait(TRAIT_IDEAL_LIGHT,4)
		seed.set_trait(TRAIT_LIGHT_TOLERANCE,5)
		seed.set_trait(TRAIT_LOWKPA_TOLERANCE,25)
		seed.set_trait(TRAIT_HIGHKPA_TOLERANCE,200)
	return seed

/datum/controller/subsystem/processing/plants/proc/add_product_icon(var/icon_path, var/icon_state, var/fruit_color, var/leaf_color)
	var/icon_key = "fruit-[icon_state]-[fruit_color]-[leaf_color]"
	var/image/plant_icon = image(icon_path,"blank")
	var/image/fruit_base = image(icon_path,"[icon_state]-product")
	fruit_base.color = "[fruit_color]"
	plant_icon.add_overlay(fruit_base)
	if("[icon_state]-leaf" in cached_icon_states(icon_path))
		var/image/fruit_leaves = image(icon_path,"[icon_state]-leaf")
		fruit_leaves.color = "[leaf_color]"
		plant_icon.add_overlay(fruit_leaves)
	plant_icon_cache[icon_key] = plant_icon
	return plant_icon_cache[icon_key]

/datum/controller/subsystem/processing/plants/proc/get_fruit_icon(var/icon_path, var/icon_state, var/fruit_color, var/leaf_color)
	var/icon_key = "fruit-[icon_state]-[fruit_color]-[leaf_color]"
	return plant_icon_cache[icon_key] || add_product_icon(icon_path, icon_state, fruit_color, leaf_color)

/datum/controller/subsystem/processing/plants/proc/add_plant_icon(var/icon_path, var/icon_state, var/growth_stage, var/plant_color, var/large, var/leaf_color = FALSE)
	var/icon_key = "plant-[icon_state]-[growth_stage]-[leaf_color]-[large]"
	var/image/res = image(icon_path, "[icon_state]-[growth_stage]")

	res.color = plant_color

	if(large)
		res.pixel_x = -8
		res.pixel_y = -16

	if(leaf_color)
		var/image/I = image(res.icon, "[icon_state]-[growth_stage]-leaves")
		I.color = leaf_color
		I.appearance_flags = RESET_COLOR
		res.add_overlay(I)

	plant_icon_cache[icon_key] = res
	return res

/datum/controller/subsystem/processing/plants/proc/get_plant_icon(var/icon_path, var/icon_state, var/growth_stage, var/plant_color, var/large, var/leaf_color = FALSE)
	var/icon_key = "plant-[icon_state]-[growth_stage]-[leaf_color]-[large]"
	return plant_icon_cache[icon_key] || add_plant_icon(icon_path, icon_state, growth_stage, plant_color, large, leaf_color)

/datum/controller/subsystem/processing/plants/proc/add_product_overlay(var/icon_path, var/icon_state, var/product_color)
	var/icon_key = "product-[icon_state]-[product_color]"
	var/image/harvest_overlay = image(icon_path, icon_state)
	harvest_overlay.color = product_color
	plant_icon_cache[icon_key] = harvest_overlay
	return harvest_overlay

/datum/controller/subsystem/processing/plants/proc/get_product_overlay(var/icon_path, var/icon_state, var/product_color)
	var/icon_key = "product-[icon_state]-[product_color]"
	return plant_icon_cache[icon_key] || add_product_overlay(icon_path, icon_state, product_color)

/datum/controller/subsystem/processing/plants/proc/add_dead_overlay(var/icon_path, var/icon_state)
	var/icon_key = "dead-[icon_state]"
	var/image/dead_overlay = image(icon_path, "[icon_state]-dead")
	dead_overlay.color = DEAD_PLANT_COLOUR
	plant_icon_cache[icon_key] = dead_overlay
	return dead_overlay

/datum/controller/subsystem/processing/plants/proc/get_dead_overlay(var/icon_path, var/icon_state)
	var/icon_key = "dead-[icon_state]"
	return plant_icon_cache[icon_key] || add_dead_overlay(icon_path, icon_state)

/datum/controller/subsystem/processing/plants/proc/add_seed_mask(var/icon_path, var/mask_color, var/is_seeds)
	var/icon_key = "seed-mask-[is_seeds ? mask_color : "spores"]"
	var/image/seed_mask = image(icon_path, "[is_seeds ? "seed" : "spore"]-mask")
	if(is_seeds) // Spore glass bits aren't coloured.
		seed_mask.color = mask_color
	plant_icon_cache[icon_key] = seed_mask
	return seed_mask

/datum/controller/subsystem/processing/plants/proc/get_seed_mask(var/icon_path, var/mask_color, var/is_seeds)
	var/icon_key = "seed-mask-[is_seeds ? mask_color : "spores"]"
	return plant_icon_cache[icon_key] || add_seed_mask(icon_path, mask_color, is_seeds)

/datum/controller/subsystem/processing/plants/proc/add_seed_overlay(var/icon_path, var/icon_state, var/seed_color)
	var/icon_key = "seed-[icon_state]-[seed_color]"
	var/image/seed_overlay = image(icon_path,"[icon_state]")
	seed_overlay.color = seed_color
	plant_icon_cache[icon_key] = seed_overlay
	return seed_overlay

/datum/controller/subsystem/processing/plants/proc/get_seed_overlay(var/icon_path, var/icon_state, var/seed_color)
	var/icon_key = "seed-[icon_state]-[seed_color]"
	return plant_icon_cache[icon_key] || add_seed_overlay(icon_path, icon_state, seed_color)