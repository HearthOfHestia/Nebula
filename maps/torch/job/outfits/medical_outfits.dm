/decl/hierarchy/outfit/job/torch/crew/medical
	hierarchy_type = /decl/hierarchy/outfit/job/torch/crew/medical
	l_ear = /obj/item/radio/headset/headset_med
	id_type = /obj/item/card/id/torch/crew/medical
	pda_type = /obj/item/modular_computer/pda/medical
	pda_slot = slot_l_store_str

/decl/hierarchy/outfit/job/torch/crew/medical/New()
	..()
	BACKPACK_OVERRIDE_MEDICAL

/decl/hierarchy/outfit/job/torch/crew/medical/senior
	name = OUTFIT_JOB_NAME("Physician")
	uniform = /obj/item/clothing/under/iseo/utility/medical
	shoes = /obj/item/clothing/shoes/jackboots/duty
	id_type = /obj/item/card/id/torch/crew/medical/senior
	head = /obj/item/clothing/head/iseo/beret/medical

/decl/hierarchy/outfit/job/torch/crew/medical/senior/fleet
	name = OUTFIT_JOB_NAME("Physician - Espatier Corps")
	uniform = /obj/item/clothing/under/espatier/utility/medical
	shoes = /obj/item/clothing/shoes/jackboots/duty
	head = /obj/item/clothing/head/espatier/beret/medical

/decl/hierarchy/outfit/job/torch/crew/medical/junior
	name = OUTFIT_JOB_NAME("Medical Resident")
	uniform = /obj/item/clothing/under/iseo/utility/medical
	shoes = /obj/item/clothing/shoes/jackboots/duty
	head = /obj/item/clothing/head/iseo/beret/medical

/decl/hierarchy/outfit/job/torch/crew/medical/junior/fleet
	name = OUTFIT_JOB_NAME("Medical Resident - Espatier Corps")
	uniform = /obj/item/clothing/under/espatier/utility/medical
	shoes = /obj/item/clothing/shoes/jackboots/duty
	head = /obj/item/clothing/head/espatier/beret/medical

/decl/hierarchy/outfit/job/torch/crew/medical/doctor
	name = OUTFIT_JOB_NAME("Medical Technician")
	uniform = /obj/item/clothing/under/iseo/utility/medical
	shoes = /obj/item/clothing/shoes/jackboots/duty
	l_ear = /obj/item/radio/headset/headset_corpsman
	head = /obj/item/clothing/head/iseo/beret/medical

/decl/hierarchy/outfit/job/torch/crew/medical/doctor/fleet
	name = OUTFIT_JOB_NAME("Medical Technician - Espatier Corps")
	uniform = /obj/item/clothing/under/espatier/utility/medical
	shoes = /obj/item/clothing/shoes/jackboots/duty
	l_ear = /obj/item/radio/headset/headset_corpsman
	head = /obj/item/clothing/head/espatier/beret/medical

/decl/hierarchy/outfit/job/torch/crew/medical/chemist
	name = OUTFIT_JOB_NAME("Chemist - Torch")
	uniform = /obj/item/clothing/under/iseo/utility/medical
	shoes = /obj/item/clothing/shoes/color/white
	pda_type = /obj/item/modular_computer/pda/medical
	head = /obj/item/clothing/head/iseo/beret/medical

/decl/hierarchy/outfit/job/torch/crew/medical/counselor
	name = OUTFIT_JOB_NAME("Counselor")
	uniform = /obj/item/clothing/under/iseo/utility/medical
	shoes = /obj/item/clothing/shoes/color/white
	head = /obj/item/clothing/head/iseo/beret/medical

/decl/hierarchy/outfit/job/torch/crew/medical/counselor/fleet
	name = OUTFIT_JOB_NAME("Counselor - Espatier Corps")
	uniform = /obj/item/clothing/under/espatier/utility/medical
	shoes = /obj/item/clothing/shoes/jackboots/duty
	head = /obj/item/clothing/head/espatier/beret/medical

/decl/hierarchy/outfit/job/torch/crew/medical/counselor/mentalist
	name = OUTFIT_JOB_NAME("Counselor - Mentalist")
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	shoes = /obj/item/clothing/shoes/dress
