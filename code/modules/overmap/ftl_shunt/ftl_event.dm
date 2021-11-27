/datum/event/ftl
	has_skybox_image = TRUE
	endWhen = INFINITY
	var/static/lightning_color
	var/static/background_color

/datum/event/ftl/get_skybox_image()
	if(!background_color)
		background_color = pick(COLOR_BLUE, COLOR_BLUE_GRAY, COLOR_BLUE_LIGHT, COLOR_CYAN, COLOR_CYAN_BLUE, COLOR_NAVY_BLUE)
	if(!lightning_color)
		lightning_color = pick("#ffd98c", "#ebc7ff", "#bdfcff", "#bdd2ff", "#b0ffca", "#ff8178", "#ad74cc")
	var/image/res = overlay_image('icons/skybox/ftlbox.dmi', "ftl", lightning_color, RESET_COLOR)
	var/image/res_2 = overlay_image('icons/skybox/electrobox.dmi', "lightning", lightning_color, RESET_COLOR)
	res.overlays += res_2
	res_2.blend_mode = BLEND_ADD
	res.blend_mode = BLEND_OVERLAY
	return res
