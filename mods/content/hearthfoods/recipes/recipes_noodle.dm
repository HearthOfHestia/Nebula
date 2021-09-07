/decl/recipe/kitsuneudon
	appliance = APPLIANCE_MICROWAVE | APPLIANCE_SAUCEPAN | APPLIANCE_POT
	reagents = list(/decl/material/liquid/nutriment/protein/egg = 3)
	items = list(
		/obj/item/chems/food/spagetti = 1,
		/obj/item/chems/food/tofu = 1
	)
	result = /obj/item/chems/food/kitsuneudon

/decl/recipe/lomein
	appliance = APPLIANCE_MICROWAVE | APPLIANCE_SAUCEPAN | APPLIANCE_POT
	reagents = list(/decl/material/liquid/water = 5, /decl/material/liquid/nutriment/soysauce = 5)
	fruit = list("carrot" = 1, "cabbage" = 1)
	items = list(
		/obj/item/chems/food/spagetti = 1
	)
	reagent_mix = REAGENT_REPLACE //Simplify end product
	result = /obj/item/chems/food/lomein

/decl/recipe/chickennoodlesoup
	fruit = list("carrot" = 1)
	reagents = list(/decl/material/liquid/water = 10)
	items = list(/obj/item/chems/food/spagetti = 1, /obj/item/chems/food/rawcutlet = 1)
	reagent_mix = REAGENT_REPLACE //Simplify end product
	result = /obj/item/chems/food/chickennoodlesoup
