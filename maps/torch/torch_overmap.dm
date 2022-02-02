/datum/map/torch
	overmap_ids = list(OVERMAP_ID_SPACE = /datum/overmap/torch) // must be here, not in torch_define.dm

/datum/overmap/torch
	event_areas = 34
	map_size_x = 35
	map_size_y = 35

/obj/effect/overmap/visitable/ship/torch
	name = "ISEO Endeavour"
	desc = "A converted ex-military ship broadcasting the codes, \"ISEO Endeavour, HSC-4-13-X\"."
	fore_dir = WEST
	burn_delay = 2 SECONDS
	sector_flags = OVERMAP_SECTOR_BASE | OVERMAP_SECTOR_IN_SPACE
	//base = TRUE

	initial_restricted_waypoints = list(
		/datum/shuttle/autodock/overmap/exploration_shuttle = list("nav_hangar_spirit"),
		/datum/shuttle/autodock/overmap/opportunity = list("nav_hangar_opportunity"),
		/datum/shuttle/autodock/overmap/perseverance = list("nav_hangar_perseverance"),
		/datum/shuttle/autodock/overmap/curiosity = list("nav_hangar_curiosity")
	)

	initial_generic_waypoints = list(
		//start Bridge Deck
		"nav_merc_deck5",
		"nav_ninja_deck5",
		"nav_skipjack_deck5",
		"nav_ert_deck5",
		"nav_bridge_spirit",
		"nav_bridge_opportunity",
		"nav_bridge_perseverance",

		//start First Deck
		"nav_merc_deck1",
		"nav_ninja_deck1",
		"nav_skipjack_deck1",
		"nav_ert_deck4",
		"nav_deck4_spirit",
		"nav_deck4_opportunity",
		"nav_deck4_perseverance",

		//start Second Deck
		"nav_merc_deck2",
		"nav_ninja_deck2",
		"nav_skipjack_deck2",
		"nav_ert_deck3",
		"nav_deck3_spirit",
		"nav_deck3_opportunity",
		"nav_deck3_perseverance",

		//start Third Deck
		"nav_merc_deck3",
		"nav_ninja_deck3",
		"nav_skipjack_deck3",
		"nav_ert_deck2",
		"nav_deck2_spirit",
		"nav_deck2_opportunity",
		"nav_deck2_perseverance",

		//start Forth Deck
		"nav_merc_deck4",
		"nav_ninja_deck4",
		"nav_skipjack_deck4",
		"nav_ert_deck1",
		"nav_deck1_spirit",
		"nav_deck1_opportunity",
		"nav_deck1_perseverance",

		//start Hanger Deck
		"nav_merc_hanger",
		"nav_ninja_hanger",
		"nav_skipjack_hanger",
		"nav_ert_hanger",
		"nav_skrellscoutsh_altdock"
	)

/obj/effect/overmap/visitable/ship/landable/exploration_shuttle
	name = "Spirit"
	desc = "An SSE-U11 long range shuttle, broadcasting ISEO codes and the callsign \"Endeavour-2 Spirit\"."
	shuttle = "Spirit"
	max_speed = 1/(2 SECONDS)
	burn_delay = 1 SECONDS
	fore_dir = NORTH
	skill_needed = SKILL_BASIC
	vessel_size = SHIP_SIZE_SMALL

/obj/effect/overmap/visitable/ship/landable/perseverance
	name = "Perseverance"
	desc = "A PM-24 modular transport, broadcasting ISEO codes and the callsign \"Endeavour-1 Perseverance\"."
	shuttle = "Perseverance"
	max_speed = 1/(1 SECONDS)
	burn_delay = 0.5 SECONDS //spammable, but expensive
	fore_dir = NORTH
	vessel_size = SHIP_SIZE_SMALL

/obj/effect/overmap/visitable/ship/landable/opportunity
	name = "Opportunity"
	desc = "An SSE-U3 utility pod, broadcasting ISEO codes and the callsign \"Endeavour-3 Opportunity\"."
	shuttle = "Opportunity"
	max_speed = 1/(3 SECONDS)
	burn_delay = 2 SECONDS
	fore_dir = SOUTH
	skill_needed = SKILL_BASIC
	vessel_size = SHIP_SIZE_TINY

/obj/effect/overmap/visitable/ship/landable/curiosity
	name = "Curiosity"
	desc = "A C.A.M.P.E.R.V.A.N Pod broadcasting ISEO codes and the callsign \"Endeavour-5 Curiosity\"."
	shuttle = "Curiosity"
	max_speed = 1/(3 SECONDS)
	burn_delay = 2 SECONDS
	fore_dir = SOUTH
	skill_needed = SKILL_BASIC
	vessel_size = SHIP_SIZE_TINY

/obj/machinery/computer/shuttle_control/explore/perseverance
	name = "Perseverance control console"
	shuttle_tag = "Perseverance"
	req_access = list(access_perseverance_helm)

/obj/machinery/computer/shuttle_control/explore/exploration_shuttle
	name = "Spirit control console"
	shuttle_tag = "Spirit"
	req_access = list(access_expedition_shuttle_helm)

/obj/machinery/computer/shuttle_control/explore/opportunity
	name = "Opportunity control console"
	shuttle_tag = "Opportunity"
	req_access = list(access_opportunity_helm)

/obj/machinery/computer/shuttle_control/explore/curiosity
	name = "Curiosity control console"
	shuttle_tag = "Curiosity"
	req_access = list(access_curiosity_helm)
