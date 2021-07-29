/decl/recipe/meatbun
	appliance = SAUCEPAN | POT
	reagents = list(/decl/material/solid/spacespice = 1, /decl/material/liquid/water = 5)
	items = list(
		/obj/item/chems/food/doughslice,
		/obj/item/chems/food/rawcutlet
	)
	reagent_mix = REAGENT_REPLACE //Water used up in cooking
	result = /obj/item/chems/food/meatbun

/decl/recipe/custardbun
	appliance = SAUCEPAN | POT
	reagents = list(/decl/material/solid/spacespice = 1, /decl/material/liquid/water = 5, /decl/material/liquid/nutriment/protein/egg = 3)
	items = list(
		/obj/item/chems/food/doughslice
	)
	reagent_mix = REAGENT_REPLACE //Water, egg used up in cooking
	result = /obj/item/chems/food/custardbun

/decl/recipe/chickenmomo
	appliance = SAUCEPAN | POT
	reagents = list(/decl/material/solid/spacespice = 2, /decl/material/liquid/water = 5)
	items = list(
		/obj/item/chems/food/doughslice = 3,
		/obj/item/chems/food/meat/chicken = 1
	)
	reagent_mix = REAGENT_REPLACE //Simplify end product
	result = /obj/item/chems/food/chickenmomo

/decl/recipe/veggiemomo
	appliance = SAUCEPAN | POT
	reagents = list(/decl/material/solid/spacespice = 2, /decl/material/liquid/water = 5)
	fruit = list("carrot" = 1, "cabbage" = 1)
	items = list(
		/obj/item/chems/food/doughslice = 3
	)
	reagent_mix = REAGENT_REPLACE //Get that water outta here
	result = /obj/item/chems/food/veggiemomo

/decl/recipe/cheese_cracker
	items = list(
		/obj/item/chems/food/spreads,
		/obj/item/chems/food/slice/bread,
		/obj/item/chems/food/cheesewedge
	)
	reagents = list(/decl/material/solid/spacespice = 1)
	result = /obj/item/chems/food/cheese_cracker
	result_quantity = 4

/decl/recipe/fish_taco
	appliance = MIX | SKILLET
	fruit = list("chili" = 1, "lemon" = 1)
	items = list(
		/obj/item/chems/food/fish,
		/obj/item/chems/food/tortilla
	)
	result = /obj/item/chems/food/fish_taco

/decl/recipe/mashedpotato
	fruit = list("potato" = 1)
	result = /obj/item/chems/food/mashedpotato

/decl/recipe/icecreamsandwich
	reagents = list(/decl/material/liquid/drink/milk = 5, /decl/material/solid/ice = 5)
	reagent_mix = REAGENT_REPLACE
	items = list(
		/obj/item/chems/food/icecream
	)
	result = /obj/item/chems/food/icecreamsandwich

/decl/recipe/banana_split
	fruit = list("banana" = 1)
	reagents = list(/decl/material/liquid/drink/milk = 5, /decl/material/solid/ice = 5)
	reagent_mix = REAGENT_REPLACE
	items = list(
		/obj/item/chems/food/icecream
	)
	result = /obj/item/chems/food/banana_split

/decl/recipe/honeytoast
	appliance = SKILLET
	reagents = list(/decl/material/liquid/nutriment/honey = 5)
	items = list(
		/obj/item/chems/food/slice/bread
	)
	reagent_mix = REAGENT_REPLACE //Simplify end product
	result = /obj/item/chems/food/honeytoast

/decl/recipe/truffle
	appliance = SAUCEPAN // it's melted and poured into a mold...?
	reagents = list(/decl/material/liquid/nutriment/coco = 2, /decl/material/liquid/drink/milk/cream = 5)
	items = list(
		/obj/item/chems/food/chocolatebar
	)
	reagent_mix = REAGENT_REPLACE
	result = /obj/item/chems/food/truffle
	result_quantity = 4