/decl/material/liquid/amphetamines
	name = "hyperzine"

/decl/material/liquid/narcotics
	name = "impedrezene"

/decl/material/liquid/sedatives
	name = "soporific"

/decl/material/liquid/hallucinogenics
	name = "mindbreaker toxin"

/decl/material/liquid/opium
	name = "opium"
	lore_text = "A milky substance extracted from space poppy. Very useful in the creation of opiates."
	taste_description = "incredible bitterness"
	color = "#a68480"
	overdose = REAGENTS_OVERDOSE * 0.5
	value = 2

/decl/material/liquid/opium/affect_blood(var/mob/living/M, var/alien, var/removed, var/datum/reagents/holder)
	M.add_chemical_effect(CE_PAINKILLER, 60)
	if(prob(75)) //You're taking raw opium
		SET_STATUS_MAX(M, STAT_SLUR, 40)
	if(prob(75))
		SET_STATUS_MAX(M, STAT_DIZZY, 40)