/*
 *  Branches
 *  ========
 */

/datum/mil_branch/iseo_issc
	name = "International Stellar Surveyor Corps"
	name_short = "ISSC"
	email_domain = "issc.iseo"

	rank_types = list(
		/datum/mil_rank/sc/t1,
		/datum/mil_rank/sc/t2,
		/datum/mil_rank/sc/t3,
		/datum/mil_rank/sc/t4,
		/datum/mil_rank/sc/s1,
		/datum/mil_rank/sc/s2,
		/datum/mil_rank/sc/s3,
		/datum/mil_rank/sc/s4,
		/datum/mil_rank/sc/s6
	)

	spawn_rank_types = list(
		/datum/mil_rank/sc/t1,
		/datum/mil_rank/sc/t2,
		/datum/mil_rank/sc/t3,
		/datum/mil_rank/sc/t4,
		/datum/mil_rank/sc/s1,
		/datum/mil_rank/sc/s2,
		/datum/mil_rank/sc/s3,
		/datum/mil_rank/sc/s4,
		/datum/mil_rank/sc/s6
	)

	assistant_job = /datum/job/crew

	min_skill = list(	SKILL_HAULING = SKILL_BASIC,
						SKILL_SCIENCE = SKILL_BASIC,
						SKILL_EVA     = SKILL_BASIC)

/datum/mil_branch/espatier_corps
	name = "Espatier Corps"
	name_short = "EC"
	email_domain = "espatier.mil"

	rank_types = list(
		/datum/mil_rank/espatier/e1,
		/datum/mil_rank/espatier/e2,
		/datum/mil_rank/espatier/e3,
		/datum/mil_rank/espatier/e4,
		/datum/mil_rank/espatier/e5,
		/datum/mil_rank/espatier/e6,
		/datum/mil_rank/espatier/e7,
		/datum/mil_rank/espatier/e8,
		/datum/mil_rank/espatier/e8_alt,
		/datum/mil_rank/espatier/e9,
		/datum/mil_rank/espatier/e9_alt1,
		/datum/mil_rank/espatier/e9_alt2,
		/datum/mil_rank/espatier/o1,
		/datum/mil_rank/espatier/o2,
		/datum/mil_rank/espatier/o3,
		/datum/mil_rank/espatier/o4,
		/datum/mil_rank/espatier/o5,
		/datum/mil_rank/espatier/o6,
		/datum/mil_rank/espatier/o7,
		/datum/mil_rank/espatier/o8,
		/datum/mil_rank/espatier/o9,
		/datum/mil_rank/espatier/o10,
		/datum/mil_rank/espatier/o10_alt
	)

	spawn_rank_types = list(
		/datum/mil_rank/espatier/e1,
		/datum/mil_rank/espatier/e2,
		/datum/mil_rank/espatier/e3,
		/datum/mil_rank/espatier/e4,
		/datum/mil_rank/espatier/e5,
		/datum/mil_rank/espatier/e6,
		/datum/mil_rank/espatier/e7,
		/datum/mil_rank/espatier/e8,
		/datum/mil_rank/espatier/e8_alt,
		/datum/mil_rank/espatier/e9,
		/datum/mil_rank/espatier/o1,
		/datum/mil_rank/espatier/o2,
		/datum/mil_rank/espatier/o3,
		/datum/mil_rank/espatier/o4,
		/datum/mil_rank/espatier/o5
	)

	assistant_job = /datum/job/crew
	min_skill = list(	SKILL_HAULING = SKILL_ADEPT,
	                    SKILL_WEAPONS = SKILL_BASIC,
	                    SKILL_COMBAT  = SKILL_BASIC)

/datum/mil_branch/government
	name = "ISEO Employee"
	name_short = "ISEO"
	email_domain = "gov.iseo"

	rank_types = list(
		/datum/mil_rank/government/gov,
		/datum/mil_rank/government/scientist
	)

	spawn_rank_types = list(
		/datum/mil_rank/government/gov,
		/datum/mil_rank/government/scientist
	)

/datum/mil_rank/sc/grade()
	. = ..()
	if(!sort_order)
		return ""
	if(sort_order <= 10)
		return "T[sort_order]"
	return "S[sort_order - 10]"

/datum/mil_rank/espatier/grade()
	. = ..()
	if(!sort_order)
		return ""
	if(sort_order <= 10)
		return "E[sort_order]"
	return "O[sort_order - 10]"

/*
 *  Espatier Corps
 *  ==============
 */
/datum/mil_rank/espatier/e1
	name = "Private"
	name_short = "PVT"
	accessory = list(/obj/item/clothing/accessory/rank/espatier)
	sort_order = 1

/datum/mil_rank/espatier/e2
	name = "Private First Class"
	name_short = "PV1"
	accessory = list(/obj/item/clothing/accessory/rank/espatier/e2)
	sort_order = 2

/datum/mil_rank/espatier/e3
	name = "Lance Corporal"
	name_short = "LCPL"
	accessory = list(/obj/item/clothing/accessory/rank/espatier/e3)
	sort_order = 3

/datum/mil_rank/espatier/e4
	name = "Corporal"
	name_short = "CPL"
	accessory = list(/obj/item/clothing/accessory/rank/espatier/e4)
	sort_order = 4

/datum/mil_rank/espatier/e5
	name = "Sergeant"
	name_short = "SGT"
	accessory = list(/obj/item/clothing/accessory/rank/espatier/e5)
	sort_order = 5

/datum/mil_rank/espatier/e6
	name = "Staff Sergeant"
	name_short = "SSG"
	accessory = list(/obj/item/clothing/accessory/rank/espatier/e6)
	sort_order = 6

/datum/mil_rank/espatier/e7
	name = "Gunnery Sergeant"
	name_short = "GSG"
	accessory = list(/obj/item/clothing/accessory/rank/espatier/e7)
	sort_order = 7

/datum/mil_rank/espatier/e8
	name = "Master Sergeant"
	name_short = "MSG"
	accessory = list(/obj/item/clothing/accessory/rank/espatier/e8)
	sort_order = 8

/datum/mil_rank/espatier/e8_alt
	name = "First Sergeant"
	name_short = "1SG"
	accessory = list(/obj/item/clothing/accessory/rank/espatier/e8_alt)
	sort_order = 8

/datum/mil_rank/espatier/e9
	name = "Master Gunnery Sergeant"
	name_short = "MGSG"
	accessory = list(/obj/item/clothing/accessory/rank/espatier/e9)
	sort_order = 9

/datum/mil_rank/espatier/e9_alt1
	name = "Command Sergeant Major"
	name_short = "CSM"
	accessory = list(/obj/item/clothing/accessory/rank/espatier/e9_alt)
	sort_order = 9

/datum/mil_rank/espatier/e9_alt2
	name = "Sergeant Major"
	name_short = "SMA"
	accessory = list(/obj/item/clothing/accessory/rank/espatier/e9_alt2)
	sort_order = 9

/datum/mil_rank/espatier/o1
	name = "Second Lieutenant"
	name_short = "2LT"
	accessory = list(/obj/item/clothing/accessory/rank/espatier/officer/o1)
	sort_order = 11

/datum/mil_rank/espatier/o2
	name = "First Lieutenant"
	name_short = "1LT"
	accessory = list(/obj/item/clothing/accessory/rank/espatier/officer/o2)
	sort_order = 12

/datum/mil_rank/espatier/o3
	name = "Captain"
	name_short = "CPT"
	accessory = list(/obj/item/clothing/accessory/rank/espatier/officer/o3)
	sort_order = 13

/datum/mil_rank/espatier/o4
	name = "Major"
	name_short = "MAJ"
	accessory = list(/obj/item/clothing/accessory/rank/espatier/command/o4)
	sort_order = 14

/datum/mil_rank/espatier/o5
	name = "Lieutenant Colonel"
	name_short = "LTC"
	accessory = list(/obj/item/clothing/accessory/rank/espatier/command/o5)
	sort_order = 15

/datum/mil_rank/espatier/o6
	name = "Colonel"
	name_short = "COL"
	accessory = list(/obj/item/clothing/accessory/rank/espatier/command/o6)
	sort_order = 16

/datum/mil_rank/espatier/o7
	name = "Brigadier General"
	name_short = "BG"
	accessory = list(/obj/item/clothing/accessory/rank/espatier/command/o7)
	sort_order = 17

/datum/mil_rank/espatier/o8
	name = "Major General"
	name_short = "MG"
	accessory = list(/obj/item/clothing/accessory/rank/espatier/command/o8)
	sort_order = 18

/datum/mil_rank/espatier/o9
	name = "Lieutenant General"
	name_short = "LTG"
	accessory = list(/obj/item/clothing/accessory/rank/espatier/command/o9)
	sort_order = 19

/datum/mil_rank/espatier/o10
	name = "General"
	name_short = "GEN"
	accessory = list(/obj/item/clothing/accessory/rank/espatier/command/o10)
	sort_order = 20

/datum/mil_rank/espatier/o10_alt
	name = "General of the Corps"
	name_short = "GC"
	accessory = list(/obj/item/clothing/accessory/rank/espatier/command/o10_alt)
	sort_order = 20

/*
 *  Surveyor Corps
 *  ==============
 */

/datum/mil_rank/sc/t1
	name = "Crewman"
	name_short = "CN"
	accessory = list(/obj/item/clothing/accessory/rank/iseo/t1)
	sort_order = 1

/datum/mil_rank/sc/t2
	name = "Technician Third Class"
	name_short = "TN3"
	accessory = list(/obj/item/clothing/accessory/rank/iseo/t2)
	sort_order = 2

/datum/mil_rank/sc/t3
	name = "Technician Second Class"
	name_short = "TN2"
	accessory = list(/obj/item/clothing/accessory/rank/iseo/t3)
	sort_order = 3

/datum/mil_rank/sc/t4
	name = "Technician First Class"
	name_short = "TN1"
	accessory = list(/obj/item/clothing/accessory/rank/iseo/t4)
	sort_order = 4

/datum/mil_rank/sc/s1
	name = "Ensign"
	name_short = "ENS"
	accessory = list(/obj/item/clothing/accessory/rank/iseo/officer/s1)
	sort_order = 5

/datum/mil_rank/sc/s2
	name = "Lieutenant"
	name_short = "LT"
	accessory = list(/obj/item/clothing/accessory/rank/iseo/officer/s2)
	sort_order = 6

/datum/mil_rank/sc/s3
	name = "Lieutenant-Commander"
	name_short = "LCDR"
	accessory = list(/obj/item/clothing/accessory/rank/iseo/officer/s3)
	sort_order = 7

/datum/mil_rank/sc/s4
	name = "Commander"
	name_short = "CDR"
	accessory = list(/obj/item/clothing/accessory/rank/iseo/command/s4)
	sort_order = 8

/datum/mil_rank/sc/s6
	name = "Captain"
	name_short = "CAPT"
	accessory = list(/obj/item/clothing/accessory/rank/iseo/command/s5)
	sort_order = 9

/*
 *  ISEO Employees
 *  ==============
 */

/datum/mil_rank/government/gov
	name = "National Council Representative"
	name_short = "NCR"
	accessory = list(/obj/item/clothing/accessory/badge/ncr)

/datum/mil_rank/government/scientist
	name = "ISEO Scientist"
	name_short = "SCI"
