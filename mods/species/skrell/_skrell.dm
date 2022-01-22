#define SPECIES_SKRELL "Skrell"
#define IS_SKRELL "skrell"
#define BODYTYPE_SKRELL "skrellian body"

/decl/modpack/skrell
	name = "Skrell"

/mob/living/carbon/human/skrell/Initialize(mapload)
	..(mapload, SPECIES_SKRELL)