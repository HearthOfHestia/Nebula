/datum/job/submap
	branch = /datum/mil_branch/civilian
	rank =   /datum/mil_rank/civ/civ
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/civ)
	required_language = null

/datum/map/torch
	branch_types = list(
		/datum/mil_branch/iseo_issc,
		/datum/mil_branch/civilian,
		/datum/mil_branch/government,
		/datum/mil_branch/espatier_corps,
		/datum/mil_branch/alien,
		/datum/mil_branch/skrell_fleet
	)

	spawn_branch_types = list(
		/datum/mil_branch/iseo_issc,
		/datum/mil_branch/espatier_corps,
		/datum/mil_branch/civilian,
		/datum/mil_branch/government,
		/datum/mil_branch/alien,
		/datum/mil_branch/skrell_fleet
	)

	species_to_rank_blacklist = list(
		/decl/species/utility_frame = list(
			/datum/mil_branch/iseo_issc = list(
				/datum/mil_rank/sc/s6
			),
			/datum/mil_branch/government = list(
				/datum/mil_rank/government/gov
			)
		),
		/decl/species/lizard = list(
			/datum/mil_branch/iseo_issc = list(
				/datum/mil_rank/sc/s6
			),
			/datum/mil_branch/government = list(
				/datum/mil_rank/government/gov
			)
		),
		/decl/species/tajaran = list(
			/datum/mil_branch/iseo_issc = list(
				/datum/mil_rank/sc/s6
			),
			/datum/mil_branch/government = list(
				/datum/mil_rank/government/gov
			)
		),
		/decl/species/skrell = list(
			/datum/mil_branch/iseo_issc = list(
				/datum/mil_rank/sc/s6
			),
			/datum/mil_branch/government = list(
				/datum/mil_rank/government/gov
			)
		)
	)

	species_to_branch_blacklist = list(
		/decl/species/human   = list(/datum/mil_branch/alien, /datum/mil_branch/skrell_fleet),
		/decl/species/utility_frame = list(/datum/mil_branch/alien, /datum/mil_branch/skrell_fleet),
		/decl/species/adherent = list(/datum/mil_branch/iseo_issc, /datum/mil_branch/espatier_corps, /datum/mil_branch/skrell_fleet, /datum/mil_branch/alien),
		/decl/species/serpentid = list(/datum/mil_branch/alien, /datum/mil_branch/skrell_fleet, /datum/mil_branch/espatier_corps, /datum/mil_branch/iseo_issc),
		/decl/species/mantid = list(/datum/mil_branch/alien, /datum/mil_branch/skrell_fleet, /datum/mil_branch/espatier_corps, /datum/mil_branch/iseo_issc),
		/decl/species/vox = list(/datum/mil_branch/alien, /datum/mil_branch/skrell_fleet, /datum/mil_branch/espatier_corps, /datum/mil_branch/iseo_issc)
	)