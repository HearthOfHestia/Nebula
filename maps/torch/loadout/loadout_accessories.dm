/decl/loadout_option/accessory/armband_ma
	name = "master at arms brassard"
	path = /obj/item/clothing/accessory/armband/ma
	allowed_roles = SECURITY_ROLES

/decl/loadout_option/accessory/armband_security
	allowed_roles = SECURITY_ROLES

/decl/loadout_option/accessory/armband_cargo
	allowed_roles = SUPPLY_ROLES

/decl/loadout_option/accessory/armband_medical
	allowed_roles = MEDICAL_ROLES

/decl/loadout_option/accessory/armband_emt
	allowed_roles = list(/datum/job/doctor, /datum/job/medical_trainee)

/decl/loadout_option/accessory/armband_corpsman
	name = "medical armband"
	path = /obj/item/clothing/accessory/armband/medblue
	allowed_roles = list(/datum/job/cmo, /datum/job/senior_doctor, /datum/job/junior_doctor, /datum/job/doctor, /datum/job/medical_trainee)

/decl/loadout_option/accessory/armband_engineering
	allowed_roles = ENGINEERING_ROLES

/decl/loadout_option/accessory/armband_hydro
	allowed_roles = list(/datum/job/rd, /datum/job/scientist, /datum/job/scientist_assistant, /datum/job/assistant)

/decl/loadout_option/accessory/armband_nt
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/accessory/ntaward
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/accessory/tie
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/accessory/tie_color
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/accessory/stethoscope
	allowed_roles = STERILE_ROLES

/decl/loadout_option/tactical/holster
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
	allowed_roles = list(/datum/job/pathfinder, /datum/job/explorer)

/decl/loadout_option/tactical/armor_deco
	allowed_roles = ARMORED_ROLES

/decl/loadout_option/tactical/press_tag
	name = "Press tag"
	path = /obj/item/clothing/accessory/armor/tag/press
	allowed_roles = list(/datum/job/assistant)

/decl/loadout_option/tactical/helm_covers
	allowed_roles = ARMORED_ROLES

/decl/loadout_option/clothing/hawaii
	allowed_roles = SEMIFORMAL_ROLES
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/clothing/scarf
	allowed_roles = SEMIANDFORMAL_ROLES
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/clothing/flannel
	allowed_roles = SEMIFORMAL_ROLES
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/clothing/vest
	allowed_roles = FORMAL_ROLES
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/clothing/suspenders
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/clothing/suspenders/colorable
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/clothing/wcoat
	allowed_roles = FORMAL_ROLES
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/clothing/zhongshan
	allowed_roles = FORMAL_ROLES
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/clothing/dashiki
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/clothing/thawb
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/clothing/sherwani
	allowed_roles = FORMAL_ROLES
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/clothing/qipao
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/clothing/sweater
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/clothing/tangzhuang
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/accessory/bowtie
	allowed_branches = CIVILIAN_BRANCHES

/decl/loadout_option/accessory/ftupin
	allowed_branches = CIVILIAN_BRANCHES

/*********************
 tactical accessories
*********************/
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

/obj/item/clothing/accessory/storage/pouches/large/green
	color = COLOR_DARK_GREEN_GRAY

/obj/item/clothing/accessory/storage/pouches/large/navy
	color = COLOR_NAVY_BLUE

/obj/item/clothing/accessory/storage/pouches/tan
	color = COLOR_TAN

/obj/item/clothing/accessory/storage/pouches/green 
	color = COLOR_DARK_GREEN_GRAY

/obj/item/clothing/accessory/storage/pouches/navy 
	color = COLOR_NAVY_BLUE
