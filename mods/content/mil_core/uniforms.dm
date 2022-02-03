/decl/hierarchy/mil_uniform
	name = "Master outfit hierarchy"
	abstract_type = /decl/hierarchy/mil_uniform
	var/list/branches = null
	var/departments = 0
	var/min_rank = 0

	var/pt_under = null
	var/pt_shoes = null

	var/utility_under = null
	var/utility_shoes = null
	var/utility_hat = null
	var/utility_extra = null

	var/service_under = null
	var/service_skirt = null
	var/service_over = null
	var/service_shoes = null
	var/service_hat = null
	var/service_gloves = null
	var/service_extra = null

	var/dress_under = null
	var/dress_skirt = null
	var/dress_over = null
	var/dress_shoes = null
	var/dress_hat = null
	var/dress_gloves = null
	var/dress_extra = null

/decl/hierarchy/mil_uniform/civilian
	name = "Master civilian outfit"		//Basically just here for the rent-a-tux, ahem, I mean... dress uniform.
	abstract_type = /decl/hierarchy/mil_uniform/civilian
	branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/government,
	)

	service_under = /obj/item/clothing/under/suit_jacket/really_black
	service_skirt = /obj/item/clothing/under/skirt_c/dress/black
	service_shoes = /obj/item/clothing/shoes/dress
	service_extra = list(/obj/item/clothing/under/skirt_c/dress/eggshell, /obj/item/clothing/shoes/heels/black, /obj/item/clothing/shoes/heels/red)

	dress_under = /obj/item/clothing/under/internalaffairs
	dress_skirt = /obj/item/clothing/under/skirt_c/dress/long/black
	dress_over = /obj/item/clothing/suit/storage/toggle/suit/black
	dress_shoes = /obj/item/clothing/shoes/dress
	dress_extra = list(/obj/item/clothing/accessory/wcoat/black, /obj/item/clothing/under/skirt_c/dress/long/eggshell, /obj/item/clothing/shoes/flats/black)
