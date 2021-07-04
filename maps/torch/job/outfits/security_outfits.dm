/decl/hierarchy/outfit/job/torch/crew/security
	hierarchy_type = /decl/hierarchy/outfit/job/torch/crew/security
	l_ear = /obj/item/radio/headset/headset_sec
	pda_slot = slot_l_store_str

/decl/hierarchy/outfit/job/torch/crew/security/New()
	..()
	BACKPACK_OVERRIDE_SECURITY

/decl/hierarchy/outfit/job/torch/crew/security/brig_chief
	name = OUTFIT_JOB_NAME("Brig Chief")
	uniform = /obj/item/clothing/under/iseo/utility/security
	shoes = /obj/item/clothing/shoes/jackboots/duty
	id_type = /obj/item/card/id/torch/crew/security/brigchief
	pda_type = /obj/item/modular_computer/pda/security

/decl/hierarchy/outfit/job/torch/crew/security/brig_chief/espatier
	name = OUTFIT_JOB_NAME("Brig Chief - Espatier")
	uniform = /obj/item/clothing/under/espatier/utility/security
	shoes = /obj/item/clothing/shoes/jackboots/duty

/decl/hierarchy/outfit/job/torch/crew/security/forensic_tech
	name = OUTFIT_JOB_NAME("Forensic Technician - Torch")
	uniform = /obj/item/clothing/under/iseo/utility/security
	shoes = /obj/item/clothing/shoes/jackboots/duty
	id_type = /obj/item/card/id/torch/crew/security/forensic
	pda_type = /obj/item/modular_computer/pda/forensics

/decl/hierarchy/outfit/job/torch/crew/security/forensic_tech/espatier
	name = OUTFIT_JOB_NAME("Forensic Technician - Espatier")
	uniform = /obj/item/clothing/under/espatier/utility/security
	shoes = /obj/item/clothing/shoes/jackboots/duty

/decl/hierarchy/outfit/job/torch/crew/security/maa
	name = OUTFIT_JOB_NAME("Master at Arms")
	uniform = /obj/item/clothing/under/iseo/utility/security
	shoes = /obj/item/clothing/shoes/jackboots/duty
	id_type = /obj/item/card/id/torch/crew/security
	pda_type = /obj/item/modular_computer/pda/security

/decl/hierarchy/outfit/job/torch/crew/security/maa/espatier
	name = OUTFIT_JOB_NAME("Master at Arms - Espatier")
	uniform = /obj/item/clothing/under/espatier/utility/security
	shoes = /obj/item/clothing/shoes/jackboots/duty
