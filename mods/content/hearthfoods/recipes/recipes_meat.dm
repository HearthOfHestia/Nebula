//Bacon
/decl/recipe/bacon
	appliance = APPLIANCE_FRYER
	items = list(
		/obj/item/chems/food/rawbacon = 1
	)
	result = /obj/item/chems/food/bacon

/decl/recipe/bacon_micro
	appliance = APPLIANCE_MICROWAVE
	items = list(
		/obj/item/chems/food/rawbacon = 1
	)
	result = /obj/item/chems/food/bacon/microwave

/decl/recipe/bacon_oven
	appliance = APPLIANCE_OVEN
	items = list(
		/obj/item/chems/food/rawbacon = 6,
		/obj/item/chems/food/spreads = 1
	)
	result = /obj/item/chems/food/bacon/oven
	result_quantity = 6

/decl/recipe/bacon_pan
	appliance = APPLIANCE_SKILLET
	items = list(
		/obj/item/chems/food/rawbacon = 6,
		/obj/item/chems/food/spreads = 1
	)
	result = /obj/item/chems/food/bacon/pan
	result_quantity = 6

/decl/recipe/bacon_stick
	appliance = APPLIANCE_MIX
	items = list(
		/obj/item/chems/food/bacon = 1,
		/obj/item/chems/food/boiledegg = 1
	)
	result = /obj/item/chems/food/bacon_stick

/decl/recipe/hatchling_surprise
	appliance = APPLIANCE_SKILLET | APPLIANCE_SAUCEPAN
	items = list(
		/obj/item/chems/food/poachedegg = 1,
		/obj/item/chems/food/bacon = 3

	)
	result = /obj/item/chems/food/hatchling_surprise

/decl/recipe/bacon_and_eggs
	appliance = APPLIANCE_SKILLET
	items = list(
		/obj/item/chems/food/bacon = 1,
		/obj/item/chems/food/friedegg = 1
	)
	result = /obj/item/chems/food/bacon_and_eggs

/decl/recipe/bacon_flatbread
	appliance = APPLIANCE_OVEN
	fruit = list("tomato" = 2)
	items = list(
		/obj/item/chems/food/sliceable/flatdough = 1,
		/obj/item/chems/food/cheesewedge = 1,
		/obj/item/chems/food/bacon = 4
	)
	result = /obj/item/chems/food/bacon_flatbread

/decl/recipe/baconburger
	items = list(
		/obj/item/chems/food/bun = 1,
		/obj/item/chems/food/meat = 1,
		/obj/item/chems/food/bacon = 2
	)
	result = /obj/item/chems/food/baconburger

/decl/recipe/blt
	fruit = list("tomato" = 1, "lettuce" = 1)
	items = list(
		/obj/item/chems/food/slice/bread = 2,
		/obj/item/chems/food/bacon = 2
	)
	result = /obj/item/chems/food/blt

/decl/recipe/blt/cbt
	fruit = list("tomato" = 1, "cabbage" = 1)
	result = /obj/item/chems/food/blt/cbt

// Chicken
/decl/recipe/nugget
	appliance = APPLIANCE_FRYER
	reagents = list(/decl/material/liquid/nutriment/flour = 5)
	items = list(
		/obj/item/chems/food/meat/chicken = 1
	)
	reagent_mix = REAGENT_REPLACE
	result = /obj/item/chems/food/nugget
	result_quantity = 6

/decl/recipe/generalschicken
	appliance = APPLIANCE_FRYER
	reagents = list(/decl/material/liquid/capsaicin = 2, /decl/material/liquid/nutriment/sugar = 2, /decl/material/liquid/nutriment/batter = 10)
	items = list(
		/obj/item/chems/food/meat/chicken = 2
	)
	result = /obj/item/chems/food/generalschicken

/decl/recipe/chickenwings
	appliance = APPLIANCE_FRYER
	reagents = list(/decl/material/liquid/capsaicin = 1, /decl/material/liquid/nutriment/batter = 2)
	items = list(
		/obj/item/chems/food/meat/chicken = 1
	)
	result = /obj/item/chems/food/chickenwing

/decl/recipe/chickenfillet //Also just combinable, like burgers and hot dogs.
	items = list(
		/obj/item/chems/food/chickenkatsu = 1,
		/obj/item/chems/food/bun = 1
	)
	result = /obj/item/chems/food/chickenfillet

// Beef
/decl/recipe/ribplate // Well, steak.
	appliance = APPLIANCE_OVEN
	reagents = list(/decl/material/liquid/nutriment/honey = 5, /decl/material/solid/spacespice = 2, /decl/material/solid/blackpepper = 1)
	items = list(/obj/item/chems/food/meat = 1)
	reagent_mix = REAGENT_REPLACE
	result = /obj/item/chems/food/ribplate

/decl/recipe/lasagna
	appliance = APPLIANCE_OVEN
	fruit = list("tomato" = 2, "eggplant" = 1)
	reagents = list(/decl/material/liquid/nutriment/protein = 6) // in lieu of mincemeat; 2 meatballs or 3 cutlets
	items = list(
		/obj/item/chems/food/sliceable/flatdough = 2
	)
	result = /obj/item/chems/food/lasagna
	reagent_mix = REAGENT_REPLACE

/decl/recipe/donerkebab
	appliance = APPLIANCE_MIX
	fruit = list("tomato" = 1, "cabbage" = 1)
	reagents = list(/decl/material/solid/sodiumchloride = 1)
	items = list(
		/obj/item/chems/food/meatsteak = 1,
		/obj/item/chems/food/sliceable/flatdough = 1
	)
	result = /obj/item/chems/food/donerkebab

/decl/recipe/roastbeef
	appliance = APPLIANCE_OVEN
	fruit = list("carrot" = 2, "potato" = 2)
	items = list(
		/obj/item/chems/food/meat = 1
	)
	result = /obj/item/chems/food/roastbeef

/decl/recipe/father_breakfast
	appliance = APPLIANCE_MIX
	items = list(
		/obj/item/chems/food/sausage = 1,
		/obj/item/chems/food/omelette = 1,
		/obj/item/chems/food/meatsteak = 1
	)
	result = /obj/item/chems/food/father_breakfast

/decl/recipe/stuffed_meatball
	appliance = APPLIANCE_MIX
	items = list(
		/obj/item/chems/food/meatball = 1,
		/obj/item/chems/food/cheesewedge = 1
	)
	fruit = list("cabbage" = 1)
	result = /obj/item/chems/food/stuffed_meatball

/decl/recipe/meat_pocket
	appliance = APPLIANCE_OVEN
	items = list(
		/obj/item/chems/food/sliceable/flatdough = 1,
		/obj/item/chems/food/meatball = 1,
		/obj/item/chems/food/cheesewedge = 1
	)
	result = /obj/item/chems/food/meat_pocket
	result_quantity = 2

// Eggs
/decl/recipe/egg_pancake
	appliance = APPLIANCE_SKILLET
	items = list(
		/obj/item/chems/food/meatball = 3,
		/obj/item/chems/food/omelette = 1
	)
	result = /obj/item/chems/food/egg_pancake

/decl/recipe/riztizkzi_sea
	appliance = APPLIANCE_SAUCEPAN | APPLIANCE_POT
	items = list(
		/obj/item/chems/food/egg = 3
	)
	reagents = list(/decl/material/liquid/blood = 15)
	result = /obj/item/chems/food/riztizkzi_sea

/decl/recipe/chilied_eggs
	appliance = APPLIANCE_SAUCEPAN | APPLIANCE_POT
	items = list(
		/obj/item/chems/food/hotchili = 1,
		/obj/item/chems/food/boiledegg = 3
	)
	result = /obj/item/chems/food/chilied_eggs

/decl/recipe/poachedegg
	appliance = APPLIANCE_SKILLET | APPLIANCE_SAUCEPAN
	reagents = list(/decl/material/solid/spacespice = 1, /decl/material/solid/sodiumchloride = 1, /decl/material/solid/blackpepper = 1, /decl/material/liquid/water = 5)
	items = list(
		/obj/item/chems/food/egg = 1
	)
	reagent_mix = REAGENT_REPLACE //Get that water outta here
	result = /obj/item/chems/food/poachedegg

// Sausage
/decl/recipe/red_sun_special
	appliance = APPLIANCE_SKILLET | APPLIANCE_SAUCEPAN
	items = list(
		/obj/item/chems/food/sausage = 1,
		/obj/item/chems/food/cheesewedge = 1

	)
	result = /obj/item/chems/food/red_sun_special

// "Pork"
/decl/recipe/sweet_and_sour
	appliance = APPLIANCE_FRYER
	items = list(
		/obj/item/chems/food/bacon = 1,
		/obj/item/chems/food/cutlet = 1
	)
	reagents = list(/decl/material/liquid/nutriment/soysauce = 5, /decl/material/liquid/nutriment/batter = 10)
	result = /obj/item/chems/food/sweet_and_sour

// Seafood
/decl/recipe/crab_legs
	appliance = APPLIANCE_SAUCEPAN | APPLIANCE_POT
	reagents = list(/decl/material/liquid/water = 10, /decl/material/solid/sodiumchloride = 1)
	items = list(
		/obj/item/chems/food/crabmeat = 1,
		/obj/item/chems/food/spreads = 1
		)
	reagent_mix = REAGENT_REPLACE
	result = /obj/item/chems/food/crab_legs
