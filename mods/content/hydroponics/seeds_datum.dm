/datum/seed/poppy
	name = "spacepoppy"
	seed_name = "space poppy"
	display_name = "poppy bulb"
	chems = list(/decl/material/liquid/opium = list(20,60))
	mutants = null

/datum/seed/poppy/New()
	..()
	set_trait(TRAIT_MATURATION,5)
	set_trait(TRAIT_PRODUCTION,5)
	set_trait(TRAIT_YIELD,2)
	set_trait(TRAIT_POTENCY,5)
	set_trait(TRAIT_PRODUCT_ICON,"treefruit")
	set_trait(TRAIT_PRODUCT_COLOUR,"#29ab87")
	set_trait(TRAIT_PLANT_COLOUR,"#8ed17d")
	set_trait(TRAIT_PLANT_ICON,"flower2")
	set_trait(TRAIT_WATER_CONSUMPTION, 6)
	set_trait(TRAIT_NUTRIENT_CONSUMPTION, 0.15)