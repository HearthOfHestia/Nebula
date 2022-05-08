/datum/map/endeavour
	// Unit test exemptions
	apc_test_exempt_areas = list(
		/area/ship/endeavour/maintenance = NO_SCRUBBER|NO_VENT,
		/area/space = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/exoplanet = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/ship/endeavour/science/network_closet = NO_SCRUBBER|NO_VENT,
		/area/ship/endeavour/engineering/substation = NO_SCRUBBER|NO_VENT,
		/area/ship/endeavour/engineering/utility_shaft = NO_SCRUBBER|NO_VENT,
		/area/ship/endeavour/security/weapons_bay/two = NO_APC,
		/area/ship/endeavour/engineering/fuel_bay/co2 = NO_SCRUBBER,
		/area/ship/endeavour/security/weapons_bay/three = NO_VENT|NO_SCRUBBER,
		/area/ship/endeavour/command/ofd = NO_SCRUBBER|NO_VENT,
		/area/shuttle/escape_pod_1 = NO_APC,
		/area/shuttle/escape_pod_2 = NO_APC,
		/area/shuttle/escape_pod_3 = NO_APC,
		/area/shuttle/escape_pod_4 = NO_APC
	)

/obj/abstract/map_data/endeavour
	height = 4
	UT_turf_exceptions_by_door_type = list(/obj/machinery/door/firedoor = list(/turf/simulated/open))
