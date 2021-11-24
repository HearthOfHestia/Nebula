/***************
 * SHARD TYPES *
 ***************/
/decl/ai_type/command
	name = "Command Shard"
	drone_type = /mob/living/silicon/robot/drone/shard/command
	color = COMMS_COLOR_COMMAND
	lawset = /datum/ai_laws/directive/iseo_command
	department = /decl/department/command
	access = list(
		access_solgov_crew,
		access_nanotrasen,
		access_security,
		access_sec_doors,
		access_brig,
		access_forensics_lockers,
		access_heads,
		access_medical,
		access_engine,
		access_change_ids,
		access_ai_upload,
		access_eva,
		access_bridge,
		access_all_personal_lockers,
		access_maint_tunnels,
		access_bar,
		access_janitor,
		access_construction,
		access_morgue,
		access_crematorium,
		access_kitchen,
		access_cargo,
		access_cargo_bot,
		access_mailsorting,
		access_qm,
		access_hydroponics,
		access_lawyer,
		access_chapel_office,
		access_library,
		access_research,
		access_mining,
		access_heads_vault,
		access_mining_station,
		access_hop,
		access_RC_announce,
		access_keycard_auth,
		access_gateway
	)

/decl/ai_type/security
	name = "Security Shard"
	drone_type = /mob/living/silicon/robot/drone/shard/security
	color = COMMS_COLOR_SECURITY
	lawset = /datum/ai_laws/directive/iseo_security
	department = /decl/department/security
	access = list(
		access_solgov_crew,
		access_nanotrasen,
		access_security,
		access_eva,
		access_sec_doors,
		access_brig,
		access_armory,
		access_heads,
		access_forensics_lockers,
		access_morgue,
		access_maint_tunnels,
		access_all_personal_lockers,
		access_mailsorting,
		access_bridge,
		access_hos,
		access_RC_announce,
		access_keycard_auth,
		access_gateway,
		access_external_airlocks
	)

/decl/ai_type/engineering
	name = "Engineering Shard"
	drone_type = /mob/living/silicon/robot/drone/shard/engineering
	color = COMMS_COLOR_ENGINEER
	lawset = /datum/ai_laws/directive/iseo_engineering
	department = /decl/department/engineering
	access = list(
		access_solgov_crew,
		access_nanotrasen,
		access_engine,
		access_engine_equip,
		access_tech_storage,
		access_maint_tunnels,
		access_heads,
		access_teleporter,
		access_external_airlocks,
		access_atmospherics,
		access_emergency_storage,
		access_eva,
		access_bridge,
		access_construction,
		access_sec_doors,
		access_ce,
		access_RC_announce,
		access_keycard_auth,
		access_tcomsat,
		access_ai_upload
	)

/decl/ai_type/medical
	name = "Medical Shard"
	drone_type = /mob/living/silicon/robot/drone/shard/medical
	color = COMMS_COLOR_MEDICAL
	lawset = /datum/ai_laws/directive/iseo_medical
	department = /decl/department/medical
	access = list(
		access_solgov_crew,
		access_nanotrasen,
		access_medical,
		access_medical_equip,
		access_morgue,
		access_bridge,
		access_heads,
		access_chemistry,
		access_virology,
		access_cmo,
		access_surgery,
		access_RC_announce,
		access_keycard_auth,
		access_sec_doors,
		access_psychiatrist,
		access_eva,
		access_maint_tunnels,
		access_external_airlocks
	)


/decl/ai_type/science
	name = "Science Shard"
	drone_type = /mob/living/silicon/robot/drone/shard/research
	color = COMMS_COLOR_SCIENCE
	lawset = /datum/ai_laws/directive/iseo_research
	department = /decl/department/science
	access = list(
		access_solgov_crew,
		access_nanotrasen,
		access_rd,
		access_bridge,
		access_tox,
		access_morgue,
		access_tox_storage,
		access_teleporter,
		access_sec_doors,
		access_heads,
		access_research,
		access_robotics,
		access_xenobiology,
		access_ai_upload,
		access_tech_storage,
		access_RC_announce,
		access_keycard_auth,
		access_tcomsat,
		access_gateway,
		access_xenoarch,
		access_network
	)

/**************
 * SHARD JOBS *
 **************/
/datum/job/ai/shard/security
	title = "Security AI Shard"
	shard_type = /decl/ai_type/security
	spawn_positions = 1
	selection_color = COMMS_COLOR_SECURITY
	department_types = list(/decl/department/security)

/datum/job/ai/shard/engineering
	title = "Engineering AI Shard"
	shard_type = /decl/ai_type/engineering
	spawn_positions = 1
	selection_color = COMMS_COLOR_ENGINEER
	department_types = list(/decl/department/engineering)

/datum/job/ai/shard/command
	title = "Command AI Shard"
	shard_type = /decl/ai_type/command
	spawn_positions = 1
	selection_color = COMMS_COLOR_COMMAND
	department_types = list(/decl/department/command)

/datum/job/ai/shard/medical
	title = "Medical AI Shard"
	shard_type = /decl/ai_type/medical
	spawn_positions = 1
	selection_color = COMMS_COLOR_MEDICAL
	department_types = list(/decl/department/medical)

/datum/job/ai/shard/research
	title = "Research AI Shard"
	shard_type = /decl/ai_type/science
	spawn_positions = 1
	selection_color = "#633d63"
	department_types = list(/decl/department/science)

/************
 * AI CORES *
 ************/
/obj/structure/aicore/deactivated/command
	core_type = /decl/department/command

/obj/structure/aicore/deactivated/security
	core_type = /decl/department/security

/obj/structure/aicore/deactivated/engineering
	core_type = /decl/department/engineering

/obj/structure/aicore/deactivated/medical
	core_type = /decl/department/medical

/obj/structure/aicore/deactivated/research
	core_type = /decl/department/science