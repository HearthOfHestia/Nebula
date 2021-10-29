/decl/recipe/onionsoup
	appliance = APPLIANCE_SAUCEPAN | APPLIANCE_POT
	fruit = list("onion" = 1)
	reagents = list(/decl/material/liquid/water = 10)
	result = /obj/item/chems/food/onionsoup

/decl/recipe/goulash
	appliance = APPLIANCE_SAUCEPAN | APPLIANCE_POT
	fruit = list("tomato" = 1)
	reagents = list(/decl/material/liquid/water = 5)
	items = list(
		/obj/item/chems/food/cutlet = 1,
		/obj/item/chems/food/spagetti = 1
	)
	result = /obj/item/chems/food/goulash

/decl/recipe/hotandsoursoup
	appliance = APPLIANCE_SAUCEPAN | APPLIANCE_POT
	fruit = list("cabbage" = 1, "mushroom" = 1)
	reagents = list(/decl/material/solid/sodiumchloride = 2, /decl/material/solid/blackpepper = 2, /decl/material/liquid/water = 10)
	items = list(
		/obj/item/chems/food/tofu = 1
	)
	result = /obj/item/chems/food/hotandsoursoup