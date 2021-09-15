/decl/hierarchy/outfit/job/torch/crew/security
	abstract_type = /decl/hierarchy/outfit/job/torch/crew/security
	l_ear = /obj/item/radio/headset/headset_sec
	pda_slot = slot_l_store_str
	gloves = /obj/item/clothing/gloves/duty/sec

/decl/hierarchy/outfit/job/torch/crew/security/Initialize()
	. = ..()
	BACKPACK_OVERRIDE_SECURITY

/decl/hierarchy/outfit/job/torch/crew/security/brig_chief
	name = "Job - Brig Chief"
	uniform = /obj/item/clothing/under/iseo/utility/security
	shoes = /obj/item/clothing/shoes/jackboots/duty
	id_type = /obj/item/card/id/torch/crew/security/brigchief
	pda_type = /obj/item/modular_computer/pda/security
	head = /obj/item/clothing/head/iseo/beret/security

/decl/hierarchy/outfit/job/torch/crew/security/brig_chief/espatier
	name = "Job - Brig Chief - Espatier"
	uniform = /obj/item/clothing/under/espatier/utility/security
	shoes = /obj/item/clothing/shoes/jackboots/duty
	head = /obj/item/clothing/head/espatier/beret/security

/decl/hierarchy/outfit/job/torch/crew/security/forensic_tech
	name = "Job - Forensic Technician - Torch"
	uniform = /obj/item/clothing/under/iseo/utility/security
	shoes = /obj/item/clothing/shoes/jackboots/duty
	id_type = /obj/item/card/id/torch/crew/security/forensic
	pda_type = /obj/item/modular_computer/pda/forensics
	head = /obj/item/clothing/head/iseo/beret/security

/decl/hierarchy/outfit/job/torch/crew/security/forensic_tech/espatier
	name = "Job - Forensic Technician - Espatier"
	uniform = /obj/item/clothing/under/espatier/utility/security
	shoes = /obj/item/clothing/shoes/jackboots/duty
	head = /obj/item/clothing/head/espatier/beret/security

/decl/hierarchy/outfit/job/torch/crew/security/maa
	name = "Job - Master at Arms"
	uniform = /obj/item/clothing/under/iseo/utility/security
	shoes = /obj/item/clothing/shoes/jackboots/duty
	id_type = /obj/item/card/id/torch/crew/security
	pda_type = /obj/item/modular_computer/pda/security
	head = /obj/item/clothing/head/iseo/beret/security

/decl/hierarchy/outfit/job/torch/crew/security/maa/espatier
	name = "Job - Master at Arms - Espatier"
	uniform = /obj/item/clothing/under/espatier/utility/security
	shoes = /obj/item/clothing/shoes/jackboots/duty
	head = /obj/item/clothing/head/espatier/beret/security
