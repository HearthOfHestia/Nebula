/mob/living/carbon/human/get_tail_icon(var/obj/item/organ/external/tail/tail_organ)
	// No parent call. This is a replacement, not a side-override.
	if(!istype(tail_organ))
		return
	var/icon_key = "[tail_organ.get_tail()][tail_organ.icon][tail_organ.get_tail_blend(src)][species.appearance_flags & HAS_SKIN_COLOR][skin_colour][tail_organ.get_tail_hair()][tail_organ.get_tail_hair_blend()][tail_organ.get_tail_hair_colour()]"
	var/icon/tail_icon = tail_icon_cache[icon_key]
	if(!tail_icon)
		//generate a new one
		var/tail_anim = tail_organ.get_tail_animation() || tail_organ.get_tail_icon()
		tail_icon = new/icon(tail_anim)
		if(species.appearance_flags & HAS_SKIN_COLOR)
			tail_icon.Blend(skin_colour, tail_organ.get_tail_blend(src))
		// The following will not work with animated tails.
		var/use_tail = tail_organ.get_tail_hair()
		if(use_tail)
			var/icon/hair_icon = icon(tail_organ.get_tail_icon(src), "[tail_organ.get_tail()]_[use_tail]")
			hair_icon.Blend(tail_organ.get_tail_hair_colour(), tail_organ.get_tail_hair_blend())
			tail_icon.Blend(hair_icon, ICON_OVERLAY)
		tail_icon_cache[icon_key] = tail_icon

	return tail_icon
