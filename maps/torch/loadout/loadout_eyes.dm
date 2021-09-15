/decl/loadout_option/eyes/eyepatch
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/eyes/fashionglasses
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/eyes/sciencegoggles/Initialize()
	. = ..()

	allowed_roles = RESEARCH_ROLES | EXPLORATION_ROLES

/decl/loadout_option/eyes/security
	allowed_roles = SECURITY_ROLES

/decl/loadout_option/eyes/medical
	allowed_roles = MEDICAL_ROLES

/decl/loadout_option/eyes/meson
	allowed_roles = list(/datum/job/chief_engineer, /datum/job/senior_engineer, /datum/job/engineer, /datum/job/mining, /datum/job/scientist_assistant, /datum/job/pathfinder, /datum/job/explorer, /datum/job/scientist, /datum/job/rd, /datum/job/senior_scientist)

/decl/loadout_option/eyes/welding
	allowed_roles = TECHNICAL_ROLES

/decl/loadout_option/eyes/material
	allowed_roles = list(/datum/job/chief_engineer, /datum/job/senior_engineer, /datum/job/engineer, /datum/job/mining, /datum/job/scientist_assistant)