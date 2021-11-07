//Rank accessory base item
/obj/item/clothing/accessory/rank
	name = "rank tabs"
	desc = "A set of grey rank tabs."
	slot = ACCESSORY_SLOT_RANK
	hide_on_uniform_rolldown = TRUE
	hide_on_uniform_rollsleeves = TRUE
	var/ranking //Shorthand for the rank
	var/ranking_full //Full name of the rank.

/obj/item/clothing/accessory/rank/Initialize()
	. = ..()
	name = "[initial(name)] ([ranking_full])"
	desc = "[initial(desc)] This set denotes a rank of [ranking_full] ([ranking])."