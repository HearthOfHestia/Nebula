/decl/bodytype/lizard
	name =                   "feminine"
	bodytype_category =      BODYTYPE_UNATHI
	husk_icon =              'mods/species/lizard/icons/husk.dmi'
	icon_base =              'mods/species/lizard/icons/body_female.dmi'
	icon_deformed =          'mods/species/lizard/icons/deformed_body_female.dmi'
	lip_icon =               'mods/species/lizard/icons/lips.dmi'
	damage_mask =            'icons/mob/human_races/species/human/damage_mask.dmi'
	blood_mask =             'icons/mob/human_races/species/human/blood_mask.dmi'
	bandages_icon =          'icons/mob/bandage.dmi'
	limb_icon_intensity =    0.7
	health_hud_intensity =   2
	associated_gender =      FEMALE
	tail_icon =              'mods/species/lizard/icons/tail.dmi'
	tail =                   "sogtail"
	tail_blend =             ICON_MULTIPLY
	uniform_state_modifier = "_f"
	limb_blend =             ICON_MULTIPLY

/decl/bodytype/lizard/Initialize() // Has to be runtime-initialised because it uses string interpolation.
	equip_adjust = list(
		slot_back_str = list("[NORTH]" = list("x" = 0, "y" = 1), "[EAST]" = list("x" = 0, "y" = 1), "[SOUTH]" = list("x" = 0, "y" = 1), "[WEST]" = list("x" = 0, "y" = 1)),
		slot_wear_suit_str = list("[NORTH]" = list("x" = 0, "y" = 1), "[EAST]" = list("x" = 0, "y" = 1), "[SOUTH]" = list("x" = 0, "y" = 1), "[WEST]" = list("x" = 0, "y" = 1)),
		slot_wear_id_str = list("[NORTH]" = list("x" = 0, "y" = 1), "[EAST]" = list("x" = 0, "y" = 1), "[SOUTH]" = list("x" = 0, "y" = 1), "[WEST]" = list("x" = 0, "y" = 1)),
		slot_gloves_str = list("[NORTH]" = list("x" = 0, "y" = 1), "[EAST]" = list("x" = 0, "y" = 1), "[SOUTH]" = list("x" = 0, "y" = 1), "[WEST]" = list("x" = 0, "y" = 1)),
		slot_tie_str = list("[NORTH]" = list("x" = 0, "y" = 1), "[EAST]" = list("x" = 0, "y" = 1), "[SOUTH]" = list("x" = 0, "y" = 1), "[WEST]" = list("x" = 0, "y" = 1)),
		slot_undershirt_str = list("[NORTH]" = list("x" = 0, "y" = 1), "[EAST]" = list("x" = 0, "y" = 1), "[SOUTH]" = list("x" = 0, "y" = 1), "[WEST]" = list("x" = 0, "y" = 1)),
		slot_head_str = list("[NORTH]" = list("x" = 0, "y" = 1), "[EAST]" = list("x" = 0, "y" = 1), "[SOUTH]" = list("x" = 0, "y" = 1), "[WEST]" = list("x" = 0, "y" = 1))
	)
	. = ..()

/decl/bodytype/lizard/masculine
	name =                   "masculine"
	icon_base =              'mods/species/lizard/icons/body_male.dmi'
	icon_deformed =          'mods/species/lizard/icons/deformed_body_male.dmi'
	associated_gender =      MALE
	uniform_state_modifier = null
