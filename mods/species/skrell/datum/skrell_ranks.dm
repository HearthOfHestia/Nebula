/datum/mil_branch/skrell_fleet
	name = "Skrellian Defense Task Force"
	name_short = "SDTF"
	// See todo in torch_ranks.dm
	// email_domain = "sdtf.qb"
	rank_types = list(
		/datum/mil_rank/skrell_fleet/zuumqix,
		/datum/mil_rank/skrell_fleet/vuxix
	)
	spawn_rank_types = list(
		/datum/mil_rank/skrell_fleet/zuumqix,
		/datum/mil_rank/skrell_fleet/vuxix
	)

/datum/mil_rank/skrell_fleet/zuumqix
	name = "Qrii-Zuumqix"
	name_short = "QZQX"
	sort_order = 1
	accessory = list(/obj/item/clothing/accessory/rank/SDTF/QZQX)

/datum/mil_rank/skrell_fleet/vuxix
	name = "Qrii-Vuxix"
	name_short = "QVX"
	sort_order = 2
	accessory = list(/obj/item/clothing/accessory/rank/SDTF/QVX)

// This is separate from skrellscoutship.dm because otherwise we won't compile since core files require this branch