// Define a place to save appearance in character setup
/datum/preferences
	var/ear_style					// Type of selected ear style
	var/ear_color = "#1e1e1e"		// Ear color.
	var/ear_color_extra = "#1e1e1e"// Ear extra color.
	var/tail_style					// Type of selected tail style
	var/tail_color = "#1e1e1e"		// Tail color
	var/tail_color_extra = "#1e1e1e"// Tail overlay color

// Definition of the stuff for Ears
/datum/category_item/player_setup_item/physical/cosmetics
	name = "Cosmetics"
	sort_order = 5

/datum/category_item/player_setup_item/physical/cosmetics/load_character(datum/pref_record_reader/R)
	pref.ear_style = R.read("ear_style")
	pref.ear_color = R.read("ear_color")
	pref.ear_color_extra = R.read("ear_color_extra")
	pref.tail_style = R.read("tail_style")
	pref.tail_color = R.read("tail_color")
	pref.tail_color_extra = R.read("tail_color_extra")

/datum/category_item/player_setup_item/physical/cosmetics/save_character(datum/pref_record_writer/W)
	W.write("ear_style", pref.ear_style)
	W.write("ear_color", pref.ear_color)
	W.write("ear_color_extra", pref.ear_color_extra)
	W.write("tail_style", pref.tail_style)
	W.write("tail_color", pref.tail_color)
	W.write("tail_color_extra", pref.tail_color_extra)

/datum/category_item/player_setup_item/physical/cosmetics/sanitize_character()
	pref.ear_color =		pref.ear_color			|| COLOR_BLACK
	pref.ear_color_extra =	pref.ear_color_extra	|| COLOR_BLACK
	pref.tail_color =		pref.tail_color			|| COLOR_BLACK
	pref.tail_color_extra =	pref.tail_color_extra	|| COLOR_BLACK
	if(pref.ear_style)
		pref.ear_style	= sanitize_inlist(pref.ear_style, global.ear_styles_list, initial(pref.ear_style))
	if(pref.tail_style)
		pref.tail_style	= sanitize_inlist(pref.tail_style, global.tail_styles_list, initial(pref.tail_style))

/datum/preferences/copy_to(mob/living/carbon/human/character, is_preview_copy = FALSE)
	..()
	character.ear_style		= global.ear_styles_list[ear_style]
	character.ear_color		= ear_color
	character.ear_color_extra	= ear_color_extra
	character.tail_style		= global.tail_styles_list[tail_style]
	character.tail_color		= tail_color
	character.tail_color_extra	= tail_color_extra