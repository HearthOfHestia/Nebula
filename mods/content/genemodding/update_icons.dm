/mob/living/carbon/human/get_tail_icon()
	//If you don't have a custom tail selected
	if(!tail_style)
		return ..()

	// If you do
	var/icon_key
	if(tail_style.do_colouration)
		icon_key = "\ref[tail_style][tail_color][tail_color_extra]"
	else
		icon_key = any2ref(tail_style)
	var/icon/tail_icon = tail_icon_cache[icon_key]
	if(!tail_icon)
		tail_icon = icon(tail_style.icon, tail_style.icon_state)
		if(tail_style.do_colouration)
			tail_icon.Blend(tail_color, tail_style.blend)
		if(tail_style.extra_overlay)
			var/icon/overlay = icon(tail_style.icon, tail_style.extra_overlay)
			overlay.Blend(tail_color_extra, tail_style.blend)
			tail_icon.Blend(overlay, ICON_OVERLAY)
			qdel(overlay)
		tail_icon_cache[icon_key] = tail_icon

	return tail_icon