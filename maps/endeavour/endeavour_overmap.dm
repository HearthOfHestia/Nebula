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
	burn_delay = 2 SECONDS
	sector_flags = OVERMAP_SECTOR_BASE | OVERMAP_SECTOR_IN_SPACE

	initial_restricted_waypoints = list(
		"Perseverance" = list("endeavour_hangar"), //pod can only dock starboard-side, b/c there's only one door.
	)

	initial_generic_waypoints = list(
		"nav_endeavour_near_bow_third",
		"nav_endeavour_near_bow_bridge"
	)

/obj/effect/overmap/visitable/sector/supply_station
	name = "Automated Supply Station"
	desc = "A supply station. These are usually deployed en-masse for the occasional explorer to resupply at."
	color = "#00ffff"
	start_x = 4
	start_y = 4
	initial_generic_waypoints = list("nav_supply_station_1")
	color = "#d6a724"

/obj/effect/overmap/visitable/sector/supply_station/Initialize()
	name = "Automated Supply Station [rand(1,999)] - [docking_codes]"
	. = ..()
