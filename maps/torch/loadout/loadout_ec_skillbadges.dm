
/datum/gear/skill
	sort_category = "Skill Badges"
	category = /datum/gear/skill
	slot = slot_tie_str
	allowed_

/datum/gear/skill/botany
	display_name = "Field Xenobotany Specialist badge"
	path = /obj/item/clothing/accessory/skillbadge/botany
	allowed_skills = list(SKILL_BOTANY = SKILL_ADEPT)

/datum/gear/skill/netgun
	display_name = "Xenofauna Acquisition Specialist badge"
	path = /obj/item/clothing/accessory/skillbadge/netgun
	allowed_skills = list(SKILL_WEAPONS = SKILL_ADEPT)

/datum/gear/skill/eva
	display_name = "Void Mobility Specialist badge"
	path = /obj/item/clothing/accessory/skillbadge/eva
	allowed_skills = list(SKILL_EVA = SKILL_ADEPT)

/datum/gear/skill/medical
	display_name = "Advanced First Aid Specialist badge"
	path = /obj/item/clothing/accessory/skillbadge/medical
	allowed_skills = list(SKILL_MEDICAL = SKILL_BASIC)

/datum/gear/skill/mech
	display_name = "Exosuit Specialist badge"
	path = /obj/item/clothing/accessory/skillbadge/mech
	allowed_skills = list(SKILL_MECH = HAS_PERK)

/datum/gear/skill/electric
	display_name = "Electrical Specialist badge"
	path = /obj/item/clothing/accessory/skillbadge/electric
	allowed_skills = list(SKILL_ELECTRICAL = SKILL_ADEPT)

/datum/gear/skill/science
	display_name = "Research Specialist badge"
	path = /obj/item/clothing/accessory/skillbadge/science
	allowed_skills = list(SKILL_SCIENCE = SKILL_ADEPT)
