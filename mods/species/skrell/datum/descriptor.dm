/datum/appearance_descriptor/headtail_length
	name = "headtail length"
	chargen_label = "headtails (gender)"
	skip_species_mention = TRUE
	standalone_value_descriptors = list(
		"short",
		"long"
		)
	chargen_value_descriptors = list(
		"short (male)" =  1,
		"long (female)" = 2
		)

/datum/appearance_descriptor/headtail_length/get_first_person_message_start()
	. = "Your headtails are"

/datum/appearance_descriptor/headtail_length/get_third_person_message_start(var/decl/pronouns/my_gender)
	. = "[my_gender.His] headtails are"

/datum/appearance_descriptor/headtail_length/get_comparative_value_string_equivalent(var/my_value, var/decl/pronouns/my_gender, var/decl/pronouns/other_gender)
	. = "indicating [other_gender.he] [other_gender.is] [my_value == 1 ? "male" : "female"] like you"

/datum/appearance_descriptor/headtail_length/get_comparative_value_string_smaller(var/value, var/decl/pronouns/my_gender, var/decl/pronouns/other_gender)
	. = "indicating [other_gender.he] [other_gender.is] male"

/datum/appearance_descriptor/headtail_length/get_comparative_value_string_larger(var/value, var/decl/pronouns/my_gender, var/decl/pronouns/other_gender)
	. = "indicating [other_gender.he] [other_gender.is] female"
