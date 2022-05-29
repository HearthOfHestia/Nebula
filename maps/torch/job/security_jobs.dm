/datum/job/warden
	title = "Brig Chief"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Chief of Security"
	economic_power = 5
	minimal_player_age = 7
	ideal_character_age = 35
	minimum_character_age = list(SPECIES_HUMAN = 27)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/security/brig_chief
	department_types = list(/decl/department/security)
	allowed_branches = list(
		/datum/mil_branch/iseo_issc,
		/datum/mil_branch/espatier_corps = /decl/hierarchy/outfit/job/torch/crew/security/brig_chief/espatier
	)
	allowed_ranks = list(
		/datum/mil_rank/sc/t4,
		/datum/mil_rank/espatier/e5,
		/datum/mil_rank/espatier/e6,
		/datum/mil_rank/espatier/e7
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_ADEPT,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_WEAPONS     = SKILL_ADEPT,
	                    SKILL_FORENSICS   = SKILL_BASIC,
						SKILL_LITERACY    = SKILL_ADEPT)

	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX,
	                    SKILL_FORENSICS   = SKILL_MAX)
	skill_points = 20

	access = list(
		access_security, access_brig, access_armory, access_forensics_lockers,
		access_maint_tunnels, access_external_airlocks, access_emergency_storage,
		access_eva, access_sec_doors, access_iseo_crew, access_gun, access_endeavour_fax,
		access_radio_sec
	)

	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor)
	selection_color = COMMS_COLOR_SECURITY

/datum/job/detective
	title = "Forensic Technician"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Chief of Security"
	economic_power = 5
	minimal_player_age = 7
	minimum_character_age = list(SPECIES_HUMAN = 25)
	ideal_character_age = 35
	skill_points = 14
	department_types = list(/decl/department/security)
	alt_titles = list(
		"Criminal Investigator"
	)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/security/forensic_tech
	allowed_branches = list(
		/datum/mil_branch/iseo_issc,
		/datum/mil_branch/espatier_corps = /decl/hierarchy/outfit/job/torch/crew/security/forensic_tech/espatier
	)
	allowed_ranks = list(
		/datum/mil_rank/sc/t2,
		/datum/mil_rank/sc/t3,
		/datum/mil_rank/espatier/e4,
		/datum/mil_rank/espatier/e5
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_COMPUTER    = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_WEAPONS     = SKILL_BASIC,
	                    SKILL_FORENSICS   = SKILL_ADEPT,
						SKILL_LITERACY    = SKILL_ADEPT)

	max_skill = list(   SKILL_COMBAT      = SKILL_EXPERT,
	                    SKILL_WEAPONS     = SKILL_EXPERT,
	                    SKILL_FORENSICS   = SKILL_MAX)
	skill_points = 20

	access = list(
		access_security, access_brig, access_forensics_lockers,
		access_maint_tunnels, access_emergency_storage,
		access_sec_doors, access_iseo_crew, access_morgue,
		access_endeavour_fax, access_radio_sec
	)

	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor)
	selection_color = COMMS_COLOR_SECURITY

/datum/job/officer
	title = "Master at Arms"
	total_positions = 4
	spawn_positions = 4
	supervisors = "the Chief of Security"
	economic_power = 4
	minimal_player_age = 7
	minimum_character_age = list(SPECIES_HUMAN = 18)
	department_types = list(/decl/department/security)
	ideal_character_age = 25
	alt_titles = list() // This is a hack. Overriding a list var with null does not actually override it due to the particulars of dm list init. Do not "clean up" without testing.
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/security/maa
	allowed_branches = list(
		/datum/mil_branch/iseo_issc,
		/datum/mil_branch/espatier_corps = /decl/hierarchy/outfit/job/torch/crew/security/maa/espatier
	)
	allowed_ranks = list(
		/datum/mil_rank/sc/t2,
		/datum/mil_rank/sc/t3,
		/datum/mil_rank/sc/t4,
		/datum/mil_rank/espatier/e2,
		/datum/mil_rank/espatier/e3,
		/datum/mil_rank/espatier/e4,
	)
	min_skill = list(   SKILL_BUREAUCRACY = SKILL_BASIC,
	                    SKILL_EVA         = SKILL_BASIC,
	                    SKILL_COMBAT      = SKILL_BASIC,
	                    SKILL_WEAPONS     = SKILL_ADEPT,
	                    SKILL_FORENSICS   = SKILL_BASIC,
						SKILL_LITERACY    = SKILL_ADEPT)

	max_skill = list(   SKILL_COMBAT      = SKILL_MAX,
	                    SKILL_WEAPONS     = SKILL_MAX,
	                    SKILL_FORENSICS   = SKILL_EXPERT)

	access = list(
		access_security, access_brig, access_maint_tunnels,
		access_external_airlocks, access_emergency_storage,
		access_eva, access_sec_doors, access_iseo_crew,
		access_radio_sec
	)

	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor)
	selection_color = COMMS_COLOR_SECURITY
