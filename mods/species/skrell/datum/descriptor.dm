/datum/appearance_descriptor/headtail_length
	name = "headtail length"
	chargen_label = "headtails (caste)"
	skip_species_mention = TRUE
	standalone_value_descriptors = list(
		"very short and split",
		"very short",
		"short",
		"long",
		"very long"
		)
	chargen_value_descriptors = list(
		"very short and split (Raskinta-Katish)" =  1,
		"very short (Kanin-Katish)" = 2,
		"short (Malish-Katish)" = 3,
		"long (Talum-Katish)" = 4,
		"very long (Qerr-Katish)" = 5
		)

/datum/appearance_descriptor/headtail_length/get_first_person_message_start()
	. = "Your headtails are"

/datum/appearance_descriptor/headtail_length/get_third_person_message_start(var/decl/pronouns/my_gender)
	. = "[my_gender.His] headtails are"
