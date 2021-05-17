/decl/species/skrell
	name = SPECIES_SKRELL
	name_plural = SPECIES_SKRELL

	available_bodytypes = list(
		/decl/bodytype/skrell
		)

	preview_icon = 'mods/species/skrell/icons/preview.dmi'

	primitive_form = "Neaera"
	unarmed_attacks = list(
		/decl/natural_attack/stomp,
		/decl/natural_attack/kick,
		/decl/natural_attack/punch,
		/decl/natural_attack/bite
	)

	description = "An amphibious species, Skrell come from the star system known as Qerr'Vallis, which translates to 'Star of \
	the royals' or 'Light of the Crown'.<br/><br/>Skrell are a highly advanced and logical race who live under the rule \
	of the Qerr'Katish, a caste within their society which keeps the empire of the Skrell running smoothly. Skrell are \
	herbivores on the whole and tend to be co-operative with the other species of the galaxy, although they rarely reveal \
	the secrets of their empire to their allies."

	meat_type = /obj/item/chems/food/snacks/fish/octopus
	bone_material = /decl/material/solid/bone/cartilage
	available_pronouns = list(
		/decl/pronouns
	)
	hidden_from_codex = FALSE

	burn_mod = 0.9
	oxy_mod = 1.3
	flash_mod = 1.2
	toxins_mod = 0.8
	siemens_coefficient = 1.3
	warning_low_pressure = WARNING_LOW_PRESSURE * 1.4
	hazard_low_pressure = HAZARD_LOW_PRESSURE * 2
	warning_high_pressure = WARNING_HIGH_PRESSURE / 0.8125
	hazard_high_pressure = HAZARD_HIGH_PRESSURE / 0.84615
	water_soothe_amount = 5

	body_temperature = null // cold-blooded, implemented the same way nabbers do it

	darksight_range = 4

	spawn_flags = SPECIES_CAN_JOIN
	appearance_flags = HAS_HAIR_COLOR | HAS_LIPS | HAS_UNDERWEAR | HAS_SKIN_COLOR

	flesh_color = "#8cd7a3"
	blood_color = "#1d2cbf"
	base_color = "#006666"
	organs_icon = 'mods/species/skrell/icons/organs.dmi'

	cold_level_1 = 280 //Default 260 - Lower is better
	cold_level_2 = 220 //Default 200
	cold_level_3 = 130 //Default 120

	heat_level_1 = 420 //Default 360 - Higher is better
	heat_level_2 = 480 //Default 400
	heat_level_3 = 1100 //Default 1000

	cold_discomfort_level = 292 //Higher than perhaps it should be, to avoid big speed reduction at normal room temp
	heat_discomfort_level = 368

	reagent_tag = IS_SKRELL

	appearance_descriptors = list(
		/datum/appearance_descriptor/height = 1,
		/datum/appearance_descriptor/build = 0,
		/datum/appearance_descriptor/headtail_length = 0
	)

	available_cultural_info = list(
		TAG_CULTURE = list(
			/decl/cultural_info/culture/skrell,
			/decl/cultural_info/culture/skrell/caste_malish,
			/decl/cultural_info/culture/skrell/caste_kanin,
			/decl/cultural_info/culture/skrell/caste_talum,
			/decl/cultural_info/culture/skrell/caste_raskinta
		),
		TAG_HOMEWORLD = list(
			/decl/cultural_info/location/qerrbalak,
			/decl/cultural_info/location/talamira,
			/decl/cultural_info/location/roasora,
			/decl/cultural_info/location/mitorqi,
			/decl/cultural_info/location/skrellspace
		),
		TAG_FACTION = list(
			/decl/cultural_info/faction/skrell,
			/decl/cultural_info/faction/skrell/qalaoa,
			/decl/cultural_info/faction/skrell/yiitalana,
			/decl/cultural_info/faction/skrell/krrigli,
			/decl/cultural_info/faction/skrell/qonprri,
			/decl/cultural_info/faction/other
		),
		TAG_RELIGION = list(
			/decl/cultural_info/religion/other
		)
	)

	has_organ = list(
		BP_HEART =    /obj/item/organ/internal/heart,
		BP_STOMACH =  /obj/item/organ/internal/stomach,
		BP_LUNGS =    /obj/item/organ/internal/lungs/gills,
		BP_LIVER =    /obj/item/organ/internal/liver,
		BP_KIDNEYS =  /obj/item/organ/internal/kidneys,
		BP_BRAIN =    /obj/item/organ/internal/brain,
		BP_EYES =     /obj/item/organ/internal/eyes/skrell
	)

	exertion_effect_chance = 10
	exertion_hydration_scale = 1
	exertion_charge_scale = 1
	exertion_reagent_scale = 5
	exertion_reagent_path = /decl/material/liquid/lactate
	exertion_emotes_biological = list(
		/decl/emote/exertion/biological,
		/decl/emote/exertion/biological/breath,
		/decl/emote/exertion/biological/pant
	)
	exertion_emotes_synthetic = list(
		/decl/emote/exertion/synthetic,
		/decl/emote/exertion/synthetic/creak
	)

/decl/species/skrell/get_sex(var/mob/living/carbon/human/H)
	return istype(H) && (H.appearance_descriptors["headtail length"] == 1 ? MALE : FEMALE)

/decl/species/skrell/check_background()
	return TRUE

/obj/item/organ/internal/eyes/skrell
	name = "amphibian eyes"
	desc = "Large black orbs, belonging to some sort of giant frog by looks of it."
	icon = 'mods/species/skrell/icons/organs.dmi'
	eye_icon = 'mods/species/skrell/icons/eyes.dmi'
	apply_eye_colour = FALSE
