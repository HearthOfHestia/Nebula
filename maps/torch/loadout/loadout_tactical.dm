/*********************
 tactical accessories
*********************/
/decl/loadout_category/tactical
	name = "Tactical"

/decl/loadout_option/tactical
	category = /decl/loadout_category/accessories
	slot = slot_tie_str

/decl/loadout_option/tactical/holster
	name = "holster selection"
	path = /obj/item/clothing/accessory/storage/holster
	cost = 3
	allowed_roles = ARMED_ROLES

/decl/loadout_option/tactical/holster/Initialize()
	. = ..()
	var/holsters = list()
	holsters["shoulder holster"] = /obj/item/clothing/accessory/storage/holster
	holsters["armpit holster"] = /obj/item/clothing/accessory/storage/holster/armpit
	holsters["waist holster"] = /obj/item/clothing/accessory/storage/holster/waist
	holsters["hip holster"] = /obj/item/clothing/accessory/storage/holster/hip
	holsters["thigh holster"] = /obj/item/clothing/accessory/storage/holster/thigh
	gear_tweaks += new/datum/gear_tweak/path(holsters)

/decl/loadout_option/tactical/sheath
	path = /obj/item/clothing/accessory/storage/holster/machete
	allowed_roles = list(/datum/job/pathfinder, /datum/job/explorer)

/decl/loadout_option/tactical/armor_deco
	name = "armor customization"
	path = /obj/item/clothing/accessory/armor/tag
	flags = GEAR_HAS_SUBTYPE_SELECTION
	allowed_roles = ARMORED_ROLES

/decl/loadout_option/tactical/press_tag
	name = "Press tag"
	path = /obj/item/clothing/accessory/armor/tag/press
	allowed_roles = list(/datum/job/assistant)

/decl/loadout_option/tactical/helm_covers
	name = "helmet covers"
	path = /obj/item/clothing/accessory/armor/helmcover
	flags = GEAR_HAS_SUBTYPE_SELECTION
	allowed_roles = ARMORED_ROLES

/decl/loadout_option/tactical/ubac
	name = "black UBAC shirt"
	path = /obj/item/clothing/accessory/ubac
	allowed_roles = ARMORED_ROLES
	allowed_branches = list(/datum/mil_branch/iseo_issc, /datum/mil_branch/espatier_corps)

/decl/loadout_option/tactical/ubac/blue
	name = "navy blue UBAC shirt"
	path = /obj/item/clothing/accessory/ubac/blue
	allowed_branches = list(/datum/mil_branch/iseo_issc)

/decl/loadout_option/tactical/ubac/misc
	name = "miscellaneous UBAC shirt selection"
	path = /obj/item/clothing/accessory/ubac
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/tactical/ubac/misc/Initialize()
	. = ..()
	var/shirts = list()
	shirts["green UBAC shirt"] = /obj/item/clothing/accessory/ubac/green
	shirts["tan UBAC shirt"] = /obj/item/clothing/accessory/ubac/tan
	gear_tweaks += new/datum/gear_tweak/path(shirts)

/decl/loadout_option/tactical/armor_pouches
	name = "black armor pouches"
	path = /obj/item/clothing/accessory/storage/pouches
	cost = 2
	allowed_roles = ARMORED_ROLES

/decl/loadout_option/tactical/armor_pouches/navy
	name = "navy armor pouches"
	path = /obj/item/clothing/accessory/storage/pouches/navy
	allowed_branches = list(/datum/mil_branch/iseo_issc)

/decl/loadout_option/tactical/armor_pouches/misc
	name = "miscellaneous armor pouches selection"
	path = /obj/item/clothing/accessory/storage/pouches
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/tactical/armor_pouches/misc/Initialize()
	. = ..()
	var/pouches = list()
	pouches["green armor pouches"] = /obj/item/clothing/accessory/storage/pouches/green
	pouches["tan armor pouches"] = /obj/item/clothing/accessory/storage/pouches/tan
	gear_tweaks += new/datum/gear_tweak/path(pouches)

/decl/loadout_option/tactical/large_pouches
	name = "black large armor pouches"
	path = /obj/item/clothing/accessory/storage/pouches/large
	cost = 5
	allowed_roles = ARMORED_ROLES

/decl/loadout_option/tactical/large_pouches/navy
	name = "navy large armor pouches"
	path = /obj/item/clothing/accessory/storage/pouches/large/navy
	allowed_branches = list(/datum/mil_branch/iseo_issc)

/decl/loadout_option/tactical/large_pouches/misc
	name = "miscellaneous large armor pouches selection"
	path = /obj/item/clothing/accessory/storage/pouches/large
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/tactical/large_pouches/misc/Initialize()
	. = ..()
	var/pouches = list()
	pouches["green large armor pouches"] = /obj/item/clothing/accessory/storage/pouches/large/green
	pouches["tan large armor pouches"] = /obj/item/clothing/accessory/storage/pouches/large/tan
	gear_tweaks += new/datum/gear_tweak/path(pouches)