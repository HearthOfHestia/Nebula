/decl/hierarchy/outfit/job/endeavour/passenger/passenger
	name = "Job - Passenger - Endeavour"
	uniform = /obj/item/clothing/under/color/grey
	l_ear = /obj/item/radio/headset
	shoes = /obj/item/clothing/shoes/color/black
	pda_type = /obj/item/modular_computer/pda
	id_type = /obj/item/card/id/endeavour/passenger

/decl/hierarchy/outfit/job/endeavour/passenger/passenger/psychologist
	name = "Job - Passenger - Psychologist"
	uniform = /obj/item/clothing/under/psych/turtleneck
	shoes = /obj/item/clothing/shoes/dress

/decl/hierarchy/outfit/job/endeavour/passenger/passenger/journalist
	name = "Job - Journalist - Endeavour"
	backpack_contents = list(/obj/item/camera/tvcamera = 1,
	/obj/item/clothing/accessory/badge/press = 1)

/decl/hierarchy/outfit/job/endeavour/passenger/passenger/investor
	name = "Job - Investor - Endeavour"

/decl/hierarchy/outfit/job/endeavour/passenger/passenger/investor/post_equip(var/mob/living/carbon/human/H)
	..()
	var/obj/item/storage/secure/briefcase/money/case = new(H.loc)
	H.put_in_hands(case)

/decl/hierarchy/outfit/job/endeavour/merchant
	name = "Job - Merchant - Endeavour"
	uniform = /obj/item/clothing/under/color/black
	l_ear = null
	shoes = /obj/item/clothing/shoes/color/black
	pda_type = /obj/item/modular_computer/pda
	id_type = /obj/item/card/id/endeavour/merchant

/decl/hierarchy/outfit/job/endeavour/ert
	name = "Job - ERT - Endeavour"
	uniform = /obj/item/clothing/under/iseo/utility/security
	gloves = /obj/item/clothing/gloves/thick
	id_type = /obj/item/card/id/centcom/ERT
	pda_type = /obj/item/modular_computer/pda/ert
	l_ear = /obj/item/radio/headset/ert
	shoes = /obj/item/clothing/shoes/jackboots/duty

/decl/hierarchy/outfit/job/endeavour/ert/leader
	name = "Job - ERT Leader - Endeavour"
	uniform = /obj/item/clothing/under/iseo/utility/security