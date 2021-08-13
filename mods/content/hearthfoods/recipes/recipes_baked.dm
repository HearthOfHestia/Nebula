/decl/recipe/brownies
	appliance = APPLIANCE_OVEN
	reagents = list(/decl/material/liquid/nutriment/browniemix = 10, /decl/material/liquid/nutriment/protein/egg = 3)
	reagent_mix = REAGENT_REPLACE //No egg or mix in final recipe
	result = /obj/item/chems/food/sliceable/brownies

/decl/recipe/cosmicbrownies
	appliance = APPLIANCE_OVEN
	reagents = list(/decl/material/liquid/nutriment/browniemix = 10, /decl/material/liquid/nutriment/protein/egg = 3)
	fruit = list("ambrosia" = 1)
	reagent_mix = REAGENT_REPLACE //No egg or mix in final recipe
	result = /obj/item/chems/food/sliceable/cosmicbrownies

/decl/recipe/honeybun
	appliance = APPLIANCE_OVEN
	items = list(
		/obj/item/chems/food/dough
	)
	reagents = list(/decl/material/liquid/nutriment/honey = 5)
	result = /obj/item/chems/food/honeybun

/decl/recipe/keylimepie
	appliance = APPLIANCE_OVEN
	fruit = list("lime" = 2)
	reagents = list(/decl/material/liquid/drink/milk = 5, /decl/material/liquid/nutriment/sugar = 5, /decl/material/liquid/nutriment/protein/egg = 3, /decl/material/liquid/nutriment/flour = 10)
	result = /obj/item/chems/food/sliceable/keylimepie
	reagent_mix = REAGENT_REPLACE //No raw egg in finished product, protein after cooking causes magic meatballs otherwise

/decl/recipe/quiche
	appliance = APPLIANCE_OVEN
	reagents = list(/decl/material/liquid/drink/milk = 5, /decl/material/liquid/nutriment/protein/egg = 9, /decl/material/liquid/nutriment/flour = 10)
	items = list(/obj/item/chems/food/cheesewedge)
	result = /obj/item/chems/food/sliceable/quiche
	reagent_mix = REAGENT_REPLACE //No raw egg in finished product, protein after cooking causes magic meatballs otherwise

/decl/recipe/muffin/berry
	fruit = list("berry" = 1)
	result = /obj/item/chems/food/berrymuffin

/decl/recipe/croissant
	appliance = APPLIANCE_OVEN
	reagents = list(/decl/material/solid/mineral/sodiumchloride = 1, /decl/material/liquid/water = 5, /decl/material/liquid/drink/milk = 5)
	reagent_mix = REAGENT_REPLACE
	items = list(/obj/item/chems/food/dough)
	result = /obj/item/chems/food/croissant

/decl/recipe/cinnamonbun
	appliance = APPLIANCE_OVEN
	reagents = list(/decl/material/liquid/nutriment/sugar = 15, /decl/material/liquid/drink/milk/cream = 10)
	items = list(
		/obj/item/chems/food/dough
		)
	result = /obj/item/chems/food/cinnamonbun
	result_quantity = 4