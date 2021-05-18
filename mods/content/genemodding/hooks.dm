var/list/tail_styles_list = list()	//stores /datum/sprite_accessory/ indexed by name
var/list/ear_styles_list = list()	//stores /datum/sprite_accessory/ears indexed by name

/hook/startup/proc/init_ears_tails_datums()
	//Tails.
	for(var/path in subtypesof(/datum/sprite_accessory/tail))
		var/datum/sprite_accessory/tail/H = new path()
		tail_styles_list[H.name] = H

	//Ears.
	for(var/path in subtypesof(/datum/sprite_accessory/ears))
		var/datum/sprite_accessory/ears/H = new path()
		ear_styles_list[H.name] = H

	return TRUE