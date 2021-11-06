/decl/ai_type
	var/name //name of module
	var/drone_type //type of drone
	var/color //holopad color
	var/lawset //lawset
	var/department //this is a typepath
	var/list/access = list() //list of access this AI can have.

/decl/ai_type/proc/configure_ai(var/mob/living/silicon/ai/computer)
	computer.laws = new lawset
	computer.custom_color_tone = color
	computer.assigned_type = src
	computer.idcard.access = access.Copy()

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
		access_research,
		access_engine,
		access_mining,
		access_medical,
		access_construction,
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