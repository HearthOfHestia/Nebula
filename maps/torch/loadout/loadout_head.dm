
/datum/gear/head/solberet
	display_name = "ISEO beret selection"
	description = "A beret denoting service in an organization within the ISEO."
	path = /obj/item/clothing/head/beret/iseo
	allowed_branches = ISEO_BRANCHES

/datum/gear/head/solberet/New()
	..()
	var/berets = list()
	berets["peacekeeper beret"] = /obj/item/clothing/head/beret/iseo/peacekeeper
	berets["gateway administration beret"] = /obj/item/clothing/head/beret/iseo/gateway
	berets["government research beret"] = /obj/item/clothing/head/beret/iseo/research
	berets["health service beret"] = /obj/item/clothing/head/beret/iseo/health
	berets["diplomatic security beret"] = /obj/item/clothing/head/beret/iseo/diplomatic
	gear_tweaks += new/datum/gear_tweak/path(berets)

/datum/gear/head/fleetcap
	display_name = "fleet cap"
	path = /obj/item/clothing/head/iseo/utility
	cost = 0
	allowed_branches = list(/datum/mil_branch/iseo_issc)

/datum/gear/head/surgical
	allowed_roles = STERILE_ROLES

/datum/gear/head/beret
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/mask/bandana
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/head/bandana
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/head/beanie
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/head/bow
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/head/cap
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/head/hairflower
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/head/hardhat
	allowed_roles = TECHNICAL_ROLES

/datum/gear/head/formalhat
	allowed_roles = FORMAL_ROLES
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/head/informalhat
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/head/welding
	allowed_roles = TECHNICAL_ROLES

/datum/gear/tactical/balaclava
	allowed_roles = ARMORED_ROLES

/datum/gear/head/corporateberet
	allowed_branches = CIVILIAN_BRANCHES