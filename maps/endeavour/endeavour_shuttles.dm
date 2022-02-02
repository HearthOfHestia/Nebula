#define ESCAPE_POD(NUMBER) \
/datum/shuttle/autodock/ferry/escape_pod/pod##NUMBER { \
	shuttle_area = /area/shuttle/escape_pod_##NUMBER; \
	name = "Escape Pod " + #NUMBER; \
	dock_target = "escape_pod_" + #NUMBER; \
	arming_controller = "escape_pod_"+ #NUMBER +"_berth"; \
	waypoint_station = "escape_pod_"+ #NUMBER +"_start"; \
	landmark_transition = "escape_pod_"+ #NUMBER +"_transit"; \
	waypoint_offsite = "escape_pod_"+ #NUMBER +"_out"; \
} \
/obj/effect/shuttle_landmark/escape_pod/start/pod##NUMBER { \
	landmark_tag = "escape_pod_"+ #NUMBER +"_start"; \
	docking_controller = "escape_pod_"+ #NUMBER +"_berth"; \
	base_turf = /turf/simulated/floor/reinforced/airless; \
} \
/obj/effect/shuttle_landmark/escape_pod/transit/pod##NUMBER { \
	landmark_tag = "escape_pod_"+ #NUMBER +"_transit"; \
} \
/obj/effect/shuttle_landmark/escape_pod/out/pod##NUMBER { \
	landmark_tag = "escape_pod_"+ #NUMBER +"_out"; \
} \
/area/shuttle/escape_pod_##NUMBER { \
	name = "Escape Pod ##NUMBER"; \
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT; \
}

ESCAPE_POD(1)
ESCAPE_POD(2)
ESCAPE_POD(3)
ESCAPE_POD(4)

/obj/machinery/computer/shuttle_control/explore/perseverance
	name = "salvage shuttle control console"
	shuttle_tag = "Perseverance"

/datum/shuttle/autodock/overmap/perseverance
	name = "Perseverance"
	shuttle_area = list(/area/ship/endeavour/shuttle/perseverance/cockpit,/area/ship/endeavour/shuttle/perseverance/passenger, /area/ship/endeavour/shuttle/perseverance/cargo, /area/ship/endeavour/shuttle/perseverance/maint)
	dock_target = "perseverancedocking"
	current_location = "endeavour_hangar"
	ceiling_type = /turf/simulated/floor/shuttle_ceiling
	warmup_time = 5
	range = 1
	fuel_consumption = 7
	skill_needed = SKILL_BASIC

/obj/effect/overmap/visitable/ship/landable/salvage
	name = "Perseverance"
	desc = "A small, slow salvage shuttle."
	shuttle = "Perseverance"
	fore_dir = NORTH
	vessel_size = SHIP_SIZE_SMALL

/obj/effect/shuttle_landmark/hangar
	name = "Endeavour Hangar"
	landmark_tag = "endeavour_hangar"

/obj/effect/shuttle_landmark/near_bow_third
	name = "Near Endeavour Bow Third Deck"
	landmark_tag = "nav_endeavour_near_bow_third"

/obj/effect/shuttle_landmark/near_bow_bridge
	name = "Near Endeavour Bow Bridge Deck"
	landmark_tag = "nav_endeavour_near_bow_bridge"

/* // TODO: PORT THE SPIRIT FROM THE OLD SHIP
// RENAME TO CURIOSITY
/datum/shuttle/autodock/overmap/exploration_shuttle
	name = "Spirit"
	move_time = 90
	shuttle_area = list(/area/exploration_shuttle/cockpit, /area/exploration_shuttle/atmos, /area/exploration_shuttle/power, /area/exploration_shuttle/crew, /area/exploration_shuttle/cargo, /area/exploration_shuttle/airlock)
	dock_target = "spirit_shuttle"
	current_location = "nav_hangar_spirit"
	landmark_transition = "nav_transit_spirit"
	range = 1
	fuel_consumption = 4
	logging_home_tag = "nav_hangar_spirit"
	logging_access = access_expedition_shuttle_helm
	ceiling_type = /turf/simulated/floor/shuttle_ceiling

/obj/effect/shuttle_landmark/endeavour/hangar/exploration_shuttle
	name = "Spirit Hangar"
	landmark_tag = "nav_hangar_spirit"
	base_area = /area/quartermaster/hangar
	base_turf = /turf/simulated/floor/hangar
*/

/datum/shuttle/autodock/ferry/supply/lift
	name = "Supply Lift"
	warmup_time = 10
	location = 1
	shuttle_area = /area/supply
	waypoint_offsite = "nav_cargo_start"
	waypoint_station = "nav_cargo_station"
	sound_takeoff = 'sound/effects/lift_heavy_start.ogg'
	sound_landing = 'sound/effects/lift_heavy_stop.ogg'

/obj/effect/shuttle_landmark/supply/start
	landmark_tag ="nav_cargo_start"

/obj/effect/shuttle_landmark/supply/station
	landmark_tag = "nav_cargo_station"
	base_area = /area/supply_station
	base_turf = /turf/simulated/floor/plating

/obj/effect/shuttle_landmark/nav_supply_station/nav1
	name = "Automated Supply Station Navpoint #1"
	landmark_tag = "nav_supply_station_1"
	docking_controller = "ts_big_airlock"
