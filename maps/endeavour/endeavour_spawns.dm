var/global/list/latejoin_cryo_two = list()
/obj/abstract/landmark/latejoin/cryo_two/add_loc()
	global.latejoin_cryo_two |= get_turf(src)

/datum/map/endeavour
	allowed_spawns = list(/decl/spawnpoint/cryo, /decl/spawnpoint/cryo/two)
	default_spawn = /decl/spawnpoint/cryo

/decl/spawnpoint/cryo
	name = "Third Deck Cryogenic Storage"
	msg = "has completed revival in the Third Deck cryogenics bay"

/decl/spawnpoint/cryo/two
	name = "First Deck Cryogenic Storage"
	msg = "has completed revival in the First Deck cryogenics bay"

/decl/spawnpoint/cryo/two/Initialize()
	. = ..()
	turfs = global.latejoin_cryo_two