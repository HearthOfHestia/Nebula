/datum/job/chaplain
	title = "Chaplain"
	department_types = list(/decl/department/service)
	total_positions = 1
	spawn_positions = 1
	minimum_character_age = list(SPECIES_HUMAN = 24)
	ideal_character_age = 40
	economic_power = 6
	minimal_player_age = 0
	supervisors = "the Deck Chief"
	outfit_type = /decl/hierarchy/outfit/job/endeavour/crew/service/chaplain
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/iseo_issc = /decl/hierarchy/outfit/job/endeavour/crew/service/chaplain/iseo,
		/datum/mil_branch/espatier_corps = /decl/hierarchy/outfit/job/endeavour/crew/service/chaplain/espatier
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/sc/s1,
		/datum/mil_rank/sc/s2,
		/datum/mil_rank/espatier/o1,
		/datum/mil_rank/espatier/o2)
	min_skill = list(SKILL_BUREAUCRACY = SKILL_BASIC, SKILL_LITERACY    = SKILL_ADEPT)

	access = list(
		access_morgue, access_chapel_office,
		access_crematorium, access_iseo_crew,
		access_radio_serv
	)

	minimal_access = list()
	selection_color = "#254c25"

/datum/job/janitor
	title = "Sanitation Technician"
	department_types = list(/decl/department/service)
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Deck Chief"
	minimum_character_age = list(SPECIES_HUMAN = 18)
	ideal_character_age = 20
	alt_titles = list(
		"Janitor")
	outfit_type = /decl/hierarchy/outfit/job/endeavour/crew/service/janitor
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/iseo_issc = /decl/hierarchy/outfit/job/endeavour/crew/service/janitor/iseo,
		/datum/mil_branch/espatier_corps = /decl/hierarchy/outfit/job/endeavour/crew/service/janitor/espatier
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/espatier/e1,
		/datum/mil_rank/espatier/e2,
		/datum/mil_rank/sc/t1,
		/datum/mil_rank/sc/t2,
		/datum/mil_rank/sc/t3,
		/datum/mil_rank/espatier/e3,
		/datum/mil_rank/espatier/e4
	)
	min_skill = list(   SKILL_HAULING = SKILL_BASIC, SKILL_LITERACY    = SKILL_ADEPT)

	access = list(
		access_maint_tunnels, access_emergency_storage,
		access_janitor, access_iseo_crew,
		access_radio_serv
	)

	minimal_access = list()
	selection_color = "#254c25"

/datum/job/chef
	title = "Cook"
	department_types = list(/decl/department/service)
	total_positions = 1
	spawn_positions = 1
	minimum_character_age = list(SPECIES_HUMAN = 18)
	supervisors = "the Deck Chief"
	alt_titles = list(
		"Chef",
		"Culinary Specialist"
		)
	outfit_type = /decl/hierarchy/outfit/job/endeavour/crew/service/cook
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/iseo_issc = /decl/hierarchy/outfit/job/endeavour/crew/service/cook/iseo,
		/datum/mil_branch/espatier_corps = /decl/hierarchy/outfit/job/endeavour/crew/service/cook/espatier
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/sc/t1,
		/datum/mil_rank/sc/t2,
		/datum/mil_rank/sc/t3,
		/datum/mil_rank/sc/t4,
		/datum/mil_rank/espatier/e1,
		/datum/mil_rank/espatier/e2,
		/datum/mil_rank/espatier/e3,
		/datum/mil_rank/espatier/e4
	)
	min_skill = list(   SKILL_COOKING   = SKILL_ADEPT,
	                    SKILL_BOTANY    = SKILL_BASIC,
	                    SKILL_CHEMISTRY = SKILL_BASIC,
						SKILL_LITERACY    = SKILL_ADEPT)

	access = list(
		access_hydroponics, access_kitchen,
		access_iseo_crew, access_bar,
		access_radio_serv
	)

	minimal_access = list()
	selection_color = "#254c25"

/datum/job/bartender
	title = "Bartender"
	department_types = list(/decl/department/service)
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Deck Chief"
	minimum_character_age = list(SPECIES_HUMAN = 18)
	ideal_character_age = 30
	outfit_type = /decl/hierarchy/outfit/job/endeavour/crew/service/bartender
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/contractor)

	access = list(
		access_hydroponics, access_bar,
		access_iseo_crew, access_kitchen,
		access_radio_serv
	)

	minimal_access = list()

	min_skill = list(   SKILL_COOKING   = SKILL_BASIC,
	                    SKILL_BOTANY    = SKILL_BASIC,
	                    SKILL_CHEMISTRY = SKILL_BASIC,
						SKILL_LITERACY    = SKILL_ADEPT)
	selection_color = "#254c25"

/datum/job/crew
	title = "Crewman"
	department_types = list(/decl/department/service)
	total_positions = 5
	spawn_positions = 5
	supervisors = "the Executive Officer and ISEO Personnel"
	minimum_character_age = list(SPECIES_HUMAN = 18)
	ideal_character_age = 20
	outfit_type = /decl/hierarchy/outfit/job/endeavour/crew/service/crewman
	allowed_branches = list(
		/datum/mil_branch/iseo_issc,
		/datum/mil_branch/espatier_corps = /decl/hierarchy/outfit/job/endeavour/crew/service/crewman/espatier
	)
	allowed_ranks = list(
		/datum/mil_rank/espatier/e1,
		/datum/mil_rank/espatier/e2,
		/datum/mil_rank/espatier/e3,
		/datum/mil_rank/espatier/e4,
		/datum/mil_rank/sc/t1,
		/datum/mil_rank/sc/t2,
		/datum/mil_rank/sc/t3,
		/datum/mil_rank/sc/t4
	)

	access = list(
		access_maint_tunnels, access_emergency_storage,
		access_iseo_crew, access_radio_serv
	)
	selection_color = "#254c25"
