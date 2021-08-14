/decl/recipe/tortilla
	appliance = APPLIANCE_SKILLET
	reagents = list(/decl/material/liquid/nutriment/flour = 5,/decl/material/liquid/water = 5)
	result = /obj/item/chems/food/tortilla
	reagent_mix = REAGENT_REPLACE //no gross flour or water

/decl/recipe/chips
	appliance = APPLIANCE_SKILLET | APPLIANCE_FRYER
	reagents = list(/decl/material/solid/sodiumchloride = 1)
	items = list(
		/obj/item/chems/food/tortilla
	)
	result = /obj/item/chems/food/chipplate

/decl/recipe/nachos
	appliance = APPLIANCE_SKILLET // melt the cheese!
	items = list(
		/obj/item/chems/food/chipplate,
		/obj/item/chems/food/cheesewedge
	)
	result = /obj/item/chems/food/chipplate/nachos

/decl/recipe/cheesyfries
	appliance = APPLIANCE_SKILLET | APPLIANCE_MIX // You can reheat it or mix it cold, like some sort of monster.
	items = list(
		/obj/item/chems/food/fries,
		/obj/item/chems/food/cheesewedge
	)
	result = /obj/item/chems/food/cheesyfries

/decl/recipe/salsa
	appliance = APPLIANCE_MIX
	fruit = list("chili" = 1, "tomato" = 1, "lime" = 1)
	reagents = list(/decl/material/solid/spacespice = 1, /decl/material/solid/blackpepper = 1,/decl/material/solid/sodiumchloride = 1)
	result = /obj/item/chems/food/dip/salsa
	reagent_mix = REAGENT_REPLACE //Ingredients are mixed together.

/decl/recipe/guac
	appliance = APPLIANCE_MIX
	fruit = list("chili" = 1, "lime" = 1)
	reagents = list(/decl/material/solid/spacespice = 1, /decl/material/solid/blackpepper = 1,/decl/material/solid/sodiumchloride = 1)
	items = list(
		/obj/item/chems/food/tofu
	)
	result = /obj/item/chems/food/dip/guac
	reagent_mix = REAGENT_REPLACE //Ingredients are mixed together.

/decl/recipe/cheesesauce
	appliance = APPLIANCE_SKILLET | APPLIANCE_SAUCEPAN // melt the cheese
	fruit = list("chili" = 1, "tomato" = 1)
	reagents = list(/decl/material/solid/spacespice = 1, /decl/material/solid/blackpepper = 1,/decl/material/solid/sodiumchloride = 1)
	items = list(
		/obj/item/chems/food/cheesewedge
	)
	result = /obj/item/chems/food/dip
	reagent_mix = REAGENT_REPLACE //Ingredients are mixed together.

/decl/recipe/enchiladas // this is an override of the core recipe, since we have tortillas
	appliance = APPLIANCE_OVEN|APPLIANCE_FRYER
	fruit = list("chili" = 2)
	items = list(/obj/item/chems/food/cutlet, /obj/item/chems/food/tortilla)
	result = /obj/item/chems/food/enchiladas

/decl/recipe/burrito
	appliance = APPLIANCE_MIX|APPLIANCE_MICROWAVE
	items = list(
		/obj/item/chems/food/tortilla,
		/obj/item/chems/food/meatball,
		/obj/item/chems/food/meatball
	)
	reagents = list(/decl/material/solid/spacespice = 1)
	result = /obj/item/chems/food/burrito

/decl/recipe/burrito_vegan
	appliance = APPLIANCE_MIX|APPLIANCE_MICROWAVE
	items = list(
		/obj/item/chems/food/tortilla,
		/obj/item/chems/food/tofu
	)
	result = /obj/item/chems/food/burrito_vegan

/decl/recipe/burrito_spicy
	appliance = APPLIANCE_MIX|APPLIANCE_MICROWAVE
	fruit = list("chili" = 2)
	items = list(
		/obj/item/chems/food/burrito
	)
	result = /obj/item/chems/food/burrito_spicy

/decl/recipe/burrito_cheese
	appliance = APPLIANCE_MIX|APPLIANCE_MICROWAVE
	items = list(
		/obj/item/chems/food/burrito,
		/obj/item/chems/food/cheesewedge
	)
	result = /obj/item/chems/food/burrito_cheese

/decl/recipe/burrito_cheese_spicy
	appliance = APPLIANCE_MIX|APPLIANCE_MICROWAVE
	fruit = list("chili" = 2)
	items = list(
		/obj/item/chems/food/burrito,
		/obj/item/chems/food/cheesewedge
	)
	result = /obj/item/chems/food/burrito_cheese_spicy

/decl/recipe/burrito_hell
	appliance = APPLIANCE_MIX|APPLIANCE_MICROWAVE
	fruit = list("chili" = 10)
	items = list(
		/obj/item/chems/food/burrito_spicy
	)
	result = /obj/item/chems/food/burrito_hell
	reagent_mix = REAGENT_REPLACE //Already hot sauce

/decl/recipe/burrito_mystery
	appliance = APPLIANCE_MIX|APPLIANCE_MICROWAVE
	items = list(
		/obj/item/chems/food/burrito,
		/obj/item/chems/food/mysterysoup
	)
	result = /obj/item/chems/food/burrito_mystery