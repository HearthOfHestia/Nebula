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
	var/list/ear_styles = decls_repository.get_decls_of_subtype(/decl/sprite_accessory/ears)
	var/list/tail_styles = decls_repository.get_decls_of_subtype(/decl/sprite_accessory/tail)
	var/ear_style_name = R.read("ear_style_name")
	for(var/ear_type in ear_styles)
		var/decl/sprite_accessory/ears/ear = GET_DECL(ear_type)
		if(ear.name != ear_style_name)
			continue
		pref.ear_style = ear_type
	pref.ear_color = R.read("ear_color")
	pref.ear_color_extra = R.read("ear_color_extra")
	var/tail_style_name = R.read("tail_style_name")
	for(var/tail_type in tail_styles)
		var/decl/sprite_accessory/tail/tail = GET_DECL(tail_type)
		if(tail.name != tail_style_name)
			continue
		pref.tail_style = tail_type
	pref.tail_color = R.read("tail_color")
	pref.tail_color_extra = R.read("tail_color_extra")

/datum/category_item/player_setup_item/physical/cosmetics/save_character(datum/pref_record_writer/W)
	var/decl/sprite_accessory/ears/ear = GET_DECL(pref.ear_style)
	W.write("ear_style_name", ear?.name)
	W.write("ear_style", pref.ear_style)
	W.write("ear_color", pref.ear_color)
	W.write("ear_color_extra", pref.ear_color_extra)
	var/decl/sprite_accessory/tail/tail = GET_DECL(pref.tail_style)
	W.write("tail_style_name", tail?.name)
	W.write("tail_color", pref.tail_color)
	W.write("tail_color_extra", pref.tail_color_extra)


/datum/category_item/player_setup_item/physical/cosmetics/sanitize_character()
	pref.ear_color =		pref.ear_color			|| COLOR_BLACK
	pref.ear_color_extra =	pref.ear_color_extra	|| COLOR_BLACK
	pref.tail_color =		pref.tail_color			|| COLOR_BLACK
	pref.tail_color_extra =	pref.tail_color_extra	|| COLOR_BLACK
	if(pref.ear_style)
		pref.ear_style	= sanitize_inlist(pref.ear_style, decls_repository.get_decls_of_subtype(/decl/sprite_accessory/ears), initial(pref.ear_style))
	if(pref.tail_style)
		pref.tail_style	= sanitize_inlist(pref.tail_style, decls_repository.get_decls_of_subtype(/decl/sprite_accessory/tail), initial(pref.tail_style))

/mob/living/carbon/human/proc/sync_tail_to_style(var/decl/sprite_accessory/tail/tail_style, var/tail_color, var/tail_color_extra)
	var/obj/item/organ/external/tail/tail_organ = get_organ(BP_TAIL)
	if(!tail_style)
		if(!tail_organ)
			return
		qdel(tail_organ)
		var/list/tail_data = LAZYACCESS(species?.has_limbs, BP_TAIL)
		var/tail_path = LAZYACCESS(tail_data, "path")
		if(!tail_path)
			return
		tail_organ = new tail_path(src)
		tail_organ.owner = src
		return
	if(!tail_organ)
		tail_organ = new(src)
		tail_organ.owner = src
		// everything with adding the tail organ will be handled in its Initialize
	tail_organ.tail_icon = tail_style.icon
	tail_organ.tail = tail_style.icon_state
	if(tail_style.do_colouration)
		tail_organ.tail_colour = tail_color
		tail_organ.tail_hair_colour = tail_color_extra
		tail_organ.tail_blend = tail_style.blend
		tail_organ.tail_hair_blend = tail_style.blend
	else
		tail_organ.tail_colour = null
		tail_organ.tail_hair_colour = null
		tail_organ.tail_blend = null
		tail_organ.tail_hair_blend = null
	if(tail_style.extra_overlay)
		tail_organ.tail_hair = tail_style.extra_overlay
	else
		tail_organ.tail_hair = null

/datum/preferences/copy_to(mob/living/carbon/human/character, is_preview_copy = FALSE)
	. = ..() // must be after species and such are set
	var/list/ear_styles = decls_repository.get_decls_of_subtype(/decl/sprite_accessory/ears)
	var/list/tail_styles = decls_repository.get_decls_of_subtype(/decl/sprite_accessory/tail)
	character.ear_style = ear_styles[ear_style]
	character.ear_color = ear_color
	character.ear_color_extra = ear_color_extra
	character.sync_tail_to_style(tail_styles[tail_style], tail_color, tail_color_extra)