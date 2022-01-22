// Baked goods. Or maybe they're baked bads...?
// The world may never know the truth.

/obj/item/chems/food/sliceable/keylimepie
	name = "key lime pie"
	desc = "A tart, sweet dessert. What's a key lime, anyway?"
	icon = 'mods/content/hearthfoods/icons/obj/food.dmi'
	icon_state = "keylimepie"
	slice_path = /obj/item/chems/food/keylimepieslice
	slices_num = 5
	filling_color = "#f5b951"
	nutriment_amt = 12
	nutriment_desc = list("lime" = 12)

/obj/item/chems/food/sliceable/keylimepie/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/protein, 4)
	reagents.add_reagent(/decl/material/liquid/nutriment/bread, 4, list("graham crackers" = 4))

/obj/item/chems/food/keylimepieslice
	name = "slice of key lime pie"
	desc = "A slice of tart pie, with whipped cream on top."
	icon = 'mods/content/hearthfoods/icons/obj/food.dmi'
	icon_state = "keylimepieslice"
	trash = /obj/item/trash/plate
	filling_color = "#f5b951"
	bitesize = 3
	nutriment_desc = list("lime" = 1)

/obj/item/chems/food/keylimepieslice/filled
	nutriment_amt = 1

/obj/item/chems/food/sliceable/quiche
	name = "quiche"
	desc = "Real men eat this, contrary to popular belief."
	icon = 'mods/content/hearthfoods/icons/obj/food.dmi'
	icon_state = "quiche"
	slice_path = /obj/item/chems/food/quicheslice
	slices_num = 5
	filling_color = "#f5b951"
	nutriment_amt = 10
	nutriment_desc = list("cheese" = 5, "egg" = 5)

/obj/item/chems/food/sliceable/quiche/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/protein, 10)

/obj/item/chems/food/quicheslice
	name = "slice of quiche"
	desc = "A slice of delicious quiche. Eggy, cheesy goodness."
	icon = 'mods/content/hearthfoods/icons/obj/food.dmi'
	icon_state = "quicheslice"
	trash = /obj/item/trash/plate
	filling_color = "#f5b951"
	bitesize = 3
	nutriment_desc = list("cheesy eggs" = 1)

/obj/item/chems/food/quicheslice/filled
	nutriment_amt = 1

/obj/item/chems/food/quicheslice/filled/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/protein, 1)

/obj/item/chems/food/sliceable/brownies
	name = "brownies"
	gender = PLURAL
	desc = "Halfway to fudge, or halfway to cake? Who cares!"
	icon = 'mods/content/hearthfoods/icons/obj/food.dmi'
	icon_state = "brownies"
	slice_path = /obj/item/chems/food/browniesslice
	slices_num = 4
	trash = /obj/item/trash/brownies
	filling_color = "#301301"
	nutriment_amt = 8
	nutriment_desc = list("fudge" = 8)
	bitesize = 2

/obj/item/chems/food/sliceable/brownies/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/browniemix, 2)

/obj/item/chems/food/browniesslice
	name = "brownie"
	desc = "A dense, decadent chocolate brownie."
	icon = 'mods/content/hearthfoods/icons/obj/food.dmi'
	icon_state = "browniesslice"
	trash = /obj/item/trash/plate
	filling_color = "#f5b951"
	bitesize = 2
	nutriment_desc = list("fudge" = 1)

/obj/item/chems/food/browniesslice/filled
	nutriment_amt = 1

/obj/item/chems/food/browniesslice/filled/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/browniemix, 1)

/obj/item/chems/food/sliceable/cosmicbrownies
	name = "cosmic brownies"
	gender = PLURAL
	desc = "Like, ultra-trippy. Brownies HAVE no gender, man." //Except I had to add one!
	icon = 'mods/content/hearthfoods/icons/obj/food.dmi'
	icon_state = "cosmicbrownies"
	slice_path = /obj/item/chems/food/cosmicbrowniesslice
	slices_num = 4
	trash = /obj/item/trash/brownies
	filling_color = "#301301"
	nutriment_amt = 8
	nutriment_desc = list("fudge" = 8)
	bitesize = 3

/obj/item/chems/food/sliceable/cosmicbrownies/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/browniemix, 2)
	reagents.add_reagent(/decl/material/liquid/psychoactives, 2)
	reagents.add_reagent(/decl/material/liquid/burn_meds, 1)
	reagents.add_reagent(/decl/material/liquid/brute_meds, 1)
	reagents.add_reagent(/decl/material/liquid/bromide, 1)

/obj/item/chems/food/cosmicbrowniesslice
	name = "cosmic brownie"
	desc = "A dense, decadent and fun-looking chocolate brownie."
	icon = 'mods/content/hearthfoods/icons/obj/food.dmi'
	icon_state = "cosmicbrowniesslice"
	trash = /obj/item/trash/plate
	filling_color = "#f5b951"
	bitesize = 3
	nutriment_desc = list("fudge" = 1)

/obj/item/chems/food/cosmicbrowniesslice/filled
	nutriment_amt = 1

/obj/item/chems/food/cosmicbrowniesslice/filled/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/browniemix, 1)

/obj/item/chems/food/berrymuffin
	name = "berry muffin"
	desc = "A delicious and spongy little cake, with berries."
	icon = 'mods/content/hearthfoods/icons/obj/food.dmi'
	icon_state = "berrymuffin"
	filling_color = "#e0cf9b"
	nutriment_amt = 5
	nutriment_desc = list("sweetness" = 1, "muffin" = 2, "berries" = 2)
	bitesize = 2

/obj/item/chems/food/croissant
	name = "croissant"
	desc = "True french cuisine."
	icon = 'mods/content/hearthfoods/icons/obj/food.dmi'
	filling_color = "#e3d796"
	icon_state = "croissant"
	nutriment_amt = 4
	nutriment_desc = list("french bread" = 4)
	bitesize = 2

/obj/item/chems/food/honeybun
	name = "honey bun"
	desc = "A sticky pastry bun glazed with honey."
	icon = 'mods/content/hearthfoods/icons/obj/food.dmi'
	icon_state = "honeybun"
	nutriment_desc = list("pastry" = 2)
	nutriment_amt = 2
	bitesize = 3

/obj/item/chems/food/honeybun/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/honey, 2)

/obj/item/chems/food/cinnamonbun
	name = "cinnamon bun"
	desc = "Life needs frosting!"
	icon = 'mods/content/hearthfoods/icons/obj/food.dmi'
	icon_state = "cinnamonbun"
	nutriment_amt = 8
	nutriment_desc = list("cinnamon sugar" = 4, "frosting" = 4)
	bitesize = 2
