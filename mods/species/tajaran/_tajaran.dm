#define SPECIES_TAJARA  "Tajara"
#define LANGUAGE_TAJARA "Siik'maas"

/decl/modpack/tajaran
	name = "Tajaran"

/mob/living/carbon/human/tajaran/Initialize(mapload)
	..(mapload, SPECIES_TAJARA)
