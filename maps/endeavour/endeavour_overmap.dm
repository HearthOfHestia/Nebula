/datum/map/endeavour
	overmap_ids = list(OVERMAP_ID_SPACE = /datum/overmap/endeavour)

/datum/overmap/endeavour
	event_areas = 34
	map_size_x = 35
	map_size_y = 35

/obj/effect/overmap/visitable/ship/endeavour
	name = "ISEO Endeavour"
	desc = "A converted ex-military ship broadcasting the codes, \"ISEO Endeavour, HSC-4-13-X\"."
	fore_dir = WEST
	vessel_mass = 100000
	burn_delay = 2 SECONDS
	sector_flags = OVERMAP_SECTOR_BASE | OVERMAP_SECTOR_IN_SPACE

	initial_restricted_waypoints = list(
		// TODO: ADD SHIP STARTING WAYPOINTS
	)

	initial_generic_waypoints = list(
        // TODO: ADD ENDEAVOUR WAYPOINTS
	)

/obj/effect/overmap/visitable/sector/residue
	name = "Space-time Distortion"
	desc = "Trace radiation emanating from this sector is consistent with the aftermath of a superluminal jump."
	icon_state = "event"
	sector_flags = OVERMAP_SECTOR_KNOWN
