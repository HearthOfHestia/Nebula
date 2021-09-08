/decl/recipe/superbiteburger
	appliance = APPLIANCE_MIX|APPLIANCE_MICROWAVE
	fruit = list("tomato" = 1)
	reagents = list(/decl/material/solid/mineral/sodiumchloride = 5, /decl/material/solid/blackpepper = 5)
	items = list(
		/obj/item/chems/food/bigbiteburger,
		/obj/item/chems/food/dough,
		/obj/item/chems/food/meat,
		/obj/item/chems/food/cheesewedge,
		/obj/item/chems/food/boiledegg,
	)
	// use the default reagent mixing, since it should taste disgusting
	result = /obj/item/chems/food/superbiteburger

/decl/recipe/jellyburger
	appliance = APPLIANCE_MIX|APPLIANCE_MICROWAVE
	reagents = list(/decl/material/liquid/nutriment/cherryjelly = 5)
	items = list(
		/obj/item/chems/food/bun
	)
	result = /obj/item/chems/food/jellyburger/cherry

/decl/recipe/twobread
	appliance = APPLIANCE_MIX|APPLIANCE_MICROWAVE // it's tradition, see
	reagents = list(/decl/material/liquid/ethanol/wine = 5)
	items = list(
		/obj/item/chems/food/slice/bread = 2,
	)
	result = /obj/item/chems/food/twobread

/decl/recipe/threebread
	appliance = APPLIANCE_MIX|APPLIANCE_MICROWAVE
	items = list(
		/obj/item/chems/food/twobread,
		/obj/item/chems/food/slice/bread,
	)
	result = /obj/item/chems/food/threebread

/decl/recipe/cherrysandwich
	appliance = APPLIANCE_MIX
	reagents = list(/decl/material/liquid/nutriment/cherryjelly = 5)
	items = list(
		/obj/item/chems/food/slice/bread = 2,
	)
	result = /obj/item/chems/food/jellysandwich/cherry

/decl/recipe/tossedsalad
	appliance = APPLIANCE_MIX
	fruit = list("cabbage" = 2, "tomato" = 1, "carrot" = 1, "apple" = 1)
	result = /obj/item/chems/food/tossedsalad

/decl/recipe/aesirsalad
	appliance = APPLIANCE_MIX
	fruit = list("goldapple" = 1, "biteleafdeus" = 1)
	result = /obj/item/chems/food/aesirsalad

/decl/recipe/validsalad
	appliance = APPLIANCE_MIX
	fruit = list("potato" = 1, "biteleaf" = 3)
	items = list(/obj/item/chems/food/meatball)
	result = /obj/item/chems/food/validsalad

/decl/recipe/classichotdog
	appliance = APPLIANCE_MIX|APPLIANCE_MICROWAVE
	items = list(
		/obj/item/chems/food/bun,
		/obj/item/holder/corgi
	)
	result = /obj/item/chems/food/classichotdog

/decl/recipe/meatburger
	appliance = APPLIANCE_MIX|APPLIANCE_MICROWAVE
	items = list(
		/obj/item/chems/food/bun,
		/obj/item/chems/food/cutlet
	)
	result = /obj/item/chems/food/meatburger

/decl/recipe/brainburger
	appliance = APPLIANCE_MIX|APPLIANCE_MICROWAVE
	items = list(
		/obj/item/chems/food/bun,
		/obj/item/organ/internal/brain
	)
	result = /obj/item/chems/food/brainburger

/decl/recipe/roburger
	appliance = APPLIANCE_MIX|APPLIANCE_MICROWAVE
	items = list(
		/obj/item/chems/food/bun,
		/obj/item/robot_parts/head
	)
	result = /obj/item/chems/food/roburger

/decl/recipe/xenoburger
	appliance = APPLIANCE_MIX|APPLIANCE_MICROWAVE
	items = list(
		/obj/item/chems/food/bun,
		/obj/item/chems/food/xenomeat
	)
	result = /obj/item/chems/food/xenoburger

/decl/recipe/fishburger
	appliance = APPLIANCE_MIX|APPLIANCE_MICROWAVE
	items = list(
		/obj/item/chems/food/bun,
		/obj/item/chems/food/fish
	)
	result = /obj/item/chems/food/fishburger

/decl/recipe/tofuburger
	appliance = APPLIANCE_MIX|APPLIANCE_MICROWAVE
	items = list(
		/obj/item/chems/food/bun,
		/obj/item/chems/food/tofu
	)
	result = /obj/item/chems/food/tofuburger

/decl/recipe/ghostburger
	appliance = APPLIANCE_MIX|APPLIANCE_MICROWAVE
	items = list(
		/obj/item/chems/food/bun,
		/obj/item/ectoplasm //where do you even find this stuff
	)
	result = /obj/item/chems/food/ghostburger

/decl/recipe/clownburger
	appliance = APPLIANCE_MIX|APPLIANCE_MICROWAVE
	items = list(
		/obj/item/chems/food/bun,
		/obj/item/clothing/mask/gas/clown_hat
	)
	result = /obj/item/chems/food/clownburger

/decl/recipe/mimeburger
	appliance = APPLIANCE_MIX|APPLIANCE_MICROWAVE
	items = list(
		/obj/item/chems/food/bun,
		/obj/item/clothing/head/beret
	)
	result = /obj/item/chems/food/mimeburger

/decl/recipe/bunbun
	appliance = APPLIANCE_MIX|APPLIANCE_MICROWAVE
	items = list(
		/obj/item/chems/food/bun = 2
	)
	result = /obj/item/chems/food/bunbun

/decl/recipe/hotdog
	appliance = APPLIANCE_MIX|APPLIANCE_MICROWAVE
	items = list(
		/obj/item/chems/food/bun,
		/obj/item/chems/food/sausage
	)
	result = /obj/item/chems/food/hotdog

/decl/recipe/meatkabob
	appliance = APPLIANCE_MIX|APPLIANCE_MICROWAVE
	items = list(
		/obj/item/stack/material/rods,
		/obj/item/chems/food/cutlet = 2
	)
	result = /obj/item/chems/food/meatkabob

/decl/recipe/tofukabob
	appliance = APPLIANCE_MIX|APPLIANCE_MICROWAVE
	items = list(
		/obj/item/stack/material/rods,
		/obj/item/chems/food/tofu = 2,
	)
	result = /obj/item/chems/food/tofukabob

/decl/recipe/spellburger
	appliance = APPLIANCE_MIX|APPLIANCE_MICROWAVE
	items = list(
		/obj/item/chems/food/meatburger,
		/obj/item/clothing/head/wizard,
	)
	result = /obj/item/chems/food/spellburger

/decl/recipe/bigbiteburger
	appliance = APPLIANCE_MIX|APPLIANCE_MICROWAVE
	items = list(
		/obj/item/chems/food/meatburger,
		/obj/item/chems/food/meat = 2,
		/obj/item/chems/food/egg,
	)
	reagent_mix = REAGENT_REPLACE // no raw egg
	result = /obj/item/chems/food/bigbiteburger

/decl/recipe/sandwich
	appliance = APPLIANCE_MICROWAVE|APPLIANCE_MIX
	items = list(
		/obj/item/chems/food/meatsteak,
		/obj/item/chems/food/slice/bread = 2,
		/obj/item/chems/food/cheesewedge,
	)
	result = /obj/item/chems/food/sandwich

/decl/recipe/chazuke
	appliance = APPLIANCE_MIX|APPLIANCE_MICROWAVE|APPLIANCE_SAUCEPAN|APPLIANCE_POT // just stir it in a bowl, or heat it
	reagents = list(/decl/material/liquid/nutriment/rice/chazuke = 10)
	reagent_mix = REAGENT_REPLACE // no raw chazuke in our cooked chazuke
	result = /obj/item/chems/food/boiledrice/chazuke

/decl/recipe/taco
	appliance = APPLIANCE_MIX|APPLIANCE_MICROWAVE
	items = list(
		/obj/item/chems/food/doughslice,
		/obj/item/chems/food/cutlet,
		/obj/item/chems/food/cheesewedge
	)
	result = /obj/item/chems/food/taco

/decl/recipe/pelmen
	appliance = APPLIANCE_MIX // uncooked
	items = list(
		/obj/item/chems/food/doughslice = 2,
		/obj/item/chems/food/rawmeatball
	)
	result = /obj/item/chems/food/pelmen