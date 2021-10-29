/obj/item/chems/food/onionsoup
	name = "onion soup"
	desc = "A soup with layers."
	icon = 'mods/content/hearthfoods/icons/obj/food.dmi'
	icon_state = "onionsoup"
	trash = /obj/item/trash/snack_bowl
	filling_color = "#e0c367"
	nutriment_amt = 5
	nutriment_desc = list("onion" = 2, "soup" = 2)
	bitesize = 3

/obj/item/chems/food/onionsoup/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/water, 5)

/obj/item/chems/food/hotandsoursoup
	name = "hot & sour soup"
	desc = "A soup both spicy and sour from ancient Earth cooking traditions. This one is made with tofu."
	icon = 'mods/content/hearthfoods/icons/obj/food.dmi'
	icon_state = "hotandsoursoup"
	trash = /obj/item/trash/snack_bowl
	nutriment_amt = 4
	nutriment_desc = list("broth" = 2, "sourness" = 2)
	bitesize = 2

/obj/item/chems/food/hotandsoursoup/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/capsaicin, 2)
	reagents.add_reagent(/decl/material/liquid/nutriment/plant_protein, 2)
	reagents.add_reagent(/decl/material/liquid/water, 5)

/obj/item/chems/food/goulash
	name = "goulash"
	desc = "Paprika put to good use, finally, in a soup of meat and vegetables."
	icon = 'mods/content/hearthfoods/icons/obj/food.dmi'
	icon_state = "goulash"
	trash = /obj/item/trash/snack_bowl
	nutriment_amt = 6
	nutriment_desc = list("meat" = 2, "vegetables" = 2, "seasoning" = 5)

/obj/item/chems/food/goulash/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/protein, 3) //For meaty things.
	reagents.add_reagent(/decl/material/liquid/water, 5)