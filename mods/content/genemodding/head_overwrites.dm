/obj/item/organ/external/head/get_hair_icon()
	var/image/res = ..()
	if(!owner.ear_style || (owner.head?.flags_inv & BLOCKHEADHAIR))
		return res
	var/icon/ears_icon = new/icon("icon" = owner.ear_style.icon, "icon_state" = owner.ear_style.icon_state)
	if(owner.ear_style.do_colouration)
		ears_icon.Blend(owner.ear_color, owner.ear_style.blend)
	if(owner.ear_style.extra_overlay)
		var/icon/overlay = new/icon("icon" = owner.ear_style.icon, "icon_state" = owner.ear_style.extra_overlay)
		overlay.Blend(owner.ear_color_extra, owner.ear_style.blend)
		ears_icon.Blend(overlay, ICON_OVERLAY)
		qdel(overlay)
	res.overlays |= ears_icon
	return res