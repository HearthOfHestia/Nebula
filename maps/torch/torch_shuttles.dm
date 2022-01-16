//Some helpers because so much copypasta for pods
/datum/shuttle/autodock/ferry/escape_pod/torchpod
	category = /datum/shuttle/autodock/ferry/escape_pod/torchpod
	sound_takeoff = 'sound/effects/rocket.ogg'
	sound_landing = 'sound/effects/rocket_backwards.ogg'
	warmup_time = 10

/obj/effect/shuttle_landmark/escape_pod/start
	name = "Docked"
	base_turf = /turf/simulated/floor/reinforced/airless

/obj/effect/shuttle_landmark/escape_pod/transit
	name = "In transit"

/obj/effect/shuttle_landmark/escape_pod/out
	name = "Escaped"

//Pods
#define TORCH_ESCAPE_POD(NUMBER) \
/datum/shuttle/autodock/ferry/escape_pod/torchpod/escape_pod##NUMBER { \
	shuttle_area = /area/shuttle/escape_pod##NUMBER/station; \
	name = "Escape Pod " + #NUMBER; \
	dock_target = "escape_pod_" + #NUMBER; \
	arming_controller = "escape_pod_"+ #NUMBER +"_berth"; \
	waypoint_station = "escape_pod_"+ #NUMBER +"_start"; \
	landmark_transition = "escape_pod_"+ #NUMBER +"_internim"; \
	waypoint_offsite = "escape_pod_"+ #NUMBER +"_out"; \
} \
/obj/effect/shuttle_landmark/escape_pod/start/pod##NUMBER { \
	landmark_tag = "escape_pod_"+ #NUMBER +"_start"; \
	docking_controller = "escape_pod_"+ #NUMBER +"_berth"; \
} \
/obj/effect/shuttle_landmark/escape_pod/out/pod##NUMBER { \
	landmark_tag = "escape_pod_"+ #NUMBER +"_internim"; \
} \
/obj/effect/shuttle_landmark/escape_pod/transit/pod##NUMBER { \
	landmark_tag = "escape_pod_"+ #NUMBER +"_out"; \
}

TORCH_ESCAPE_POD(6)
TORCH_ESCAPE_POD(7)
TORCH_ESCAPE_POD(8)
TORCH_ESCAPE_POD(9)
TORCH_ESCAPE_POD(10)
TORCH_ESCAPE_POD(11)
TORCH_ESCAPE_POD(12)
TORCH_ESCAPE_POD(13)
TORCH_ESCAPE_POD(15)
TORCH_ESCAPE_POD(16)
TORCH_ESCAPE_POD(17)
TORCH_ESCAPE_POD(18)
TORCH_ESCAPE_POD(19)

//Ninja Shuttle.
/datum/shuttle/autodock/multi/antag/ninja
	destination_tags = list(
		"nav_ninja_deck1",
		"nav_ninja_deck2",
		"nav_ninja_deck3",
		"nav_ninja_deck4",
		"nav_ninja_deck5",
		"nav_ninja_hanger",
		"nav_away_6",
		"nav_derelict_5",
		"nav_cluster_6",
		"nav_ninja_start",
		"nav_lost_supply_base_antag",
		"nav_marooned_antag",
		"nav_smugglers_antag",
		"nav_magshield_antag",
		"nav_casino_antag",
		"nav_yacht_antag",
		"nav_slavers_base_antag",
		"nav_particle_accelerator_antag",
		)

/obj/effect/shuttle_landmark/ninja/hanger
	name = "West of Hanger Deck"
	landmark_tag = "nav_ninja_hanger"

/obj/effect/shuttle_landmark/ninja/deck1
	name = "South of First Deck"
	landmark_tag = "nav_ninja_deck1"

/obj/effect/shuttle_landmark/ninja/deck2
	name = "Northeast of Second Deck"
	landmark_tag = "nav_ninja_deck2"

/obj/effect/shuttle_landmark/ninja/deck3
	name = "East of Third Deck"
	landmark_tag = "nav_ninja_deck3"

/obj/effect/shuttle_landmark/ninja/deck4
	name = "West of Fourth Deck"
	landmark_tag = "nav_ninja_deck4"

/obj/effect/shuttle_landmark/ninja/deck5
	name = "Southeast of Bridge"
	landmark_tag = "nav_ninja_deck5"

//Merchant

/datum/shuttle/autodock/ferry/merchant
	name = "Merchant"
	warmup_time = 10
	shuttle_area = /area/shuttle/merchant/home
	waypoint_station = "nav_merchant_start"
	waypoint_offsite = "nav_merchant_out"
	dock_target = "merchant_ship_dock"

/obj/effect/shuttle_landmark/merchant/start
	name = "Merchant Base"
	landmark_tag = "nav_merchant_start"
	docking_controller = "merchant_station_dock"

/obj/effect/shuttle_landmark/merchant/out
	name = "Docking Bay"
	landmark_tag = "nav_merchant_out"
	docking_controller = "merchant_shuttle_station_dock"

//Admin

/datum/shuttle/autodock/ferry/administration
	name = "Administration"
	warmup_time = 10	//want some warmup time so people can cancel.
	shuttle_area = /area/shuttle/administration/centcom
	dock_target = "admin_shuttle"
	waypoint_station = "nav_admin_start"
	waypoint_offsite = "nav_admin_out"

/obj/effect/shuttle_landmark/admin/start
	name = "Centcom"
	landmark_tag = "nav_admin_start"
	docking_controller = "admin_shuttle"
	base_area = /area/centcom
	base_turf = /turf/simulated/floor/plating

/obj/effect/shuttle_landmark/admin/out
	name = "Docking Bay"
	landmark_tag = "nav_admin_out"
	docking_controller = "admin_shuttle_dock_airlock"

//Transport

/obj/effect/shuttle_landmark/merc/hanger
	name = "Northeast of Hanger Deck"
	landmark_tag = "nav_merc_hanger"

/obj/effect/shuttle_landmark/merc/deck1
	name = "Northeast of First Deck"
	landmark_tag = "nav_merc_deck1"

/obj/effect/shuttle_landmark/merc/deck2
	name = "Southeast of the Second deck"
	landmark_tag = "nav_merc_deck2"

/obj/effect/shuttle_landmark/merc/deck3
	name = "South of Third deck"
	landmark_tag = "nav_merc_deck3"

/obj/effect/shuttle_landmark/merc/deck4
	name = "Northwest of Fourth Deck"
	landmark_tag = "nav_merc_deck4"

/obj/effect/shuttle_landmark/merc/deck5
	name = "East of Bridge"
	landmark_tag = "nav_merc_deck5"

//Skipjack
/datum/shuttle/autodock/multi/antag/skipjack
	destination_tags = list(
		"nav_skipjack_deck1",
		"nav_skipjack_deck2",
		"nav_skipjack_deck3",
		"nav_skipjack_deck4",
		"nav_skipjack_deck5",
		"nav_skipjack_hanger",
		"nav_away_7",
		"nav_derelict_7",
		"nav_cluster_7",
		"nav_skipjack_dock",
		"nav_skipjack_start",
		"nav_lost_supply_base_antag",
		"nav_marooned_antag",
		"nav_smugglers_antag",
		"nav_magshield_antag",
		"nav_casino_antag",
		"nav_yacht_antag",
		"nav_slavers_base_antag",
		"nav_particle_accelerator_antag",
		)

/obj/effect/shuttle_landmark/skipjack/hanger
	name = "North of Hanger Deck"
	landmark_tag = "nav_skipjack_hanger"

/obj/effect/shuttle_landmark/skipjack/deck1
	name = "Northwest of First Deck"
	landmark_tag = "nav_skipjack_deck1"

/obj/effect/shuttle_landmark/skipjack/deck2
	name = "Southwest of the Second deck"
	landmark_tag = "nav_skipjack_deck2"

/obj/effect/shuttle_landmark/skipjack/deck3
	name = "Southeast of Third deck"
	landmark_tag = "nav_skipjack_deck3"

/obj/effect/shuttle_landmark/skipjack/deck4
	name = "Northwest of Fourth Deck"
	landmark_tag = "nav_skipjack_deck4"

/obj/effect/shuttle_landmark/skipjack/deck5
	name = "South of Bridge"
	landmark_tag = "nav_skipjack_deck5"

//NT Rescue Shuttle

/datum/shuttle/autodock/multi/antag/rescue
	destination_tags = list(
		"nav_ert_deck1",
		"nav_ert_deck2",
		"nav_ert_deck3",
		"nav_ert_deck4",
		"nav_ert_deck5",
		"nav_ert_hanger",
		"nav_away_4",
		"nav_derelict_4",
		"nav_cluster_4",
		"nav_ert_dock",
		"nav_ert_start",
		"nav_lost_supply_base_antag",
		"nav_marooned_antag",
		"nav_smugglers_antag",
		"nav_magshield_antag",
		"nav_casino_antag",
		"nav_yacht_antag",
		"nav_slavers_base_antag",
		"nav_particle_accelerator_antag",
		)

/obj/effect/shuttle_landmark/ert/hanger
	name =  "Southeast of Hanger deck"
	landmark_tag = "nav_ert_hanger"

/obj/effect/shuttle_landmark/ert/deck1
	name =  "Southwest of Fourth deck"
	landmark_tag = "nav_ert_deck1"

/obj/effect/shuttle_landmark/ert/deck2
	name = "Northwest of Third deck"
	landmark_tag = "nav_ert_deck2"

/obj/effect/shuttle_landmark/ert/deck3
	name = "Northwest of Second deck"
	landmark_tag = "nav_ert_deck3"

/obj/effect/shuttle_landmark/ert/deck4
	name = "Southwest of First Deck"
	landmark_tag = "nav_ert_deck4"

/obj/effect/shuttle_landmark/ert/deck5
	name = "West of Bridge"
	landmark_tag = "nav_ert_deck5"

//Cargo drone

/datum/shuttle/autodock/ferry/supply/drone
	name = "Supply Drone"
	location = 1
	warmup_time = 10
	shuttle_area = /area/supply/dock
	dock_target = "supply_shuttle"
	waypoint_offsite = "nav_cargo_start"
	waypoint_station = "nav_cargo_station"

/obj/effect/shuttle_landmark/supply/centcom
	name = "Offsite"
	docking_controller = "cargo_bay_centcom"
	landmark_tag = "nav_cargo_start"

/obj/effect/shuttle_landmark/supply/station
	name = "Hangar"
	landmark_tag = "nav_cargo_station"
	docking_controller = "endeavour_dock"
	base_turf = /turf/simulated/floor/reinforced/airless

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
	ceiling_type = /turf/simulated/floor/shuttle_ceiling/torch

/obj/effect/shuttle_landmark/torch/hangar/exploration_shuttle
	name = "Spirit Hangar"
	landmark_tag = "nav_hangar_spirit"
	base_area = /area/quartermaster/hangar
	base_turf = /turf/simulated/floor/hangar

/obj/effect/shuttle_landmark/torch/deck1/exploration_shuttle
	name = "Space near Forth Deck"
	landmark_tag = "nav_deck1_spirit"

/obj/effect/shuttle_landmark/torch/deck2/exploration_shuttle
	name = "Space near Third Deck"
	landmark_tag = "nav_deck2_spirit"

/obj/effect/shuttle_landmark/torch/deck3/exploration_shuttle
	name = "Space near Second Deck"
	landmark_tag = "nav_deck3_spirit"

/obj/effect/shuttle_landmark/torch/deck4/exploration_shuttle
	name = "Space near First Deck"
	landmark_tag = "nav_deck4_spirit"

/obj/effect/shuttle_landmark/torch/deck5/exploration_shuttle
	name = "Space near Bridge"
	landmark_tag = "nav_bridge_spirit"

/obj/effect/shuttle_landmark/transit/torch/exploration_shuttle
	name = "In transit"
	landmark_tag = "nav_transit_spirit"

/datum/shuttle/autodock/overmap/opportunity
	name = "Opportunity"
	warmup_time = 5
	move_time = 30
	shuttle_area = /area/opportunity_hangar/start
	dock_target ="opportunity_shuttle"
	current_location = "nav_hangar_opportunity"
	landmark_transition = "nav_transit_opportunity"
	sound_takeoff = 'sound/effects/rocket.ogg'
	sound_landing = 'sound/effects/rocket_backwards.ogg'
	dock_target = "opportunity_shuttle"
	fuel_consumption = 2
	logging_home_tag = "nav_hangar_opportunity"
	logging_access = access_opportunity_helm
	skill_needed = SKILL_NONE
	ceiling_type = /turf/simulated/floor/shuttle_ceiling/torch

/obj/effect/shuttle_landmark/torch/hangar/opportunity
	name = "Opportunity Hangar"
	landmark_tag = "nav_hangar_opportunity"
	base_area = /area/quartermaster/hangar
	base_turf = /turf/simulated/floor/hangar/glass

/obj/effect/shuttle_landmark/torch/deck1/opportunity
	name = "Space near Forth Deck"
	landmark_tag = "nav_deck1_opportunity"

/obj/effect/shuttle_landmark/torch/deck2/opportunity
	name = "Space near Third Deck"
	landmark_tag = "nav_deck2_opportunity"

/obj/effect/shuttle_landmark/torch/deck3/opportunity
	name = "Space near Second Deck"
	landmark_tag = "nav_deck3_opportunity"

/obj/effect/shuttle_landmark/torch/deck4/opportunity
	name = "Space near First Deck"
	landmark_tag = "nav_deck4_opportunity"

/obj/effect/shuttle_landmark/torch/deck5/opportunity
	name = "Space near Bridge"
	landmark_tag = "nav_bridge_opportunity"

/obj/effect/shuttle_landmark/transit/torch/opportunity
	name = "In transit"
	landmark_tag = "nav_transit_opportunity"

/datum/shuttle/autodock/overmap/perseverance
	name = "Perseverance"
	move_time = 60
	shuttle_area = list(/area/perseverance/cockpit, /area/perseverance/maintenance, /area/perseverance/storage, /area/perseverance/secure_storage, /area/perseverance/mess, /area/perseverance/passenger, /area/perseverance/medical, /area/perseverance/head, /area/perseverance/airlock)
	current_location = "nav_hangar_perseverance"
	landmark_transition = "nav_transit_perseverance"
	dock_target = "perseverance_shuttle"
	range = 2
	logging_home_tag = "nav_hangar_perseverance"
	logging_access = access_perseverance_helm
	ceiling_type = /turf/simulated/floor/shuttle_ceiling/torch

/obj/effect/shuttle_landmark/torch/hangar/perseverance
	name = "Perseverance Hangar"
	landmark_tag = "nav_hangar_perseverance"
	docking_controller = "perseverance_shuttle_dock_airlock"
	base_turf = /turf/simulated/floor/reinforced/airless

/obj/effect/shuttle_landmark/torch/deck1/perseverance
	name = "Space near Forth Deck"
	landmark_tag = "nav_deck1_perseverance"

/obj/effect/shuttle_landmark/torch/deck2/perseverance
	name = "Space near Third Deck"
	landmark_tag = "nav_deck2_perseverance"

/obj/effect/shuttle_landmark/torch/deck3/perseverance
	name = "Space near Second Deck"
	landmark_tag = "nav_deck3_perseverance"

/obj/effect/shuttle_landmark/torch/deck4/perseverance
	name = "Space near First Deck"
	landmark_tag = "nav_deck4_perseverance"

/obj/effect/shuttle_landmark/torch/deck5/perseverance
	name = "Space near Bridge"
	landmark_tag = "nav_bridge_perseverance"

/obj/effect/shuttle_landmark/transit/torch/perseverance
	name = "In transit"
	landmark_tag = "nav_transit_perseverance"

/datum/shuttle/autodock/overmap/curiosity
	name = "Curiosity"
	warmup_time = 5
	move_time = 30
	shuttle_area = /area/curiosity_hangar/start
	dock_target ="curiosity"
	current_location = "nav_hangar_curiosity"
	landmark_transition = "nav_transit_curiosity"
	sound_takeoff = 'sound/effects/rocket.ogg'
	sound_landing = 'sound/effects/rocket_backwards.ogg'
	fuel_consumption = 2
	logging_home_tag = "nav_hangar_curiosity"
	logging_access = access_curiosity_helm
	skill_needed = SKILL_NONE
	ceiling_type = /turf/simulated/floor/shuttle_ceiling/torch

/obj/effect/shuttle_landmark/torch/hangar/curiosity
	name = "Curiosity Hangar"
	landmark_tag = "nav_hangar_curiosity"
	base_turf = /turf/simulated/floor/hangar/glass
	base_area = /area/quartermaster/hangar

/obj/effect/shuttle_landmark/torch/transit/curiosity
	name = "Curiosity Transit Point"
	landmark_tag = "nav_transit_curiosity"

/obj/effect/shuttle_landmark/torch/deck2/perseverance
	name = "Space near Third Deck"
	landmark_tag = "nav_deck2_perseverance"

