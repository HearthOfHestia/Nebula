/obj/item/chems/drinks/bottle/baijiu
	name = "Hangzhou Bay Baijiu"
	desc = "A large bottle of Baijiu with a beautiful looking sunset on the cover."
	icon_state = "baijiu"
	center_of_mass = @"{'x':16,'y':6}"

/obj/item/chems/drinks/bottle/baijiu/Initialize()
	.=..()
	reagents.add_reagent(/decl/material/liquid/ethanol/baijiu, 100)

/obj/item/chems/drinks/bottle/cachaca
	name = "Brazillian Cachaca"
	desc = "Cachaca, distilled from fermented sugarcane.  This one was bottled on Earth."
	icon_state = "cachaca"
	center_of_mass = @"{'x':16,'y':6}"

/obj/item/chems/drinks/bottle/cachaca/Initialize()
	.=..()
	reagents.add_reagent(/decl/material/liquid/ethanol/cachaca, 100)

/obj/item/chems/drinks/bottle/soju
	name = "Sol Hyonjun's Soju"
	desc = "A clear, see-through bottle of Soju."
	icon_state = "soju"
	center_of_mass = @"{'x':16,'y':6}"

/obj/item/chems/drinks/bottle/soju/Initialize()
	.=..()
	reagents.add_reagent(/decl/material/liquid/ethanol/soju, 100)

/obj/item/chems/drinks/bottle/rakia
	name = "Sadmir Cumani's Rakia"
	desc = "A polite looking man on the label promises you this is 100 percent fruit brandy."
	icon_state = "rakia"
	center_of_mass = @"{'x':16,'y':6}"

/obj/item/chems/drinks/bottle/rakia/Initialize()
	.=..()
	reagents.add_reagent(/decl/material/liquid/ethanol/rakia, 100)

/obj/item/chems/drinks/bottle/arak
	name = "Mo's Premium Arak"
	desc = "A bottle of Mo's Premium anise arak."
	icon_state = "arak"
	center_of_mass = @"{'x':16,'y':6}"

/obj/item/chems/drinks/bottle/arak/Initialize()
	.=..()
	reagents.add_reagent(/decl/material/liquid/ethanol/arak, 100)

/obj/item/chems/drinks/bottle/blackstrap
	name = "Big Bill's Blackstrap"
	desc = "A bottle of Big Bill's Blackstrap. High Quality Rum."
	icon_state = "blackstrap"
	center_of_mass = @"{'x':16,'y':6}"

/obj/item/chems/drinks/bottle/blackstrap/Initialize()
	.=..()
	reagents.add_reagent(/decl/material/liquid/ethanol/blackstrap, 100)

/obj/item/chems/drinks/bottle/brandy
	name = "Lunar Brandy"
	desc = "A bottle of Lunar Brandy. It looks seriously expensive."
	icon_state = "brandy"
	center_of_mass = @"{'x':16,'y':6}"

/obj/item/chems/drinks/bottle/brandy/Initialize()
	.=..()
	reagents.add_reagent(/decl/material/liquid/ethanol/brandy, 100)

/obj/item/chems/drinks/bottle/pink_gin
	name = "Birmingham Pink"
	desc = "A bottle of high quality gin, produced in the New London Space Station."
	icon_state = "pinkgin"
	center_of_mass = @"{'x':16,'y':6}"

/obj/item/chems/drinks/bottle/pink_gin/Initialize()
	.=..()
	reagents.add_reagent(/decl/material/liquid/ethanol/gin/pink, 100)

/obj/item/chems/drinks/bottle/ogogoro
	name = "Metropolitan Ogogoro"
	desc = "A bottle of West Africa."
	icon_state = "ogogoro"
	center_of_mass = @"{'x':16,'y':6}"

/obj/item/chems/drinks/bottle/ogogoro/Initialize()
	.=..()
	reagents.add_reagent(/decl/material/liquid/ethanol/ogogoro, 100)

/obj/item/chems/drinks/bottle/prosecco
	name = "2020 Vintage Prosecco"
	desc = "A delicious prosecco, ideal for long days after work. This one proudly advertises itself as 2020 Vintage. Must have been a special year."
	icon_state = "prosecco"
	center_of_mass = @"{'x':16,'y':6}"

/obj/item/chems/drinks/bottle/prosecco/Initialize()
	.=..()
	reagents.add_reagent(/decl/material/liquid/ethanol/prosecco, 100)

/obj/item/chems/drinks/bottle/tej
	name = "Rift Valley Tej"
	desc = "Honey Wine from the heart of East Africa!"
	icon_state = "tej"
	center_of_mass = @"{'x':16,'y':6}"

/obj/item/chems/drinks/bottle/tej/Initialize()
	.=..()
	reagents.add_reagent(/decl/material/liquid/ethanol/tej, 100)

/obj/item/chems/drinks/bottle/mars_whiskey
	name = "Martian Gold Whiskey"
	desc = "A premium bottle of spiced whiskey, also known as fireball."
	icon_state = "whiskeybottle3"
	center_of_mass = @"{'x':16,'y':6}"

/obj/item/chems/drinks/bottle/mars_whiskey/Initialize()
	.=..()
	reagents.add_reagent(/decl/material/liquid/ethanol/whiskey/mars, 100)

/obj/item/chems/drinks/bottle/hrenti
	name = "Hhassa's Secret Stash"
	desc = "A bottle of Hrenti, shipped straight from Moghes."
	icon_state = "hrenti"
	center_of_mass = @"{'x':16,'y':6}"

/obj/item/chems/drinks/bottle/hrenti/Initialize()
	.=..()
	reagents.add_reagent(/decl/material/liquid/ethanol/hrenti, 100)

/obj/item/chems/drinks/bottle/wasgaelhi
	name = "Szikan Wasgaelhi"
	desc = "A bottle of state-produced wasgaelhi."
	icon_state = "wasgaelhi"
	center_of_mass = @"{'x':16,'y':6}"

/obj/item/chems/drinks/bottle/wasgaelhi/Initialize()
	.=..()
	reagents.add_reagent(/decl/material/liquid/ethanol/wasgaelhi, 100)

/obj/item/chems/drinks/bottle/yekala
	name = "Kis'tan Yekala"
	desc = "A bottle of yekala from Moghes, triple sealed. It smells very strongly of fish."
	icon_state = "yekala"
	center_of_mass = @"{'x':16,'y':6}"

/obj/item/chems/drinks/bottle/yekala/Initialize()
	.=..()
	reagents.add_reagent(/decl/material/liquid/ethanol/yekala, 100)

/obj/item/chems/drinks/bottle/qokkhrona
	name = "Qixxkalan Qokk'hrona"
	desc = "A vibrant looking bottle of Qokk'hrona. There is a bright warning written in various human languages. It reads: WARNING. NOT SAFE FOR HUMAN CONSUMPTION."
	icon_state = "qokk"
	center_of_mass = @"{'x':16,'y':6}"

/obj/item/chems/drinks/bottle/qokkhrona/Initialize()
	.=..()
	reagents.add_reagent(/decl/material/liquid/ethanol/qokkhrona, 100)

/obj/item/chems/drinks/bottle/lemonjuice
	name = "Lemon Juice"
	desc = "A carton of lemon juice."
	icon_state = "lemonjuice"
	item_state = "carton"
	center_of_mass = @"{'x':16,'y':7}"
	isGlass = 0
	drop_sound = 'sound/foley/drop1.ogg'
	pickup_sound = 'sound/foley/paperpickup2.ogg'

/obj/item/chems/drinks/bottle/lemonjuice/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/drink/juice/lemon, 100)

/obj/item/chems/drinks/bottle/pineapplejuice
	name = "Pineapple Juice"
	desc = "A carton of tropical pineapple juice."
	icon_state = "pineapplejuice"
	item_state = "carton"
	center_of_mass = @"{'x':16,'y':7}"
	isGlass = 0
	drop_sound = 'sound/foley/drop1.ogg'
	pickup_sound = 'sound/foley/paperpickup2.ogg'

/obj/item/chems/drinks/bottle/pineapplejuice/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/drink/juice/pineapple, 100)

/obj/item/chems/drinks/bottle/small/cider_apple
	name = "Apple Cider"
	desc = "A small bottle of delicious apple cider."
	icon_state = "applecider"
	center_of_mass = @"{'x':16,'y':12}"
/obj/item/chems/drinks/bottle/small/cider_apple/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/ethanol/cider_apple, 30)

/obj/item/chems/drinks/bottle/small/cider_pear
	name = "Pear Cider"
	desc = "A small bottle of delicious pear cider"
	icon_state = "pearcider"
	center_of_mass = @"{'x':16,'y':12}"
/obj/item/chems/drinks/bottle/small/cider_pear/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/ethanol/cider_pear, 30)

/obj/item/chems/drinks/bottle/small/lager
	name = "Hans' Original Lager"
	desc = "A bottle of premium lager. Has Hans' seal of approval, apparently."
	icon_state = "lager"
	center_of_mass = @"{'x':16,'y':12}"
/obj/item/chems/drinks/bottle/small/lager/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/ethanol/lager, 30)

/obj/item/chems/drinks/bottle/small/martianbeer
	name = "Martian Pale Ale"
	desc = "The best ale on Mars, according to the label."
	icon_state = "marsbeer"
	center_of_mass = @"{'x':16,'y':12}"
/obj/item/chems/drinks/bottle/small/martianbeer/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/ethanol/martianbeer, 30)

/obj/item/chems/drinks/bottle/small/alcoholfreebeer
	name = "Alcohol-Free Beer"
	desc = "A sad looking bottle of alcohol-free beer."
	icon_state = "afbeer"
	center_of_mass = @"{'x':16,'y':12}"
/obj/item/chems/drinks/bottle/small/alcoholfreebeer/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/drink/alcoholfreebeer, 30)

/obj/item/chems/drinks/bottle/small/eggnog
	name = "Grandma's Own Eggnog"
	desc = "A small bottle of eggnog, ideal for on the go."
	icon_state = ""
	center_of_mass = @"{'x':16,'y':12}"
/obj/item/chems/drinks/bottle/small/eggnog/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/drink/eggnog, 30)

/obj/item/chems/drinks/bottle/small/rootbeer
	name = "Root Beer"
	desc = "A simple bottle of root beer."
	icon_state = "eggnog"
	center_of_mass = @"{'x':16,'y':12}"
/obj/item/chems/drinks/bottle/small/rootbeer/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/drink/rootbeer, 30)

/obj/item/chems/drinks/bottle/small/dnb
	name = "Dandelion and Burdock"
	desc = "A bottle of dandelion and burdock. Not actually made from either of the two."
	icon_state = "dnb"
	center_of_mass = @"{'x':16,'y':12}"
/obj/item/chems/drinks/bottle/small/dnb/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/drink/dnb, 30)

/obj/item/chems/drinks/bottle/hrukhza
	name = "Hrukhza Extract"
	desc = "A carton of Hrukhza extract, straight from Moghes."
	icon_state = "hrukhzaextract"
	item_state = "carton"
	center_of_mass = @"{'x':16,'y':7}"
	isGlass = 0
	drop_sound = 'sound/foley/drop1.ogg'
	pickup_sound = 'sound/foley/paperpickup2.ogg'

/obj/item/chems/drinks/bottle/hrukhza/Initialize()
	. = ..()
	reagents.add_reagent(/decl/material/liquid/drink/hrukhza, 100)