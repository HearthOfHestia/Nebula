/decl/hierarchy/outfit/job/torch/crew/engineering
	abstract_type = /decl/hierarchy/outfit/job/torch/crew/engineering
	l_ear = /obj/item/radio/headset/headset_eng
	pda_slot = slot_l_store_str

/decl/hierarchy/outfit/job/torch/crew/engineering/New()
	..()
	BACKPACK_OVERRIDE_ENGINEERING

/decl/hierarchy/outfit/job/torch/crew/engineering/senior_engineer
	name = "Job - Senior Engineer"
	uniform = /obj/item/clothing/under/iseo/utility/engineering
	shoes = /obj/item/clothing/shoes/jackboots/duty
	id_type = /obj/item/card/id/torch/crew/engineering/senior
	pda_type = /obj/item/modular_computer/pda/heads/ce
	head = /obj/item/clothing/head/iseo/beret/engineering
	gloves = /obj/item/clothing/gloves/duty/eng

/decl/hierarchy/outfit/job/torch/crew/engineering/senior_engineer/espatier
	name = "Job - Senior Engineer - Espatier"
	uniform = /obj/item/clothing/under/espatier/utility/engineering
	shoes = /obj/item/clothing/shoes/jackboots/duty
	head = /obj/item/clothing/head/espatier/beret/engineering

/decl/hierarchy/outfit/job/torch/crew/engineering/engineer
	name = "Job - Engineer - Torch"
	uniform = /obj/item/clothing/under/iseo/utility/engineering
	shoes = /obj/item/clothing/shoes/jackboots/duty
	id_type = /obj/item/card/id/torch/crew/engineering
	pda_type = /obj/item/modular_computer/pda/engineering
	head = /obj/item/clothing/head/iseo/beret/engineering
	gloves = /obj/item/clothing/gloves/duty/eng

/decl/hierarchy/outfit/job/torch/crew/engineering/engineer/espatier
	name = "Job - Engineer - Espatier"
	uniform = /obj/item/clothing/under/espatier/utility/engineering
	shoes = /obj/item/clothing/shoes/jackboots/duty
	head = /obj/item/clothing/head/espatier/beret/engineering

/decl/hierarchy/outfit/job/torch/crew/engineering/contractor
	name = "Job - Engineering Assistant"
	uniform = /obj/item/clothing/under/engineer
	shoes = /obj/item/clothing/shoes/workboots
	id_type = /obj/item/card/id/torch/contractor/engineering
	pda_type = /obj/item/modular_computer/pda/engineering
	head = /obj/item/clothing/head/iseo/beret/engineering

/decl/hierarchy/outfit/job/torch/crew/engineering/roboticist
	name = "Job - Roboticist - Contractor"
	uniform = /obj/item/clothing/under/roboticist
	shoes = /obj/item/clothing/shoes/color/black
	id_type = /obj/item/card/id/torch/contractor/engineering/roboticist
	pda_type = /obj/item/modular_computer/pda/roboticist
	gloves = /obj/item/clothing/gloves/duty/eng

/decl/hierarchy/outfit/job/torch/crew/engineering/roboticist/iseo
	name = "Job - Roboticist - Torch"
	uniform = /obj/item/clothing/under/iseo/utility/engineering
	shoes = /obj/item/clothing/shoes/jackboots/duty
	id_type = /obj/item/card/id/torch/contractor/engineering/roboticist
	pda_type = /obj/item/modular_computer/pda/roboticist
	head = /obj/item/clothing/head/iseo/beret/engineering

/decl/hierarchy/outfit/job/torch/crew/engineering/roboticist/espatier
	name = "Job - Roboticist - Espatier"
	uniform = /obj/item/clothing/under/espatier/utility/engineering
	id_type = /obj/item/card/id/torch/contractor/engineering/roboticist
	shoes = /obj/item/clothing/shoes/jackboots/duty
	pda_type = /obj/item/modular_computer/pda/roboticist
	head = /obj/item/clothing/head/espatier/beret/engineering
