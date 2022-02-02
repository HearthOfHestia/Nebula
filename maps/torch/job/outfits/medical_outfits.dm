/decl/hierarchy/outfit/job/torch/crew/medical
	abstract_type = /decl/hierarchy/outfit/job/torch/crew/medical
	l_ear = /obj/item/radio/headset/headset_med
	id_type = /obj/item/card/id/endeavour/crew/medical
	pda_type = /obj/item/modular_computer/pda/medical
	pda_slot = slot_l_store_str
	gloves = /obj/item/clothing/gloves/duty/med

/decl/hierarchy/outfit/job/torch/crew/medical/Initialize()
	. = ..()
	BACKPACK_OVERRIDE_MEDICAL

/decl/hierarchy/outfit/job/torch/crew/medical/senior
	name = "Job - Physician"
	uniform = /obj/item/clothing/under/iseo/utility/medical
	shoes = /obj/item/clothing/shoes/jackboots/duty
	id_type = /obj/item/card/id/endeavour/crew/medical/senior
	head = /obj/item/clothing/head/iseo/beret/medical

/decl/hierarchy/outfit/job/torch/crew/medical/senior/civilian
	name = "Job - Physician - Contractor"
	uniform = /obj/item/clothing/under/sterile
	shoes = /obj/item/clothing/shoes
	head = null

/decl/hierarchy/outfit/job/torch/crew/medical/senior/fleet
	name = "Job - Physician - Espatier Corps"
	uniform = /obj/item/clothing/under/espatier/utility/medical
	shoes = /obj/item/clothing/shoes/jackboots/duty
	head = /obj/item/clothing/head/espatier/beret/medical

/decl/hierarchy/outfit/job/torch/crew/medical/junior
	name = "Job - Medical Resident"
	uniform = /obj/item/clothing/under/iseo/utility/medical
	shoes = /obj/item/clothing/shoes/jackboots/duty
	head = /obj/item/clothing/head/iseo/beret/medical

/decl/hierarchy/outfit/job/torch/crew/medical/junior/fleet
	name = "Job - Medical Resident - Espatier Corps"
	uniform = /obj/item/clothing/under/espatier/utility/medical
	shoes = /obj/item/clothing/shoes/jackboots/duty
	head = /obj/item/clothing/head/espatier/beret/medical

/decl/hierarchy/outfit/job/torch/crew/medical/doctor
	name = "Job - Medical Technician"
	uniform = /obj/item/clothing/under/iseo/utility/medical
	shoes = /obj/item/clothing/shoes/jackboots/duty
	l_ear = /obj/item/radio/headset/headset_corpsman
	head = /obj/item/clothing/head/iseo/beret/medical

/decl/hierarchy/outfit/job/torch/crew/medical/doctor/civilian
	name = "Job - Medical Technician - Contractor"
	uniform = /obj/item/clothing/under/sterile
	shoes = /obj/item/clothing/shoes/jackboots
	l_ear = /obj/item/radio/headset/headset_corpsman
	head = null

/decl/hierarchy/outfit/job/torch/crew/medical/doctor/fleet
	name = "Job - Medical Technician - Espatier Corps"
	uniform = /obj/item/clothing/under/espatier/utility/medical
	shoes = /obj/item/clothing/shoes/jackboots/duty
	l_ear = /obj/item/radio/headset/headset_corpsman
	head = /obj/item/clothing/head/espatier/beret/medical

/decl/hierarchy/outfit/job/torch/crew/medical/chemist
	name = "Job - Chemist - Endeavour"
	uniform = /obj/item/clothing/under/iseo/utility/medical
	shoes = /obj/item/clothing/shoes/color/white
	pda_type = /obj/item/modular_computer/pda/medical
	head = /obj/item/clothing/head/iseo/beret/medical

/decl/hierarchy/outfit/job/torch/crew/medical/counselor
	name = "Job - Counselor"
	uniform = /obj/item/clothing/under/iseo/utility/medical
	shoes = /obj/item/clothing/shoes/color/white
	head = /obj/item/clothing/head/iseo/beret/medical

/decl/hierarchy/outfit/job/torch/crew/medical/counselor/fleet
	name = "Job - Counselor - Espatier Corps"
	uniform = /obj/item/clothing/under/espatier/utility/medical
	shoes = /obj/item/clothing/shoes/jackboots/duty
	head = /obj/item/clothing/head/espatier/beret/medical

/decl/hierarchy/outfit/job/torch/crew/medical/counselor/mentalist
	name = "Job - Counselor - Mentalist"
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	shoes = /obj/item/clothing/shoes/dress
