/datum/map/torch
	default_job_type = /datum/job/assistant

	#define AI_SHARD_JOBS /datum/job/ai/shard/security, /datum/job/ai/shard/medical, /datum/job/ai/shard/research, /datum/job/ai/shard/command, /datum/job/ai/shard/engineering
	#define COMMAND_JOBS /datum/job/captain, /datum/job/hop, /datum/job/rd, /datum/job/cmo, /datum/job/chief_engineer, /datum/job/hos, /datum/job/liaison, /datum/job/representative, /datum/job/sea, /datum/job/bridgeofficer
	#define VIOLENT_JOBS /datum/job/bodyguard, /datum/job/hos, /datum/job/officer, /datum/job/warden, /datum/job/detective, /datum/job/pathfinder, /datum/job/explorer
	/* // TODO: decide on whether or not national council representatives can be aliens
	job_to_species_whitelist = list(
		/datum/job/representative = list(
			/decl/species/human
		)
	)
	*/

	species_to_job_blacklist = list(
		/decl/species/adherent = list(
			VIOLENT_JOBS,
			COMMAND_JOBS
		)
	)

	allowed_jobs = list(/datum/job/captain, /datum/job/hop, /datum/job/rd, /datum/job/cmo, /datum/job/chief_engineer, /datum/job/hos,
						/datum/job/liaison, /datum/job/bodyguard, /datum/job/representative, /datum/job/sea,
						/datum/job/bridgeofficer, /datum/job/pathfinder, /datum/job/nt_pilot, /datum/job/explorer,
						/datum/job/senior_engineer, /datum/job/engineer, /datum/job/roboticist, /datum/job/engineer_trainee,
						/datum/job/officer, /datum/job/warden, /datum/job/detective,
						/datum/job/senior_doctor, /datum/job/doctor, /datum/job/junior_doctor, /datum/job/chemist, /datum/job/medical_trainee,
						/datum/job/psychiatrist, /datum/job/chaplain,
						/datum/job/qm, /datum/job/cargo_tech, /datum/job/mining,
						/datum/job/janitor, /datum/job/chef, /datum/job/bartender,
						/datum/job/senior_scientist, /datum/job/scientist, /datum/job/scientist_assistant,
						/datum/job/crew, /datum/job/assistant,
						/*/datum/job/merchant,*/ AI_SHARD_JOBS
						)

	access_modify_region = list(
		ACCESS_REGION_SECURITY = list(access_change_ids),
		ACCESS_REGION_MEDBAY = list(access_change_ids),
		ACCESS_REGION_RESEARCH = list(access_change_ids),
		ACCESS_REGION_ENGINEERING = list(access_change_ids),
		ACCESS_REGION_COMMAND = list(access_change_ids),
		ACCESS_REGION_GENERAL = list(access_change_ids),
		ACCESS_REGION_SUPPLY = list(access_change_ids),
		ACCESS_REGION_NT = list(access_change_ids)
	)

#undef AI_SHARD_JOBS
#undef VIOLENT_JOBS