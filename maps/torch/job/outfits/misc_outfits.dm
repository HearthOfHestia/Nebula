/decl/hierarchy/outfit/job/torch/passenger/passenger
	name = "Job - Passenger - Torch"
	uniform = /obj/item/clothing/under/color/grey
	l_ear = /obj/item/radio/headset
	shoes = /obj/item/clothing/shoes/color/black
	pda_type = /obj/item/modular_computer/pda
	id_type = /obj/item/card/id/torch/passenger

/decl/hierarchy/outfit/job/torch/passenger/passenger/psychologist
	name = "Job - Passenger - Psychologist"
	uniform = /obj/item/clothing/under/psych/turtleneck
	shoes = /obj/item/clothing/shoes/dress

/decl/hierarchy/outfit/job/torch/passenger/passenger/journalist
	name = "Job - Journalist - Torch"
	backpack_contents = list(/obj/item/camera/tvcamera = 1,
	/obj/item/clothing/accessory/badge/press = 1)

/decl/hierarchy/outfit/job/torch/passenger/passenger/investor
	name = "Job - Investor - Torch"

/decl/hierarchy/outfit/job/torch/passenger/passenger/investor/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/storage/secure/briefcase/money/case = new(H.loc)
	H.put_in_hands(case)

/decl/hierarchy/outfit/job/torch/merchant
	name = "Job - Merchant - Torch"
	uniform = /obj/item/clothing/under/color/black
	l_ear = null
	shoes = /obj/item/clothing/shoes/color/black
	pda_type = /obj/item/modular_computer/pda
	id_type = /obj/item/card/id/torch/merchant

/decl/hierarchy/outfit/job/torch/ert
	name = "Job - ERT - Torch"
	uniform = /obj/item/clothing/under/iseo/utility/security
	gloves = /obj/item/clothing/gloves/thick
	id_type = /obj/item/card/id/centcom/ERT
	pda_type = /obj/item/modular_computer/pda/ert
	l_ear = /obj/item/radio/headset/ert
	shoes = /obj/item/clothing/shoes/jackboots/duty

/decl/hierarchy/outfit/job/torch/ert/leader
	name = "Job - ERT Leader - Torch"
	uniform = /obj/item/clothing/under/iseo/utility/security