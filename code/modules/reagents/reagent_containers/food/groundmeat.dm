//meatkind and its various interactions with itself. Recipes are in a different .dm

/obj/item/chems/food/largemeat
	name = "minced meat"
	desc = "A large pile of of minced meat."
	icon = 'icons/obj/food_ingredients.dmi'
	icon_state = "meat"
	bitesize = 2
	center_of_mass = @"{'x':16,'y':13}"
	nutriment_desc = list("meat" = 3)
	nutriment_amt = 3
	nutriment_type = /decl/material/liquid/nutriment/protein

// Roller interactions

// meat + rolling pin = flat meat
/obj/item/chems/food/largemeat/attackby(obj/item/W, mob/user)
	if(istype(W,/obj/item/kitchen/rollingpin))
		var/obj/item/chems/food/sliceable/flatlargemeat/result = new()
		result.dropInto(loc)
		to_chat(user, "You flatten the meat.")
		qdel(src)

// meat + rolling pin = flat meat
/obj/item/chems/food/mediummeat/attackby(obj/item/W, mob/user)
	if(istype(W,/obj/item/kitchen/rollingpin))
		var/obj/item/chems/food/sliceable/flatmediummeat/result = new()
		result.dropInto(loc)
		to_chat(user, "You flatten the meat.")
		qdel(src)

// meat + rolling pin = flat meat
/obj/item/chems/food/smallmeat/attackby(obj/item/W, mob/user)
	if(istype(W,/obj/item/kitchen/rollingpin))
		var/obj/item/chems/food/flatsmallmeat/result = new()
		result.dropInto(loc)
		to_chat(user, "You flatten the meat.")
		qdel(src)

//Cutter interactions

// large meat becomes two medium meats
/obj/item/chems/food/sliceable/largemeat
	name = "minced meat"
	desc = "A large wad of meat."
	icon = 'icons/obj/food_ingredients.dmi'
	icon_state = "large_mince"
	slice_path = /obj/item/chems/food/mediummeat
	slices_num = 2
	center_of_mass = @"{'x':16,'y':16}"

// medium meat becomes two small meats
/obj/item/chems/food/sliceable/mediummeat
	name = "minced meat"
	desc = "A medium sized wad of meat."
	icon = 'icons/obj/food_ingredients.dmi'
	icon_state = "medium_mince"
	slice_path = /obj/item/chems/food/smallmeat
	slices_num = 2
	center_of_mass = @"{'x':16,'y':16}"

//like atoms, it can no longer be sliced
/obj/item/chems/food/smallmeat
	name = "minced meat"
	desc = "A small ball of minced meat. Commonly known as a meatball."
	icon = 'icons/obj/food_ingredients.dmi'
	icon_state = "small_mince"
	bitesize = 2
	center_of_mass = @"{'x':16,'y':13}"
	nutriment_desc = list("meat" = 3)
	nutriment_amt = 3
	nutriment_type = /decl/material/liquid/nutriment/protein

// slicable into 2x meatslices
/obj/item/chems/food/sliceable/flatlargemeat
	name = "meat patty"
	desc = "A large flattened meat."
	icon = 'icons/obj/food_ingredients.dmi'
	icon_state = "large_flat_meat"
	slice_path = /obj/item/chems/food/sliceable/flatmediummeat
	slices_num = 2
	center_of_mass = @"{'x':16,'y':16}"

// slicable into 2x smaller meatslices
/obj/item/chems/food/sliceable/flatmediummeat
	name = "meat patty"
	desc = "A medium sized flattened meat."
	icon = 'icons/obj/food_ingredients.dmi'
	icon_state = "medium_flat_meat"
	slice_path = /obj/item/chems/food/flatsmallmeat
	slices_num = 2
	center_of_mass = @"{'x':16,'y':16}"

//a unslicable small flat piece of meat
/obj/item/chems/food/flatsmallmeat
	name = "meat patty"
	desc = "A small flat piece of meat."
	icon = 'icons/obj/food_ingredients.dmi'
	icon_state = "small_flat_meat"
	bitesize = 2
	center_of_mass = @"{'x':16,'y':13}"
	nutriment_desc = list("meat" = 3)
	nutriment_amt = 3
	nutriment_type = /decl/material/liquid/nutriment/protein

//slap interactions to undo the cutting ones

/obj/item/chems/food/flatsmallmeat/attack_products = list(/obj/item/chems/food/flatsmallmeat = /obj/item/chems/food/sliceable/flatmediummeat)

/obj/item/chems/food/sliceable/flatmediummeat/attack_products = list(/obj/item/chems/food/sliceable/flatmediummeat = /obj/item/chems/food/sliceable/flatlargemeat)

/obj/item/chems/food/smallmeat/attack_products = list(/obj/item/chems/food/smallmeat = /obj/item/chems/food/sliceable/mediummeat)

/obj/item/chems/food/sliceable/mediummeat/attack_products = list(/obj/item/chems/food/sliceable/mediummeat = /obj/item/chems/food/sliceable/largemeat)

//slicables defines for meat

/obj/item/chems/food/sliceable/largeflatmeat/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/protein, 3)
	reagents.add_reagent(/decl/material/liquid/nutriment, 1)

/obj/item/chems/food/sliceable/mediumflatmeat/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/protein, 3)
	reagents.add_reagent(/decl/material/liquid/nutriment, 1)

/obj/item/chems/food/sliceable/flatsmallmeat/Initialize()
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
		var/obj/item/chems/food/sliceable/largemeat/result = new()
		user.put_in_hands(result)
		to_chat(user, "You roll up the flat meat into a lump.")
		qdel(src)

/obj/item/chems/food/sliceable/mediumflatmeat/attack_self(mob/user)
		var/obj/item/chems/food/sliceable/mediummeat/result = new()
		user.put_in_hands(result)
		to_chat(user, "You roll up the flat meat into a lump.")
		qdel(src)

/obj/item/chems/food/flatsmallmeat/attack_self(mob/user)
		var/obj/item/chems/food/smallmeat/result = new()
		user.put_in_hands(result)
		to_chat(user, "You roll up the flat meat into a lump.")
		qdel(src)

/obj/item/chems/food/smallmeat/attack_self(mob/user)
		var/obj/item/chems/food/rawpretzel/result = new()
		user.put_in_hands(result)
		to_chat(user, "You roll up the meat into a pretzel.")
		qdel(src)

/obj/item/chems/food/rawpretzel/attack_self(mob/user)
		var/obj/item/chems/food/smallmeat/result = new()
		user.put_in_hands(result)
		to_chat(user, "You roll up the uncooked pretzel into a meat wad.")
		qdel(src)

/obj/item/chems/food/sliceable/mediummeat/attack_self(mob/user)
		var/obj/item/chems/food/rawsausagebun/result = new()
		user.put_in_hands(result)
		to_chat(user, "You roll up the meat into a sausage bun.")
		qdel(src)

/obj/item/chems/food/rawsausagebun/attack_self(mob/user)
		var/obj/item/chems/food/sliceable/mediummeat/result = new()
		user.put_in_hands(result)
		to_chat(user, "You roll up the sausage bun into a meat wad.")
		qdel(src)

/obj/item/chems/food/sliceable/largemeat/attack_self(mob/user)
		var/obj/item/chems/food/rawbaguette/result = new()
		user.put_in_hands(result)
		to_chat(user, "You roll up the meat into a baguette shape.")
		qdel(src)

/obj/item/chems/food/rawbaguette/attack_self(mob/user)
		var/obj/item/chems/food/sliceable/largemeat/result = new()
		user.put_in_hands(result)
		to_chat(user, "You roll up the baguette meat into a meaty lump.")
		qdel(src)

//defined meats from undefinable mince

/obj/item/chems/food/meatbaguette
	name = "meat baguette"
	desc = "Some adorably tiny meatroll."
	icon_state = "meatroll"
	filling_color = "#ffe396"
	center_of_mass = @"{'x':16,'y':9}"
	nutriment_desc = list("meat" = 2)
	nutriment_amt = 2
	bitesize = 2
	nutriment_type = /decl/material/liquid/nutriment/protein

/obj/item/chems/food/meatsausagebun
	name = "meat bun"
	desc = "Some plain old meat."
	icon_state = "meat"
	filling_color = "#ffe396"
	center_of_mass = @"{'x':16,'y':9}"
	nutriment_amt = 6
	bitesize = 2
	nutriment_type = /decl/material/liquid/nutriment/protein

/obj/item/chems/food/meatpretzel
	name = "meat pretzel"
	desc = "A uncooked pretzel of meat."
	icon_state = "meatpretzel"
	filling_color = "#ffe396"
	center_of_mass = @"{'x':16,'y':9}"
	nutriment_desc = list("meat" = 2)
	nutriment_amt = 2
	bitesize = 2
	nutriment_type = /decl/material/liquid/nutriment/protein

/obj/item/chems/food/largepatty
	name = "cooked patty"
	desc = "A enormous slab of cooked processed meat."
	icon_state = "meatroll"
	filling_color = "#ffe396"
	center_of_mass = @"{'x':16,'y':9}"
	nutriment_desc = list("meat" = 2)
	nutriment_amt = 2
	bitesize = 2
	nutriment_type = /decl/material/liquid/nutriment/protein

/obj/item/chems/food/mediumpatty
	name = "cooked patty"
	desc = "A normal sized cooked meat patty."
	icon_state = "meatroll"
	filling_color = "#ffe396"
	center_of_mass = @"{'x':16,'y':9}"
	nutriment_desc = list("meat" = 2)
	nutriment_amt = 2
	bitesize = 2
	nutriment_type = /decl/material/liquid/nutriment/protein

/obj/item/chems/food/smallpatty
	name = "cooked patty"
	desc = "A tiny cooked meat patty."
	icon_state = "meatroll"
	filling_color = "#ffe396"
	center_of_mass = @"{'x':16,'y':9}"
	nutriment_desc = list("meat" = 2)
	nutriment_amt = 2
	bitesize = 2
	nutriment_type = /decl/material/liquid/nutriment/protein

/obj/item/chems/food/meatloaf
	name = "cooked meat"
	desc = "A loaf of meat."
	icon_state = "meatroll"
	filling_color = "#ffe396"
	center_of_mass = @"{'x':16,'y':9}"
	nutriment_desc = list("meat" = 2)
	nutriment_amt = 2
	bitesize = 2
	nutriment_type = /decl/material/liquid/nutriment/protein

/obj/item/chems/food/frikadelle
	name = "cooked meat"
	desc = "A slightly larger meatball."
	icon_state = "meatroll"
	filling_color = "#ffe396"
	center_of_mass = @"{'x':16,'y':9}"
	nutriment_desc = list("meat" = 2)
	nutriment_amt = 2
	bitesize = 2
	nutriment_type = /decl/material/liquid/nutriment/protein

/obj/item/chems/food/meatball
	name = "cooked meat"
	desc = "Meatroll, or a meat ball, if you will."
	icon_state = "meatroll"
	filling_color = "#ffe396"
	center_of_mass = @"{'x':16,'y':9}"
	nutriment_desc = list("meat" = 2)
	nutriment_amt = 2
	bitesize = 2
	nutriment_type = /decl/material/liquid/nutriment/protein