/datum/mil_branch/government
	name = "Government Employee"
	name_short = "GOVT"
	email_domain = "space.gov"

	rank_types = list(
		/datum/mil_rank/government/gov,
		/datum/mil_rank/government/scientist
	)

	spawn_rank_types = list(
		/datum/mil_rank/government/gov,
		/datum/mil_rank/government/scientist
	)

/datum/mil_rank/government/gov
	name = "Government Representative"
	name_short = "REP"

/datum/mil_rank/government/scientist
	name = "Government Scientist"
	name_short = "SCI"
