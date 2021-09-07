/obj/item/clothing/head/helmet/space/void/Initialize()
	. = ..()
	if("exclude" in bodytype_restricted)
		LAZYDISTINCTADD(bodytype_restricted, BODYTYPE_SKRELL)
	else if(length(bodytype_restricted))
		LAZYREMOVE(bodytype_restricted, BODYTYPE_SKRELL)
	else
		bodytype_restricted = list("exclude", BODYTYPE_SKRELL)

/obj/item/clothing/head/helmet/space/void/skrell
	name = "alien helmet"
	icon = 'mods/species/skrell/icons/clothing/head/skrell_helmet_white.dmi'
	desc = "Smoothly contoured and polished to a shine. Still looks like a fishbowl."
	armor = list(
		melee = ARMOR_MELEE_KNIVES,
		bullet = ARMOR_BALLISTIC_PISTOL,
		laser = ARMOR_LASER_MAJOR,
		energy = ARMOR_ENERGY_STRONG,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
		)
	bodytype_restricted = list(BODYTYPE_SKRELL, BODYTYPE_HUMANOID)

/obj/item/clothing/head/helmet/space/void/skrell/Initialize()
	. = ..()
	bodytype_restricted = list(BODYTYPE_SKRELL)

/obj/item/clothing/head/helmet/space/void/skrell/black
	icon = 'mods/species/skrell/icons/clothing/head/skrell_helmet_black.dmi'

/obj/item/clothing/head/helmet/skrell
	name = "skrellian helmet"
	desc = "A helmet built for use by a Skrell. This one appears to be fairly standard and reliable."
	icon = 'mods/species/skrell/icons/clothing/head/helmet_skrell.dmi'