#define SPECIES_LIZARD  "Unathi"
#define LANGUAGE_LIZARD "Ssallant"
#define LANGUAGE_KRIPEN "Kripen"
#define IS_LIZARD       "lizard"
#define BODYTYPE_UNATHI "unathi body"

/decl/modpack/lizard
	name = "Unathi"

/mob/living/carbon/human/lizard/Initialize(mapload)
	..(mapload, SPECIES_LIZARD)
