///////////
// Foods //
///////////
//Subtypes of /obj/item/chems/food are food items that people consume whole. The key points are that they are created
//	already filled with reagents and are destroyed when empty. Additionally, they make a "munching" noise when eaten.

//Food can hold a maximum of 50 units Generally speaking, you don't want to go over 40
//	total for the item because you want to leave space for extra condiments. If you want an effect, add a reagent for
//	it. Try to stick to existing reagents when possible (so if you want a stronger healing effect, just use regenerative serum).

/obj/item/chems/food
	name = "snack"
	desc = "Yummy!"
	icon = 'icons/obj/food.dmi'
	icon_state = null
	var/bitesize = 1
	var/bitecount = 0
	var/slice_path
	var/slices_num
	var/dried_type = null
	var/dry = 0
	var/nutriment_amt = 0
	var/nutriment_type = /decl/material/liquid/nutriment // Used to determine which base nutriment type is spawned for this item.
	var/list/nutriment_desc = list("food" = 1)    // List of flavours and flavour strengths. The flavour strength text is determined by the ratio of flavour strengths in the snack.
	var/list/eat_sound = 'sound/items/eatfood.ogg'
	var/filling_color = "#ffffff" //Used by sandwiches.
	var/trash = null
	randpixel = 6
	possible_transfer_amounts = null
	volume = 50
	center_of_mass = @"{'x':16,'y':16}"
	w_class = ITEM_SIZE_SMALL
	var/list/attack_products //Items you can craft together. Like bomb making, but with food and less screwdrivers.
	// Uses format list(ingredient = result_type). The ingredient can be a typepath or a kitchen_tag string (used for mobs or plants)
	var/batter_coating = null // coating typepath, NOT decl
	var/do_coating_prefix = TRUE ///If 0, we wont do "battered thing" or similar prefixes. Mainly for recipes that include batter but have a special name
	/**
	 * Used for foods that are "cooked" without being made into a specific recipe or combination.
	 * Generally applied during modification cooking with oven/fryer.
	 * Used to stop deep-fried meat from looking like slightly tanned raw meat, and make it actually look cooked.
	 */
	var/cooked_icon = null


//Code for dipping food in batter
/**
 * Perform checks, then apply any applicable coatings.
 *
 * @param dip /obj The object to attempt to dip src into.
 * @param user /mob The mob attempting to dip src into dip.
 *
 * @return TRUE if coating applied, FALSE otherwise
 */
/obj/item/chems/food/proc/attempt_apply_coating(var/obj/dip, var/mob/user)
	if(!dip || !ATOM_IS_OPEN_CONTAINER(dip) || istype(dip, /obj/item/chems/food) || !Adjacent(user))
		return
	for (var/reagent_type in dip.reagents?.reagent_volumes)
		if(!ispath(reagent_type, /decl/material/liquid/nutriment/batter))
			continue
		return apply_coating(dip.reagents, reagent_type, user)

//This proc handles drawing coatings out of a container when this food is dipped into it
/obj/item/chems/food/proc/apply_coating(var/datum/reagents/holder, var/applied_coating, var/mob/user)
	if (batter_coating)
		var/decl/material/coating_reagent = decls_repository.get_decl(batter_coating)
		to_chat(user, "[src] is already coated in [coating_reagent.name]!")
		return FALSE

	var/decl/material/liquid/nutriment/batter/applied_coating_reagent = decls_repository.get_decl(applied_coating)

	//Calculate the reagents of the coating needed
	var/req = 0
	for (var/r in reagents.reagent_volumes)
		if (ispath(r, /decl/material/liquid/nutriment))
			req += reagents.reagent_volumes[r] * 0.2
		else
			req += reagents.reagent_volumes[r] * 0.1

	req += w_class*0.5

	if (!req)
		//the food has no reagents left, it's probably getting deleted soon
		return FALSE

	if (holder.reagent_volumes[applied_coating] < req)
		to_chat(user, SPAN_WARNING("There's not enough [applied_coating_reagent.name] to coat [src]!"))
		return FALSE

	//First make sure there's space for our batter
	if (REAGENTS_FREE_SPACE(reagents) < req+5)
		var/extra = req+5 - REAGENTS_FREE_SPACE(reagents)
		reagents.maximum_volume += extra

	//Suck the coating out of the holder
	holder.trans_to_holder(reagents, req)

	if (!REAGENT_VOLUME(reagents, applied_coating))
		return

	batter_coating = applied_coating
	var/icon/I = icon(icon, icon_state, dir)
	color = "#ffffff" //Some fruits use the color var. Reset this so it doesnt tint the batter
	I.Blend(new /icon('icons/obj/food_custom.dmi', rgb(255,255,255)),ICON_ADD)
	I.Blend(new /icon('icons/obj/food_custom.dmi', applied_coating_reagent.icon_raw),ICON_MULTIPLY)
	var/image/J = image(I)
	J.alpha = 200
	J.blend_mode = BLEND_OVERLAY
	add_overlay(J)

	if (user)
		user.visible_message(SPAN_NOTICE("[user] dips [src] into \the [applied_coating_reagent.name]"), SPAN_NOTICE("You dip [src] into \the [applied_coating_reagent.name]"))

	return TRUE

//Called by cooking machines. This is mainly intended to set properties on the food that differ between raw/cooked
/obj/item/chems/food/proc/cook()
	if (batter_coating)
		cut_overlays()
		var/decl/material/liquid/nutriment/batter/our_coating = decls_repository.get_decl(batter_coating)
		var/icon/I = icon(icon, icon_state, dir)
		color = COLOR_WHITE //Some fruits use the color var
		I.Blend(new /icon('icons/obj/food_custom.dmi', rgb(255,255,255)),ICON_ADD)
		I.Blend(new /icon('icons/obj/food_custom.dmi', our_coating.icon_cooked),ICON_MULTIPLY)
		var/image/J = image(I)
		J.alpha = 200
		add_overlay(J)

		if (do_coating_prefix)
			SetName("[our_coating.coated_adj] [name]")

	for (var/r in reagents.reagent_volumes)
		if (ispath(r, /decl/material/liquid/nutriment/batter))
			LAZYINITLIST(reagents.reagent_data)
			LAZYSET(reagents.reagent_data[r], "cooked", TRUE)

/obj/item/chems/food/Initialize()
	.=..()
	if(nutriment_amt)
		reagents.add_reagent(nutriment_type, nutriment_amt, nutriment_desc)
	amount_per_transfer_from_this = bitesize
	for(var/reagent_type in reagents.reagent_volumes)
		if(ispath(reagent_type, /decl/material/liquid/nutriment/batter))
			LAZYINITLIST(reagents.reagent_data)
			LAZYINITLIST(reagents.reagent_data[reagent_type]) // add a new reagent_data entry for each reagent type
			reagents.reagent_data[reagent_type]["cooked"] = TRUE // batter starts cooked in compile-time foods

	//Placeholder for effect that trigger on eating that aren't tied to reagents.
/obj/item/chems/food/proc/On_Consume(var/mob/M)
	if(!reagents.total_volume)
		M.visible_message("<span class='notice'>[M] finishes eating \the [src].</span>","<span class='notice'>You finish eating \the [src].</span>")
		M.drop_item()
		M.update_personal_goal(/datum/goal/achievement/specific_object/food, type)
		if(trash)
			if(ispath(trash,/obj/item))
				var/obj/item/TrashItem = new trash(get_turf(M))
				M.put_in_hands(TrashItem)
			else if(istype(trash,/obj/item))
				M.put_in_hands(trash)
		qdel(src)
	return

/obj/item/chems/food/attack_self(mob/user)
	attack(user, user)

/obj/item/chems/food/dragged_onto(var/mob/user)
	attack(user, user)

/obj/item/chems/food/self_feed_message(mob/user)
	if(!iscarbon(user))
		return ..()
	var/mob/living/carbon/C = user
	var/fullness = C.get_fullness()
	if (fullness <= 50)
		to_chat(C, SPAN_WARNING("You hungrily chew out a piece of [src] and gobble it!"))
	if (fullness > 50 && fullness <= 150)
		to_chat(C, SPAN_NOTICE("You hungrily begin to eat [src]."))
	if (fullness > 150 && fullness <= 350)
		to_chat(C, SPAN_NOTICE("You take a bite of [src]."))
	if (fullness > 350 && fullness <= 550)
		to_chat(C, SPAN_NOTICE("You unwillingly chew a bit of [src]."))

/obj/item/chems/food/feed_sound(mob/user)
	if(eat_sound)
		playsound(user, pick(eat_sound), rand(10, 50), 1)

/obj/item/chems/food/standard_feed_mob(mob/user, mob/target)
	. = ..()
	if(.)
		bitecount++
		On_Consume(target)

/obj/item/chems/food/attack(mob/M, mob/user, def_zone)
	if(!reagents || !reagents.total_volume)
		to_chat(user, "<span class='danger'>None of [src] left!</span>")
		qdel(src)
		return 0
	if(!ATOM_IS_OPEN_CONTAINER(src))
		to_chat(user, "<span class='notice'>\The [src] isn't open!</span>")
		return 0
	if(istype(M, /mob/living/carbon))
		//TODO: replace with standard_feed_mob() call.
		var/mob/living/carbon/C = M
		var/fullness = C.get_fullness()
		if (fullness > 550)
			var/message = C == user ? "You cannot force any more of [src] to go down your throat." : "[user] cannot force anymore of [src] down [M]'s throat."
			to_chat(user, SPAN_WARNING(message))
			return 0
		if(standard_feed_mob(user, M))
			return 1
	return 0

/obj/item/chems/food/examine(mob/user, distance)
	. = ..()
	if(distance > 1)
		return
	if (bitecount==0)
		return
	else if (bitecount==1)
		to_chat(user, "<span class='notice'>\The [src] was bitten by someone!</span>")
	else if (bitecount<=3)
		to_chat(user, "<span class='notice'>\The [src] was bitten [bitecount] time\s!</span>")
	else
		to_chat(user, "<span class='notice'>\The [src] was bitten multiple times!</span>")

/obj/item/chems/food/attackby(obj/item/W, mob/living/user)
	if(!istype(user))
		return
	if(istype(W,/obj/item/storage))
		..()// -> item/attackby()
		return
	// Eating with forks
	if(istype(W,/obj/item/kitchen/utensil))
		var/obj/item/kitchen/utensil/U = W
		if(U.scoop_food)
			if(!U.reagents)
				U.create_reagents(5)

			if (U.reagents.total_volume > 0)
				to_chat(user, "<span class='warning'>You already have something on your [U].</span>")
				return

			user.visible_message( \
				"\The [user] scoops up some [src] with \the [U]!", \
				"<span class='notice'>You scoop up some [src] with \the [U]!</span>" \
			)

			src.bitecount++
			U.overlays.Cut()
			U.loaded = "[src]"
			var/image/I = new(U.icon, "loadedfood")
			I.color = src.filling_color
			U.overlays += I

			if(!reagents)
				PRINT_STACK_TRACE("A snack [type] failed to have a reagent holder when attacked with a [W.type]. It was [QDELETED(src) ? "" : "not"] being deleted.")
			else
				reagents.trans_to_obj(U, min(reagents.total_volume,5))
				if (reagents.total_volume <= 0)
					qdel(src)
			return

	if (is_sliceable())
		//these are used to allow hiding edge items in food that is not on a table/tray
		var/can_slice_here = isturf(src.loc) && ((locate(/obj/structure/table) in src.loc) || (locate(/obj/machinery/optable) in src.loc) || (locate(/obj/item/storage/tray) in src.loc))
		var/hide_item = !has_edge(W) || !can_slice_here

		if (hide_item)
			if (W.w_class >= src.w_class || is_robot_module(W) || istype(W,/obj/item/chems/condiment))
				return
			if(!user.unEquip(W, src))
				return

			to_chat(user, "<span class='warning'>You slip \the [W] inside \the [src].</span>")
			add_fingerprint(user)
			W.forceMove(src)
			return

		if (has_edge(W))
			if (!can_slice_here)
				to_chat(user, "<span class='warning'>You cannot slice \the [src] here! You need a table or at least a tray to do it.</span>")
				return

			var/slices_lost = 0
			if (W.w_class > ITEM_SIZE_NORMAL)
				user.visible_message("<span class='notice'>\The [user] crudely slices \the [src] with [W]!</span>", "<span class='notice'>You crudely slice \the [src] with your [W]!</span>")
				slices_lost = rand(1,min(1,round(slices_num/2)))
			else
				user.visible_message("<span class='notice'>\The [user] slices \the [src]!</span>", "<span class='notice'>You slice \the [src]!</span>")

			var/reagents_per_slice = reagents.total_volume/slices_num
			for(var/i=1 to (slices_num-slices_lost))
				var/obj/slice = new slice_path (src.loc)
				reagents.trans_to_obj(slice, reagents_per_slice)
			qdel(src)
			return

	var/create_type
	for(var/key in attack_products)
		if(ispath(key) && !istype(W, key))
			continue
		if(istext(key))
			if(!istype(W, /obj/item/chems/food/grown))
				continue
			var/obj/item/chems/food/grown/G = W
			if(G.seed.kitchen_tag && G.seed.kitchen_tag != key)
				continue
		create_type = attack_products[key]
	if (!ispath(create_type))
		return
	if(!user.canUnEquip(src))
		return

	var/obj/item/chems/food/result = new create_type()
	//If the snack was in your hands, the result will be too
	if (src in user.held_item_slots)
		user.drop_from_inventory(src)
		user.put_in_hands(result)
	else
		result.dropInto(loc)

	qdel(W)
	qdel(src)
	to_chat(user, SPAN_NOTICE("You make \the [result]!"))

/obj/item/chems/food/proc/is_sliceable()
	return (slices_num && slice_path && slices_num > 0)

/obj/item/chems/food/proc/on_dry(var/atom/newloc)
	if(dried_type == type)
		SetName("dried [name]")
		color = "#a38463"
		dry = TRUE
		if(isloc(newloc))
			forceMove(newloc)
		return src
	. = new dried_type(newloc || get_turf(src))
	qdel(src)

/obj/item/chems/food/Destroy()
	if(contents)
		for(var/atom/movable/something in contents)
			something.dropInto(loc)
	. = ..()

/obj/item/chems/food/attack_animal(var/mob/user)
	if(!isanimal(user) && !isalien(user))
		return
	user.visible_message("<b>[user]</b> nibbles away at \the [src].","You nibble away at \the [src].")
	bitecount++
	if(reagents && user.reagents)
		reagents.trans_to_mob(user, bitesize, CHEM_INGEST)
	spawn(5)
		if(!src && !user.client)
			user.custom_emote(1,"[pick("burps", "cries for more", "burps twice", "looks at the area where the food was")]")
			qdel(src)
	On_Consume(user)

/obj/item/chems/food/proc/update_food_appearance_from(var/obj/item/donor, var/food_color, var/copy_donor_appearance = TRUE)
	filling_color = food_color
	if(copy_donor_appearance)
		appearance = donor
		color = food_color
		if(istype(donor, /obj/item/holder))
			var/matrix/M = matrix()
			M.Turn(90)
			M.Translate(1,-6)
			transform = M
	update_icon()

/obj/item/chems/food/on_update_icon()
	cut_overlays()
	if(check_state_in_icon("[icon_state]_filling", icon))
		var/image/I = image(icon, "[icon_state]_filling")
		I.color = filling_color
		add_overlay(I)