/decl/recipe/cubancarp
	appliance = FRYER
	fruit = list("chili" = 1)
	coating = /decl/material/liquid/nutriment/batter
	items = list(
		/obj/item/chems/food/fish
	)
	result = /obj/item/chems/food/cubancarp

/decl/recipe/fishandchips
	appliance = FRYER
	items = list(
		/obj/item/chems/food/fries,
		/obj/item/chems/food/fish
	)
	reagent_mix = REAGENT_REPLACE // we don't want the fries to show up twice
	result = /obj/item/chems/food/fishandchips

/decl/recipe/katsucurry
	appliance = FRYER
	fruit = list("apple" = 1, "carrot" = 1, "potato" = 1)
	reagents = list(/decl/material/liquid/water = 10, /decl/material/liquid/nutriment/rice = 10, /decl/material/liquid/nutriment/flour = 5)
	items = list(
		/obj/item/chems/food/meat/chicken
	)
	reagent_mix = REAGENT_REPLACE // get the raw reagents out of there
	result = /obj/item/chems/food/katsucurry

/decl/recipe/fishfingers
	appliance = FRYER
	items = list(
		/obj/item/chems/food/fish
	)
	coating = /decl/material/liquid/nutriment/batter
	result = /obj/item/chems/food/fishfingers

/decl/recipe/fries
	appliance = FRYER
	items = list(
		/obj/item/chems/food/rawsticks
	)
	reagent_mix = REAGENT_REPLACE // get the raw potato out of there
	result = /obj/item/chems/food/fries

/decl/recipe/onionrings
	appliance = FRYER
	fruit = list("onion" = 1)
	coating = /decl/material/liquid/nutriment/batter
	reagents = list(/decl/material/liquid/nutriment/batter = 10)
	result = /obj/item/chems/food/onionrings