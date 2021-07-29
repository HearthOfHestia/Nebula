/decl/recipe/kitsuneudon
	appliance = MICROWAVE | SAUCEPAN | POT
	reagents = list(/decl/material/liquid/nutriment/protein/egg = 3)
	items = list(
		/obj/item/chems/food/spagetti,
		/obj/item/chems/food/tofu
	)
	result = /obj/item/chems/food/kitsuneudon

/decl/recipe/lomein
	appliance = MICROWAVE | SAUCEPAN | POT
	reagents = list(/decl/material/liquid/water = 5, /decl/material/liquid/nutriment/soysauce = 5)
	fruit = list("carrot" = 1, "cabbage" = 1)
	items = list(
		/obj/item/chems/food/spagetti
	)
	reagent_mix = REAGENT_REPLACE //Simplify end product
	result = /obj/item/chems/food/lomein

/decl/recipe/chickennoodlesoup
	fruit = list("carrot" = 1)
	reagents = list(/decl/material/liquid/water = 10)
	items = list(/obj/item/chems/food/spagetti, /obj/item/chems/food/rawcutlet)
	reagent_mix = REAGENT_REPLACE //Simplify end product
	result = /obj/item/chems/food/chickennoodlesoup
