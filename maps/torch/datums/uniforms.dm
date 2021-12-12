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

/decl/hierarchy/mil_uniform/iseo
	name = "Master ISEO outfit"
	abstract_type = /decl/hierarchy/mil_uniform/iseo
	branches = list(/datum/mil_branch/iseo_issc)

	pt_under = /obj/item/clothing/under/iseo/pt
	pt_shoes = /obj/item/clothing/shoes/color/black

	utility_under = /obj/item/clothing/under/iseo/utility
	utility_shoes = /obj/item/clothing/shoes/jackboots/duty
	utility_hat = /obj/item/clothing/head/iseo/utility
	utility_extra = list(
		/obj/item/clothing/head/iseo/beret
	)
	service_under = /obj/item/clothing/under/iseo/service/uniform
	service_skirt = /obj/item/clothing/under/iseo/service/skirt
	service_over = /obj/item/clothing/suit/iseo/service
	service_shoes = /obj/item/clothing/shoes/dress
	service_hat = /obj/item/clothing/head/iseo/garrison_cap

	dress_under = /obj/item/clothing/under/iseo/service/uniform
	dress_skirt = /obj/item/clothing/under/iseo/service/skirt
	dress_over = /obj/item/clothing/suit/iseo/dress
	dress_shoes = /obj/item/clothing/shoes/dress
	dress_hat = /obj/item/clothing/head/iseo/wheel_cap
	dress_gloves = /obj/item/clothing/gloves/color/white

/decl/hierarchy/mil_uniform/espatier
	name = "Master Espatier outfit"
	abstract_type = /decl/hierarchy/mil_uniform/espatier
	branches = list(/datum/mil_branch/espatier_corps)

	pt_under = /obj/item/clothing/under/espatier/pt
	pt_shoes = /obj/item/clothing/shoes/color/black

	utility_under = /obj/item/clothing/under/espatier/utility
	utility_shoes = /obj/item/clothing/shoes/jackboots/duty
	utility_hat = /obj/item/clothing/head/espatier/utility
	utility_extra = list(
		/obj/item/clothing/head/espatier/beret,
		/obj/item/clothing/suit/espatier/jacket
		)

	service_under = /obj/item/clothing/under/espatier/service/uniform
	service_skirt = /obj/item/clothing/under/espatier/service/skirt
	service_over = null
	service_shoes = /obj/item/clothing/shoes/dress
	service_hat = /obj/item/clothing/head/espatier/garrison_cap

	dress_under = /obj/item/clothing/under/espatier/dress/uniform
	dress_skirt = /obj/item/clothing/under/espatier/dress/skirt
	dress_over = /obj/item/clothing/suit/espatier/dress
	dress_shoes = /obj/item/clothing/shoes/dress
	dress_hat = /obj/item/clothing/head/espatier/wheel_cap
	dress_gloves = /obj/item/clothing/gloves/color/white

	dress_extra = list(/obj/item/clothing/head/beret/espatier)

/decl/hierarchy/mil_uniform/civilian
	name = "Master civilian outfit"		//Basically just here for the rent-a-tux, ahem, I mean... dress uniform.
	abstract_type = /decl/hierarchy/mil_uniform/civilian
	branches = list(/datum/mil_branch/civilian,/datum/mil_branch/government)

	service_under = /obj/item/clothing/under/suit_jacket/really_black
	service_skirt = /obj/item/clothing/under/skirt_c/dress/black
	service_shoes = /obj/item/clothing/shoes/dress
	service_extra = list(/obj/item/clothing/under/skirt_c/dress/eggshell, /obj/item/clothing/shoes/heels/black, /obj/item/clothing/shoes/heels/red)

	dress_under = /obj/item/clothing/under/internalaffairs
	dress_skirt = /obj/item/clothing/under/skirt_c/dress/long/black
	dress_over = /obj/item/clothing/suit/storage/toggle/suit/black
	dress_shoes = /obj/item/clothing/shoes/dress
	dress_extra = list(/obj/item/clothing/accessory/wcoat/black, /obj/item/clothing/under/skirt_c/dress/long/eggshell, /obj/item/clothing/shoes/flats/black)
