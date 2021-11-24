/datum/keybinding/mob/pixel_shift
	hotkey_keys = list("Alt")
	name = "pixel_shifting"
	full_name = "Pixel shift"
	description = "Hold this down to pixel shift the icon of your current mob."

/datum/keybinding/mob/pixel_shift/down(client/user)
	var/mob/client_mob = user.mob
	client_mob.shifting = TRUE
	return TRUE

/datum/keybinding/mob/pixel_shift/up(client/user)
	var/mob/client_mob = user.mob
	client_mob.shifting = FALSE
	return TRUE
