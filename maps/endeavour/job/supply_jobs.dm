/datum/job/qm
	title = "Deck Chief"
	department_types = list(/decl/department/supply, /decl/department/command)
	primary_department = /decl/department/supply
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Executive Officer"
	economic_power = 5
	minimal_player_age = 0
	minimum_character_age = list(SPECIES_HUMAN = 27)
	ideal_character_age = 35
	outfit_type = /decl/hierarchy/outfit/job/endeavour/crew/supply/deckofficer
	alt_titles = list("Quartermaster", "Logistics Chief")
	allowed_branches = list(
		/datum/mil_branch/iseo_issc,
		/datum/mil_branch/espatier_corps
	)
	allowed_ranks = list(
		/datum/mil_rank/sc/t4,
		/datum/mil_rank/espatier/e6,
		/datum/mil_rank/espatier/e7
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_FINANCE     = SKILL_BASIC,
	                    SKILL_HAULING     = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_PILOT       = SKILL_BASIC,
						SKILL_LITERACY    = SKILL_ADEPT)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX)
	skill_points = 18

	access = list(
		access_maint_tunnels, access_bridge, access_emergency_storage, access_tech_storage,  access_cargo, access_opportunity_helm,
		access_cargo_bot, access_qm, access_mailsorting, access_solgov_crew, access_expedition_shuttle, access_opportunity, access_hangar,
		access_mining, access_mining_office, access_mining_station, access_commissary, access_teleporter, access_eva, access_endeavour_fax,
		access_radio_sup, access_radio_exp, access_radio_comm, access_hydroponics, access_kitchen, access_solgov_crew, access_bar,
		access_commissary, access_radio_serv, access_bar
	)

	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/supply,
							 /datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)
	selection_color = "#d4a24a"
	head_position = 1

/datum/job/cargo_tech
	title = "Deck Technician"
	department_types = list(/decl/department/supply)
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Deck Chief and Executive Officer"
	minimum_character_age = list(SPECIES_HUMAN = 18)
	ideal_character_age = 24
	outfit_type = /decl/hierarchy/outfit/job/endeavour/crew/supply/tech
	allowed_branches = list(
		/datum/mil_branch/iseo_issc,
		/datum/mil_branch/espatier_corps,
		/datum/mil_branch/civilian = /decl/hierarchy/outfit/job/endeavour/crew/supply/contractor
	)
	allowed_ranks = list(
		/datum/mil_rank/sc/t1,
		/datum/mil_rank/sc/t2,
		/datum/mil_rank/sc/t3,
		/datum/mil_rank/espatier/e4,
		/datum/mil_rank/espatier/e3,
		/datum/mil_rank/espatier/e2,
		/datum/mil_rank/espatier/e1,
		/datum/mil_rank/civ/contractor
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_FINANCE     = SKILL_BASIC,
	                    SKILL_HAULING     = SKILL_BASIC,
						SKILL_LITERACY    = SKILL_ADEPT)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX)

	access = list(
		access_maint_tunnels, access_emergency_storage, access_cargo, access_opportunity_helm,
		access_cargo_bot, access_mailsorting, access_solgov_crew, access_expedition_shuttle,
		access_opportunity, access_hangar, access_commissary, access_radio_sup
	)

	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/supply,
							 /datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)
	selection_color = COMMS_COLOR_SUPPLY

/datum/job/mining
	title = "Prospector"
	department_types = list(/decl/department/supply)
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Deck Chief, the Corporate Liaison and the Executive Officer"
	economic_power = 7
	minimum_character_age = list(SPECIES_HUMAN = 18)
	ideal_character_age = 25
	alt_titles = list(
		"Drill Technician",
		"Shaft Miner",
		"Salvage Technician")
	min_skill = list(   SKILL_HAULING = SKILL_ADEPT,
	                    SKILL_EVA     = SKILL_BASIC,
						SKILL_LITERACY    = SKILL_ADEPT)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX)

	outfit_type = /decl/hierarchy/outfit/job/endeavour/passenger/research/prospector
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/contractor)

	access = list(
		access_mining, access_mining_office, access_mining_station,
		access_expedition_shuttle, access_opportunity, access_hangar,
		access_opportunity_helm, access_solgov_crew, access_eva,
		access_radio_exp, access_radio_sup
	)

	minimal_access = list()
	selection_color = COMMS_COLOR_SUPPLY
