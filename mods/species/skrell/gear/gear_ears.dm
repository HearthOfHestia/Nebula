/obj/item/clothing/ears/skrell
	name = "skrell tentacle wear"
	desc = "Some stuff worn by skrell to adorn their head tentacles."

/obj/item/clothing/ears/skrell/Initialize()
	. = ..()
	bodytype_restricted = list(BODYTYPE_SKRELL)

/obj/item/clothing/ears/skrell/band
	name = "headtail bands"
	desc = "Metallic bands worn by skrell to adorn their head tails."
	icon = 'mods/species/skrell/icons/clothing/ears/band.dmi'
	drop_sound = 'mods/species/skrell/sound/drop/accessory.ogg'
	pickup_sound = 'mods/species/skrell/sound/pickup/accessory.ogg'

/obj/item/clothing/ears/skrell/band/chains
	name = "very short headtail chains"
	desc = "A delicate chain worn by skrell to decorate their headtails."
	icon = 'mods/species/skrell/icons/clothing/ears/chains_very_short.dmi'

/obj/item/clothing/ears/skrell/band/chains/short
	name = "short headtail chains"
	icon = 'mods/species/skrell/icons/clothing/ears/chains_short.dmi'

/obj/item/clothing/ears/skrell/band/chains/long
	name = "long headtail chains"
	icon = 'mods/species/skrell/icons/clothing/ears/chains_long.dmi'

/obj/item/clothing/ears/skrell/band/chains/very_long
	name = "very long headtail chains"
	icon = 'mods/species/skrell/icons/clothing/ears/chains_very_long.dmi'

/obj/item/clothing/ears/skrell/cloth
	name = "short headtail cloth"
	desc = "A cloth shawl worn by skrell draped around their head tails."
	icon = 'mods/species/skrell/icons/clothing/ears/cloth_short.dmi'

/obj/item/clothing/ears/skrell/cloth/long
	name = "long headtail cloth"
	icon = 'mods/species/skrell/icons/clothing/ears/cloth_long.dmi'

/decl/loadout_option/ears/skrell
	category = /decl/loadout_category/ears
	whitelisted = list(SPECIES_SKRELL)
	flags = GEAR_HAS_COLOR_SELECTION

/decl/loadout_option/ears/skrell/band
	name = "headtail bands (Skrell)"
	path = /obj/item/clothing/ears/skrell/band

/decl/loadout_option/ears/skrell/chains
	name = "very short headtail chains (Skrell)"
	path = /obj/item/clothing/ears/skrell/band/chains

/decl/loadout_option/ears/skrell/chains/short
	name = "short headtail chains (Skrell)"
	path = /obj/item/clothing/ears/skrell/band/chains/short

/decl/loadout_option/ears/skrell/chains/long
	name = "long headtail chains (Skrell)"
	path = /obj/item/clothing/ears/skrell/band/chains/long

/decl/loadout_option/ears/skrell/chains/very_long
	name = "very long headtail chains (Skrell)"
	path = /obj/item/clothing/ears/skrell/band/chains/very_long

/decl/loadout_option/ears/skrell/cloth
	name = "short headtail cloth (Skrell)"
	path = /obj/item/clothing/ears/skrell/cloth

/decl/loadout_option/ears/skrell/cloth/long
	name = "long headtail cloth (Skrell)"
	path = /obj/item/clothing/ears/skrell/cloth/long