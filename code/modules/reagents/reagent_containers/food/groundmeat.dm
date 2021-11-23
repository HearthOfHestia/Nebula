//meatkind and its various interactions with itself. Recipes are in a different .dm

//The large pile of mince becomes two medium sized piles of mince
/obj/item/chems/food/sliceable/largemince
	name = "minced meat"
	desc = "A large pile of of minced meat."
	icon = 'icons/obj/food_ingredients.dmi'
	icon_state = "large_mince"
	bitesize = 2
	center_of_mass = @"{'x':16,'y':16}"
	nutriment_desc = list("meat" = 6)
	nutriment_amt = 6
	nutriment_type = /decl/material/liquid/nutriment/protein
	slice_path = /obj/item/chems/food/sliceable/mediummince
	slices_num = 2

// medium sized minced meat becomes two small minced meats
/obj/item/chems/food/sliceable/mediummince
	name = "minced meat"
	desc = "A medium sized wad of meat."
	icon = 'icons/obj/food_ingredients.dmi'
	icon_state = "medium_mince"
	center_of_mass = @"{'x':16,'y':16}"
	nutriment_desc = list("meat" = 3)
	nutriment_amt = 3
	slice_path = /obj/item/chems/food/smallmince
	slices_num = 2
	attack_products = list(/obj/item/chems/food/sliceable/mediummince = /obj/item/chems/food/sliceable/largemince)

//like atoms, the small minced meat can no longer be sliced, but it may be merged to form a larger one
/obj/item/chems/food/smallmince
	name = "minced meat"
	desc = "A small ball of minced meat. Commonly known as a meatball."
	icon = 'icons/obj/food_ingredients.dmi'
	icon_state = "small_mince"
	bitesize = 2
	center_of_mass = @"{'x':16,'y':13}"
	nutriment_desc = list("meat" = 3)
	nutriment_amt = 3
	nutriment_type = /decl/material/liquid/nutriment/protein
	attack_products = list(/obj/item/chems/food/smallmince = /obj/item/chems/food/sliceable/mediummince)


// Roller interactions

// meat + rolling pin = flat meat
/obj/item/chems/food/sliceable/largemince/attackby(obj/item/W, mob/user)
	if(istype(W,/obj/item/kitchen/rollingpin))
		var/obj/item/chems/food/sliceable/flatlargemince/result = new()
		result.dropInto(loc)
		to_chat(user, "You flatten the meat.")
		qdel(src)
		return TRUE
	. = ..()

// meat + rolling pin = flat meat
/obj/item/chems/food/sliceable/mediummince/attackby(obj/item/W, mob/user)
	if(istype(W,/obj/item/kitchen/rollingpin))
		var/obj/item/chems/food/sliceable/flatmediummince/result = new()
		result.dropInto(loc)
		to_chat(user, "You flatten the meat.")
		qdel(src)
		return TRUE
	. = ..()

// meat + rolling pin = flat meat
/obj/item/chems/food/smallmince/attackby(obj/item/W, mob/user)
	if(istype(W,/obj/item/kitchen/rollingpin))
		var/obj/item/chems/food/flatsmallmince/result = new()
		result.dropInto(loc)
		to_chat(user, "You flatten the meat.")
		qdel(src)
		return TRUE
	. = ..()

//Cutter interactions

// large meat becomes two medium meats


// slicable into 2x meatslices
/obj/item/chems/food/sliceable/flatlargemince
	name = "meat patty"
	desc = "A large flattened meat."
	icon = 'icons/obj/food_ingredients.dmi'
	icon_state = "large_flat_meat"
	slice_path = /obj/item/chems/food/sliceable/flatmediummince
	slices_num = 2
	center_of_mass = @"{'x':16,'y':16}"
	attack_products = list(/obj/item/chems/food/sliceable/largedough = /obj/item/chems/food/rawbellington)

// slicable into 2x smaller meatslices
/obj/item/chems/food/sliceable/flatmediummince
	name = "meat patty"
	desc = "A medium sized flattened meat."
	icon = 'icons/obj/food_ingredients.dmi'
	icon_state = "medium_flat_meat"
	slice_path = /obj/item/chems/food/flatsmallmince
	slices_num = 2
	center_of_mass = @"{'x':16,'y':16}"
	attack_products = list(/obj/item/chems/food/sliceable/flatmediummince = /obj/item/chems/food/sliceable/flatlargemince)

//a unslicable small flat piece of meat, it too can be combined to form a larger one
/obj/item/chems/food/flatsmallmince
	name = "meat patty"
	desc = "A small flat piece of meat."
	icon = 'icons/obj/food_ingredients.dmi'
	icon_state = "small_flat_meat"
	bitesize = 2
	center_of_mass = @"{'x':16,'y':13}"
	nutriment_desc = list("meat" = 3)
	nutriment_amt = 3
	nutriment_type = /decl/material/liquid/nutriment/protein
	attack_products = list(/obj/item/chems/food/flatsmallmince = /obj/item/chems/food/sliceable/flatmediummince)

//slicables defines for meat

/obj/item/chems/food/sliceable/largeflatmeat/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/protein, 3)
	reagents.add_reagent(/decl/material/liquid/nutriment, 1)

/obj/item/chems/food/sliceable/mediumflatmeat/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/protein, 3)
	reagents.add_reagent(/decl/material/liquid/nutriment, 1)

/obj/item/chems/food/sliceable/flatsmallmince/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/protein, 3)
	reagents.add_reagent(/decl/material/liquid/nutriment, 1)

//dirty defines for meat alt-modes

/obj/item/chems/food/rawmeatbaguette/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/protein, 3)
	reagents.add_reagent(/decl/material/liquid/nutriment, 1)

/obj/item/chems/food/rawmeatsausagebun/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/protein, 3)
	reagents.add_reagent(/decl/material/liquid/nutriment, 1)

/obj/item/chems/food/rawmeatpretzel/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/protein, 3)
	reagents.add_reagent(/decl/material/liquid/nutriment, 1)

//Hand interactions with the meat

/obj/item/chems/food/sliceable/largeflatmeat/attack_self(mob/user)
		var/obj/item/chems/food/sliceable/largemince/result = new()
		user.put_in_hands(result)
		to_chat(user, "You roll up the flat meat into a lump.")
		qdel(src)

/obj/item/chems/food/sliceable/mediumflatmeat/attack_self(mob/user)
		var/obj/item/chems/food/sliceable/mediummince/result = new()
		user.put_in_hands(result)
		to_chat(user, "You roll up the flat meat into a lump.")
		qdel(src)

/obj/item/chems/food/flatsmallmince/attack_self(mob/user)
		var/obj/item/chems/food/smallmince/result = new()
		user.put_in_hands(result)
		to_chat(user, "You roll up the flat meat into a lump.")
		qdel(src)

/obj/item/chems/food/smallmince/attack_self(mob/user)
		var/obj/item/chems/food/rawpretzel/result = new()
		user.put_in_hands(result)
		to_chat(user, "You roll up the meat into a pretzel.")
		qdel(src)

/obj/item/chems/food/rawpretzel/attack_self(mob/user)
		var/obj/item/chems/food/smallmince/result = new()
		user.put_in_hands(result)
		to_chat(user, "You roll up the uncooked pretzel into a meat wad.")
		qdel(src)

/obj/item/chems/food/sliceable/mediummince/attack_self(mob/user)
		var/obj/item/chems/food/rawsausagebun/result = new()
		user.put_in_hands(result)
		to_chat(user, "You roll up the meat into a sausage bun.")
		qdel(src)

/obj/item/chems/food/rawsausagebun/attack_self(mob/user)
		var/obj/item/chems/food/sliceable/mediummince/result = new()
		user.put_in_hands(result)
		to_chat(user, "You roll up the sausage bun into a meat wad.")
		qdel(src)

/obj/item/chems/food/sliceable/largemince/attack_self(mob/user)
		var/obj/item/chems/food/rawbaguette/result = new()
		user.put_in_hands(result)
		to_chat(user, "You roll up the meat into a baguette shape.")
		qdel(src)

/obj/item/chems/food/rawbaguette/attack_self(mob/user)
		var/obj/item/chems/food/sliceable/largemince/result = new()
		user.put_in_hands(result)
		to_chat(user, "You roll up the baguette meat into a meaty lump.")
		qdel(src)

//defined meats from undefinable mince

/obj/item/chems/food/meatbaguette
	name = "meat baguette"
	desc = "A baguette wrought from redolent processed meat."
	icon_state = "baguette_mince"
	filling_color = "#ffe396"
	center_of_mass = @"{'x':16,'y':9}"
	nutriment_desc = list("meat" = 2)
	nutriment_amt = 2
	bitesize = 2
	nutriment_type = /decl/material/liquid/nutriment/protein

/obj/item/chems/food/meatsausagebun
	name = "meat bun"
	desc = "A elongated bun fashioned from minced uncooked meat. How bold."
	icon_state = "sausagebun_mince"
	filling_color = "#ffe396"
	center_of_mass = @"{'x':16,'y':9}"
	nutriment_amt = 6
	bitesize = 2
	nutriment_type = /decl/material/liquid/nutriment/protein

/obj/item/chems/food/meatpretzel
	name = "meat pretzel"
	desc = "A uncooked pretzel of meat."
	icon_state = "pretzel_mince"
	filling_color = "#ffe396"
	center_of_mass = @"{'x':16,'y':9}"
	nutriment_desc = list("meat" = 2)
	nutriment_amt = 2
	bitesize = 2
	nutriment_type = /decl/material/liquid/nutriment/protein

//cooked variants

/obj/item/chems/food/largepatty
	name = "cooked patty"
	desc = "A enormous slab of cooked processed meat."
	icon_state = "flat_large_mince_cooked"
	filling_color = "#ffe396"
	center_of_mass = @"{'x':16,'y':9}"
	nutriment_desc = list("meat" = 2)
	nutriment_amt = 2
	bitesize = 2
	nutriment_type = /decl/material/liquid/nutriment/protein

/obj/item/chems/food/mediumpatty
	name = "cooked patty"
	desc = "A normal sized cooked meat patty."
	icon_state = "flat_medium_mince_cooked"
	filling_color = "#ffe396"
	center_of_mass = @"{'x':16,'y':9}"
	nutriment_desc = list("meat" = 2)
	nutriment_amt = 2
	bitesize = 2
	nutriment_type = /decl/material/liquid/nutriment/protein

/obj/item/chems/food/smallpatty
	name = "cooked patty"
	desc = "A tiny cooked meat patty."
	icon_state = "flat_small_mince_cooked"
	filling_color = "#ffe396"
	center_of_mass = @"{'x':16,'y':9}"
	nutriment_desc = list("meat" = 2)
	nutriment_amt = 2
	bitesize = 2
	nutriment_type = /decl/material/liquid/nutriment/protein

/obj/item/chems/food/meatloaf
	name = "meat loaf"
	desc = "A loaf of meat. Decidedly non-vegan."
	icon_state = "large_mince_cooked"
	filling_color = "#ffe396"
	center_of_mass = @"{'x':16,'y':9}"
	nutriment_desc = list("meat" = 2)
	nutriment_amt = 2
	bitesize = 2
	nutriment_type = /decl/material/liquid/nutriment/protein

/obj/item/chems/food/frikadelle
	name = "cooked meat"
	desc = "A slightly larger meatball."
	icon_state = "medium_mince_cooked"
	filling_color = "#ffe396"
	center_of_mass = @"{'x':16,'y':9}"
	nutriment_desc = list("meat" = 2)
	nutriment_amt = 2
	bitesize = 2
	nutriment_type = /decl/material/liquid/nutriment/protein

/obj/item/chems/food/meatball
	name = "cooked meat"
	desc = "Meatroll, or a meat ball, if you will."
	icon_state = "small_mince_cooked"
	filling_color = "#ffe396"
	center_of_mass = @"{'x':16,'y':9}"
	nutriment_desc = list("meat" = 2)
	nutriment_amt = 2
	bitesize = 2
	nutriment_type = /decl/material/liquid/nutriment/protein