/decl/loadout_option/suit/blueapron
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/suit/overalls
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/suit/medcoat
	allowed_roles = MEDICAL_ROLES

/decl/loadout_option/suit/trenchcoat
	//allowed_roles = list(/datum/job/assistant, /datum/job/bartender, /datum/job/detective, /datum/job/merchant, /datum/job/submap/bearcat_captain, /datum/job/submap/bearcat_crewman, /datum/job/submap/CTI_pilot, /datum/job/submap/CTI_engineer, /datum/job/submap/CTI_Undergraduate_Xenoscience_Researcher,  /datum/job/submap/colonist, /datum/job/submap/pod)
	allowed_roles = list(/datum/job/assistant, /datum/job/bartender, /datum/job/detective, /datum/job/merchant)
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/suit/poncho
	allowed_roles = CASUAL_ROLES
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/suit/security_poncho
	allowed_roles = list(/datum/job/merchant, /datum/job/detective)
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/suit/medical_poncho
	allowed_roles = list(/datum/job/senior_doctor, /datum/job/junior_doctor, /datum/job/doctor, /datum/job/psychiatrist, /datum/job/merchant, /datum/job/chemist)
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/suit/engineering_poncho
	allowed_roles = list(/datum/job/engineer, /datum/job/roboticist, /datum/job/merchant)
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/suit/science_poncho
	allowed_roles = list(/datum/job/scientist, /datum/job/senior_scientist, /datum/job/scientist_assistant)
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/suit/nanotrasen_poncho
	allowed_roles = list(/datum/job/scientist, /datum/job/scientist_assistant, /datum/job/senior_scientist, /datum/job/merchant)
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/suit/cargo_poncho
	allowed_roles = list(/datum/job/cargo_tech, /datum/job/merchant)
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/suit/suit_jacket
	allowed_roles = FORMAL_ROLES
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/suit/custom_suit_jacket
	allowed_roles = FORMAL_ROLES
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/suit/hoodie
	allowed_roles = CASUAL_ROLES
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/suit/hoodie_sel
	allowed_roles = CASUAL_ROLES
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/suit/labcoat
	allowed_roles = DOCTOR_ROLES

/decl/loadout_option/suit/labcoat_corp
	allowed_roles = DOCTOR_ROLES
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/suit/labcoat_blue
	allowed_roles = DOCTOR_ROLES

/*
/decl/loadout_option/suit/labcoat_ec
	name = "labcoat, Expeditionary Corps"
	path = /obj/item/clothing/suit/storage/toggle/labcoat/science/ec
	allowed_roles = DOCTOR_ROLES
	allowed_

/decl/loadout_option/suit/labcoat_ec_cso
	name = "labcoat, chief science officer, Expeditionary Corps"
	path = /obj/item/clothing/suit/storage/toggle/labcoat/rd/ec
	allowed_roles = list(/datum/job/rd)
*/

/decl/loadout_option/suit/coat
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/suit/leather
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/suit/wintercoat
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/suit/track
	allowed_roles = CASUAL_ROLES
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/tactical/pcarrier
	name = "black plate carrier"
	path = /obj/item/clothing/suit/armor/pcarrier
	cost = 1
	slot = slot_wear_suit_str
	allowed_roles = ARMORED_ROLES

/decl/loadout_option/tactical/pcarrier/blue
	name = "blue plate carrier"
	path = /obj/item/clothing/suit/armor/pcarrier/blue
	allowed_branches = list(/datum/mil_branch/iseo_issc, /datum/mil_branch/espatier_corps)

/decl/loadout_option/tactical/pcarrier/misc
	name = "miscellaneous plate carrier selection"
	allowed_roles = ARMORED_ROLES
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/tactical/pcarrier/misc/Initialize()
	. = ..()
	var/armors = list()
	armors["green plate carrier"] = /obj/item/clothing/suit/armor/pcarrier/green
	armors["tan plate carrier"] = /obj/item/clothing/suit/armor/pcarrier/tan
	gear_tweaks += new/datum/gear_tweak/path(armors)

