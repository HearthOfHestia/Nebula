/mob
    /// Wether the mob is currently pixel shifted or not
    var/is_shifted
    /// If the mob is currently pixel shifting
    var/shifting

/mob/proc/unpixel_shift()
    return

/mob/living/unpixel_shift()
    if(is_shifted)
        is_shifted = FALSE
        pixel_x = initial(pixel_x)
        pixel_y = initial(pixel_y)

/mob/proc/pixel_shift(direction)
    return

/mob/living/pixel_shift(direction)
	switch(direction)
		if(NORTH)
			if(!canface())
				return FALSE
			if(pixel_y <= 16)
				pixel_y++
				is_shifted = TRUE
		if(EAST)
			if(!canface())
				return FALSE
			if(pixel_x <= 16)
				pixel_x++
				is_shifted = TRUE
		if(SOUTH)
			if(!canface())
				return FALSE
			if(pixel_y >= -16)
				pixel_y--
				is_shifted = TRUE
		if(WEST)
			if(!canface())
				return FALSE
			if(pixel_x >= -16)
				pixel_x--
				is_shifted = TRUE
