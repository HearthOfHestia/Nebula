/obj/item/chems/food/chickenfillet
	name = "chicken fillet sandwich"
	desc = "Fried chicken, in sandwich format. Beauty is simplicity."
	icon = 'mods/content/hearthfoods/icons/obj/food.dmi'
	icon_state = "chickenfillet"
	filling_color = "#e9adff"
	nutriment_amt = 4
	nutriment_desc = list("breading" = 4)
	bitesize = 3

/obj/item/chems/food/chickenfillet/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/protein, 8)

/obj/item/chems/food/chilicheesefries
	name = "chili cheese fries"
	gender = PLURAL
	desc = "A mighty plate of fries, drowned in hot chili and cheese sauce. Because your arteries are overrated."
	icon = 'mods/content/hearthfoods/icons/obj/food.dmi'
	icon_state = "chilicheesefries"
	trash = /obj/item/trash/plate
	filling_color = "#eddd00"
	nutriment_amt = 8
	nutriment_desc = list("hearty, cheesy fries" = 8)
	bitesize = 4

/obj/item/chems/food/chilicheesefries/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/protein, 2)
	reagents.add_reagent(/decl/material/liquid/capsaicin, 2)

/obj/item/chems/food/friedmushroom
	name = "fried mushroom"
	desc = "A tender, beer-battered plump helmet, fried to crispy perfection."
	icon = 'mods/content/hearthfoods/icons/obj/food.dmi'
	icon_state = "friedmushroom"
	filling_color = "#eddd00"
	nutriment_amt = 4
	nutriment_desc = list("alcoholic mushrooms" = 4)
	bitesize = 5

/obj/item/chems/food/friedmushroom/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/protein, 2)

/obj/item/chems/food/pisanggoreng
	name = "pisang goreng"
	gender = PLURAL
	desc = "Crispy, starchy, sweet banana fritters. Popular street food in parts of Sol."
	icon = 'mods/content/hearthfoods/icons/obj/food.dmi'
	icon_state = "pisanggoreng"
	trash = /obj/item/trash/plate
	filling_color = "#301301"
	nutriment_amt = 8
	nutriment_desc = list("sweet bananas" = 8)
	bitesize = 3

/obj/item/chems/food/pisanggoreng/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/protein, 1)

/obj/item/chems/food/sausage/battered
	name = "battered sausage"
	desc = "A piece of mixed, long meat, battered and then deepfried."
	icon = 'mods/content/hearthfoods/icons/obj/food.dmi'
	icon_state = "batteredsausage"
	filling_color = "#db0000"
	do_coating_prefix = FALSE
	bitesize = 2

/obj/item/chems/food/sausage/battered/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/protein, 6)
	reagents.add_reagent(/decl/material/liquid/nutriment/batter, 1.7)
	reagents.add_reagent(/decl/material/liquid/nutriment/triglyceride/oil, 1.5)

/obj/item/chems/food/jalapeno_poppers
	name = "jalapeno popper"
	desc = "A battered, deep-fried chili pepper."
	icon = 'mods/content/hearthfoods/icons/obj/food.dmi'
	icon_state = "popper"
	filling_color = "#00aa00"
	do_coating_prefix = FALSE
	nutriment_amt = 2
	nutriment_desc = list("chili pepper" = 2)
	bitesize = 1

/obj/item/chems/food/jalapeno_poppers/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/batter, 2)
	reagents.add_reagent(/decl/material/liquid/nutriment/triglyceride/oil, 2)

/obj/item/chems/food/chickenkatsu
	name = "chicken katsu"
	desc = "A delicacy consisting of chicken fried in a light beer batter."
	icon = 'mods/content/hearthfoods/icons/obj/food.dmi'
	icon_state = "katsu"
	trash = /obj/item/trash/plate
	filling_color = "#e9adff"
	do_coating_prefix = FALSE
	bitesize = 1.5

/obj/item/chems/food/chickenkatsu/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/protein, 6)
	reagents.add_reagent(/decl/material/liquid/nutriment/batter/beerbatter, 2)
	reagents.add_reagent(/decl/material/liquid/nutriment/triglyceride/oil, 1)

/obj/item/chems/food/fries/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/triglyceride/oil, 1.2)

// i'm putting these here because they're fries
// even though they're not actually fried
/obj/item/chems/food/microchips
	name = "micro chips"
	desc = "Soft and rubbery, should have fried them. Good for smaller crewmembers, maybe?"
	icon = 'mods/content/hearthfoods/icons/obj/food.dmi'
	icon_state = "microchips"
	trash = /obj/item/trash/plate
	filling_color = "#eddd00"
	nutriment_amt = 4
	nutriment_desc = list("soggy fries" = 4)
	bitesize = 2

/obj/item/chems/food/ovenchips
	name = "oven chips"
	desc = "Dark and crispy, but a bit dry."
	icon = 'mods/content/hearthfoods/icons/obj/food.dmi'
	icon_state = "ovenchips"
	trash = /obj/item/trash/plate
	filling_color = "#eddd00"
	nutriment_amt = 4
	nutriment_desc = list("crisp, dry fries" = 4)
	bitesize = 2

/obj/item/chems/food/sliceable/pizza/crunch
	name = "pizza crunch"
	desc = "This was once a normal pizza, but it has been coated in batter and deep-fried. Whatever toppings it once had are a mystery, but they're still under there, somewhere..."
	icon = 'mods/content/hearthfoods/icons/obj/food.dmi'
	icon_state = "pizzacrunch"
	slice_path = /obj/item/chems/food/pizzacrunchslice
	slices_num = 6
	nutriment_amt = 25
	nutriment_desc = list("fried pizza" = 25)
	bitesize = 2

/obj/item/chems/food/sliceable/pizza/crunch/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/batter, 6.5)
	reagents.add_reagent(/decl/material/liquid/nutriment/triglyceride/oil, 4)
	batter_coating = /decl/material/liquid/nutriment/batter

/obj/item/chems/food/pizzacrunchslice
	name = "pizza crunch slice"
	desc = "A little piece of a heart attack. Its toppings are a mystery, hidden under batter."
	icon = 'mods/content/hearthfoods/icons/obj/food.dmi'
	icon_state = "pizzacrunchslice"
	filling_color = "#baa14c"
	bitesize = 2

/obj/item/chems/food/funnelcake
	name = "funnel cake"
	desc = "Funnel cakes rule!"
	icon = 'mods/content/hearthfoods/icons/obj/food.dmi'
	icon_state = "funnelcake"
	filling_color = "#ef1479"
	do_coating_prefix = FALSE
	bitesize = 2

/obj/item/chems/food/funnelcake/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/batter, 10)
	reagents.add_reagent(/decl/material/liquid/nutriment/sugar, 5)
	reagents.add_reagent(/decl/material/liquid/nutriment/triglyceride/oil, 1)

/obj/item/chems/food/onionrings
	name = "onion rings"
	desc = "Like circular fries but better."
	icon = 'mods/content/hearthfoods/icons/obj/food.dmi'
	icon_state = "onionrings"
	trash = /obj/item/trash/plate
	filling_color = "#eddd00"
	nutriment_desc = list("fried onions" = 5)
	nutriment_amt = 5
	bitesize = 2

/obj/item/chems/food/corn_dog
	name = "corn dog"
	desc = "A cornbread covered sausage deepfried in oil."
	icon = 'mods/content/hearthfoods/icons/obj/food.dmi'
	icon_state = "corndog"
	nutriment_desc = list("corn batter" = 4)
	nutriment_amt = 4

/obj/item/chems/food/corn_dog/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/nutriment/protein, 3)
