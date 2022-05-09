//Breadkind and its various interactions with itself. Recipes are in a different .dm


//only here for testing, remove when done
/obj/item/chems/food/dough
	name = "dough"
	desc = "A piece of dough."
	icon = 'icons/obj/food_ingredients.dmi'
	icon_state = "dough"
	bitesize = 2
	center_of_mass = @"{'x':16,'y':13}"
	nutriment_desc = list("dough" = 3)
	nutriment_amt = 3
	nutriment_type = /decl/material/liquid/nutriment/bread


// large dough becomes two medium doughs
/obj/item/chems/food/sliceable/largedough
	name = "dough"
	desc = "A large wad of dough."
	icon = 'icons/obj/food_ingredients.dmi'
	icon_state = "large_dough"
	slice_path = /obj/item/chems/food/mediumdough
	slices_num = 2
	center_of_mass = @"{'x':16,'y':16}"

// medium dough becomes two small doughs
/obj/item/chems/food/sliceable/mediumdough
	name = "dough"
	desc = "A medium sized wad of dough."
	icon = 'icons/obj/food_ingredients.dmi'
	icon_state = "medium_dough"
	slice_path = /obj/item/chems/food/smalldough
	slices_num = 2
	center_of_mass = @"{'x':16,'y':16}"
	attack_products = list(/obj/item/chems/food/sliceable/mediumdough = /obj/item/chems/food/sliceable/largedough)

//like atoms, it can no longer be sliced
/obj/item/chems/food/smalldough
	name = "dough"
	desc = "A small piece of dough."
	icon = 'icons/obj/food_ingredients.dmi'
	icon_state = "small_dough"
	bitesize = 2
	center_of_mass = @"{'x':16,'y':13}"
	nutriment_desc = list("dough" = 3)
	nutriment_amt = 3
	nutriment_type = /decl/material/liquid/nutriment/bread
	attack_products = list(/obj/item/chems/food/smalldough = /obj/item/chems/food/sliceable/mediumdough)



// Roller interactions

// Dough + rolling pin = flat dough
/obj/item/chems/food/largedough/attackby(obj/item/W, mob/user)
	if(istype(W,/obj/item/kitchen/rollingpin))
		var/obj/item/chems/food/sliceable/flatlargedough/result = new()
		result.dropInto(loc)
		to_chat(user, "You flatten the dough.")
		qdel(src)
		return TRUE
	. = ..()

// Dough + rolling pin = flat dough
/obj/item/chems/food/mediumdough/attackby(obj/item/W, mob/user)
	if(istype(W,/obj/item/kitchen/rollingpin))
		var/obj/item/chems/food/sliceable/flatmediumdough/result = new()
		result.dropInto(loc)
		to_chat(user, "You flatten the dough.")
		qdel(src)
		return TRUE
	. = ..()

// Dough + rolling pin = flat dough
/obj/item/chems/food/smalldough/attackby(obj/item/W, mob/user)
	if(istype(W,/obj/item/kitchen/rollingpin))
		var/obj/item/chems/food/flatsmalldough/result = new()
		result.dropInto(loc)
		to_chat(user, "You flatten the dough.")
		qdel(src)
		return TRUE
	. = ..()

//Cutter interactions
//Cutter interactions have been replaced with slice paths
// slicable into 2x doughs in scaling order

/obj/item/chems/food/sliceable/flatdough
	name = "flat dough"
	desc = "A large flattened dough."
	icon = 'icons/obj/food_ingredients.dmi'
	icon_state = "flat_large_dough"
	slice_path = /obj/item/chems/food/sliceable/flatmediumdough
	slices_num = 2
	center_of_mass = @"{'x':16,'y':16}"

/obj/item/chems/food/sliceable/flatlargedough
	name = "flat dough"
	desc = "A large flattened dough."
	icon = 'icons/obj/food_ingredients.dmi'
	icon_state = "flat_large_dough"
	slice_path = /obj/item/chems/food/sliceable/flatmediumdough
	slices_num = 2
	center_of_mass = @"{'x':16,'y':16}"
	attack_products = list(/obj/item/chems/food/sliceable/largemince = /obj/item/chems/food/rawwellington)

// slicable into 2x smaller doughslices
/obj/item/chems/food/sliceable/flatmediumdough
	name = "flat dough"
	desc = "A medium sized flattened dough."
	icon = 'icons/obj/food_ingredients.dmi'
	icon_state = "flat_medium_dough"
	slice_path = /obj/item/chems/food/flatsmalldough
	slices_num = 2
	center_of_mass = @"{'x':16,'y':16}"
	attack_products = list(/obj/item/chems/food/sliceable/flatmediumdough = /obj/item/chems/food/sliceable/flatlargedough)

//a unslicable small flat piece of dough
/obj/item/chems/food/flatsmalldough
	name = "flat dough"
	desc = "A small flat piece of dough."
	icon = 'icons/obj/food_ingredients.dmi'
	icon_state = "small_flat_dough"
	bitesize = 2
	center_of_mass = @"{'x':16,'y':13}"
	nutriment_desc = list("dough" = 3)
	nutriment_amt = 3
	nutriment_type = /decl/material/liquid/nutriment/bread
	attack_products = list(/obj/item/chems/food/flatsmalldough = /obj/item/chems/food/sliceable/flatmediumdough)

//slicables defines for dough

/obj/item/chems/food/sliceable/largeflatdough/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/protein, 1)
	reagents.add_reagent(/decl/material/liquid/nutriment, 3)

/obj/item/chems/food/sliceable/mediumflatdough/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/protein, 1)
	reagents.add_reagent(/decl/material/liquid/nutriment, 3)

/obj/item/chems/food/sliceable/flatsmalldough/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/protein, 1)
	reagents.add_reagent(/decl/material/liquid/nutriment, 3)

//dirty defines for dough alt-modes

/obj/item/chems/food/rawbaguette/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/protein, 1)
	reagents.add_reagent(/decl/material/liquid/nutriment, 3)

/obj/item/chems/food/rawsausagebun/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/protein, 1)
	reagents.add_reagent(/decl/material/liquid/nutriment, 3)

/obj/item/chems/food/rawpretzel/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/protein, 1)
	reagents.add_reagent(/decl/material/liquid/nutriment, 3)

//Hand interactions with the dough

/obj/item/chems/food/sliceable/largeflatdough/attack_self(mob/user)
		var/obj/item/chems/food/sliceable/largedough/result = new()
		user.put_in_hands(result)
		to_chat(user, "You roll up the flat dough into a lump.")
		qdel(src)

/obj/item/chems/food/sliceable/mediumflatdough/attack_self(mob/user)
		var/obj/item/chems/food/sliceable/mediumdough/result = new()
		user.put_in_hands(result)
		to_chat(user, "You roll up the flat dough into a lump.")
		qdel(src)

/obj/item/chems/food/flatsmalldough/attack_self(mob/user)
		var/obj/item/chems/food/smalldough/result = new()
		user.put_in_hands(result)
		to_chat(user, "You roll up the flat dough into a lump.")
		qdel(src)

/obj/item/chems/food/smalldough/attack_self(mob/user)
		var/obj/item/chems/food/pretzeldough/result = new()
		user.put_in_hands(result)
		to_chat(user, "You roll up the dough into a pretzel.")
		qdel(src)

/obj/item/chems/food/pretzeldough/attack_self(mob/user)
		var/obj/item/chems/food/smalldough/result = new()
		user.put_in_hands(result)
		to_chat(user, "You roll up the uncooked pretzel into a dough wad.")
		qdel(src)

/obj/item/chems/food/sliceable/mediumdough/attack_self(mob/user)
		var/obj/item/chems/food/sausagebundough/result = new()
		user.put_in_hands(result)
		to_chat(user, "You roll up the dough into a sausage bun.")
		qdel(src)

/obj/item/chems/food/sausagebundough/attack_self(mob/user)
		var/obj/item/chems/food/sliceable/mediumdough/result = new()
		user.put_in_hands(result)
		to_chat(user, "You roll up the sausage bun into a dough wad.")
		qdel(src)

/obj/item/chems/food/sliceable/largedough/attack_self(mob/user)
		var/obj/item/chems/food/baguettedough/result = new()
		user.put_in_hands(result)
		to_chat(user, "You roll up the dough into a baguette shape.")
		qdel(src)

/obj/item/chems/food/baguettedough/attack_self(mob/user)
		var/obj/item/chems/food/sliceable/largedough/result = new()
		user.put_in_hands(result)
		to_chat(user, "You roll up the baguette dough into a doughy lump.")
		qdel(src)

/obj/item/chems/food/doughslice
	name = "dough slice"
	desc = "A building block of an impressive dish."
	icon = 'icons/obj/food_ingredients.dmi'
	icon_state = "doughslice"
	slice_path = /obj/item/chems/food/spagetti
	slices_num = 1
	bitesize = 2
	center_of_mass = @"{'x':17,'y':19}"
	nutriment_desc = list("dough" = 1)
	nutriment_amt = 1
	nutriment_type = /decl/material/liquid/nutriment/bread

/obj/item/chems/food/plainburger/attack_products = list(/obj/item/chems/food/cheesewedge = /obj/item/chems/food/cheeseburger)
/obj/item/chems/food/hamburger/attack_products = list(/obj/item/chems/food/cheesewedge = /obj/item/chems/food/cheeseburger)
/obj/item/chems/food/human/burger/attack_products = list(/obj/item/chems/food/cheesewedge = /obj/item/chems/food/cheeseburger)

// Spaghetti + meatball = spaghetti with meatball(s)
/obj/item/chems/food/boiledspagetti/attack_products = list(/obj/item/chems/food/meatball = /obj/item/chems/food/meatballspagetti)

// Spaghetti with meatballs + meatball = spaghetti with more meatball(s)
/obj/item/chems/food/meatballspagetti/attack_products = list(/obj/item/chems/food/meatball = /obj/item/chems/food/spesslaw)

/obj/item/chems/food/bunbun
	name = "\improper Bun Bun"
	desc = "A small bread monkey fashioned from two burger buns."
	icon_state = "bunbun"
	bitesize = 2
	center_of_mass = @"{'x':16,'y':8}"
	nutriment_desc = list("bun" = 8)
	nutriment_amt = 8
	nutriment_type = /decl/material/liquid/nutriment/bread

/obj/item/chems/food/sliceable/breadloaf
	name = "bread"
	desc = "Some plain old loaf of bread."
	icon_state = "large_bun"
	slice_path = /obj/item/chems/food/slice/bread
	slices_num = 5
	filling_color = "#ffe396"
	center_of_mass = @"{'x':16,'y':9}"
	nutriment_desc = list("bread" = 6)
	nutriment_amt = 6
	bitesize = 2
	nutriment_type = /decl/material/liquid/nutriment/bread

/obj/item/chems/food/bun
	name = "bun"
	desc = "A base for any self-respecting burger."
	icon = 'icons/obj/food_ingredients.dmi'
	icon_state = "medium_bun"
	bitesize = 2
	center_of_mass = @"{'x':16,'y':12}"
	nutriment_desc = list("bun" = 4)
	nutriment_amt = 4
	nutriment_type = /decl/material/liquid/nutriment/bread
	attack_products = list(
		/obj/item/chems/food/meatball = /obj/item/chems/food/plainburger,
		/obj/item/chems/food/cutlet = /obj/item/chems/food/hamburger,
		/obj/item/chems/food/sausage = /obj/item/chems/food/hotdog
	)

/obj/item/chems/food/breadroll
	name = "bread"
	desc = "A adorably tiny breadroll."
	icon_state = "small_bun"
	filling_color = "#ffe396"
	center_of_mass = @"{'x':16,'y':9}"
	nutriment_desc = list("bread" = 2)
	nutriment_amt = 2
	bitesize = 2
	nutriment_type = /decl/material/liquid/nutriment/bread

/obj/item/chems/food/largeflatbread
	name = "flat bread"
	desc = "A medium sized flat bread."
	icon_state = "bread"
	filling_color = "#ffe396"
	center_of_mass = @"{'x':16,'y':9}"
	nutriment_desc = list("bread" = 4)
	nutriment_amt = 4
	bitesize = 2
	nutriment_type = /decl/material/liquid/nutriment/bread

/obj/item/chems/food/mediumflatbread
	name = "flat bread"
	desc = "A medium sized flat bread."
	icon_state = "bread"
	filling_color = "#ffe396"
	center_of_mass = @"{'x':16,'y':9}"
	nutriment_desc = list("bread" = 4)
	nutriment_amt = 4
	bitesize = 2
	nutriment_type = /decl/material/liquid/nutriment/bread

/obj/item/chems/food/smallflatbread
	name = "flat bread"
	desc = "A small flat bread."
	icon_state = "breadroll"
	filling_color = "#ffe396"
	center_of_mass = @"{'x':16,'y':9}"
	nutriment_desc = list("bread" = 2)
	nutriment_amt = 2
	bitesize = 2
	nutriment_type = /decl/material/liquid/nutriment/bread

/obj/item/chems/food/plainbaguette
	name = "baguette"
	desc = "A very plain baguette."
	icon_state = "breadroll"
	filling_color = "#ffe396"
	center_of_mass = @"{'x':16,'y':9}"
	nutriment_desc = list("bread" = 6)
	nutriment_amt = 6
	bitesize = 2
	nutriment_type = /decl/material/liquid/nutriment/bread

/obj/item/chems/food/sausagebun
	name = "sausage bun"
	desc = "A bun you can fit a sausage in. Or other things."
	icon_state = "sausagebun"
	filling_color = "#ffe396"
	center_of_mass = @"{'x':16,'y':9}"
	nutriment_desc = list("bread" = 4)
	nutriment_amt = 4
	bitesize = 2
	nutriment_type = /decl/material/liquid/nutriment/bread

/obj/item/chems/food/plainpretzel
	name = "pretzel"
	desc = "A very plain pretzel."
	icon_state = "plainpretzel"
	filling_color = "#ffe396"
	center_of_mass = @"{'x':16,'y':9}"
	nutriment_desc = list("bread" = 2)
	nutriment_amt = 2
	bitesize = 2
	nutriment_type = /decl/material/liquid/nutriment/bread