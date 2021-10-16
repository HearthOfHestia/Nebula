/obj/item/organ/external/tail
	var/tail_hair_colour

/obj/item/organ/external/tail/proc/get_tail_hair_colour()
	return tail_hair_colour || hair_colour
