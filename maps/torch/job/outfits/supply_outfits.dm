/decl/hierarchy/outfit/job/torch/crew/supply
	l_ear = /obj/item/radio/headset/headset_cargo
	abstract_type = /decl/hierarchy/outfit/job/torch/crew/supply
	gloves = /obj/item/clothing/gloves/duty/sup

/decl/hierarchy/outfit/job/torch/crew/supply/New()
	..()
	BACKPACK_OVERRIDE_ENGINEERING

/decl/hierarchy/outfit/job/torch/crew/supply/deckofficer
	name = "Job - Deck Chief"
	l_ear = /obj/item/radio/headset/headset_deckofficer
	uniform = /obj/item/clothing/under/iseo/utility/supply
	shoes = /obj/item/clothing/shoes/jackboots/duty
	id_type = /obj/item/card/id/torch/crew/supply/deckofficer
	pda_type = /obj/item/modular_computer/pda/cargo
	head = /obj/item/clothing/head/iseo/beret/supply

/decl/hierarchy/outfit/job/torch/crew/supply/deckofficer/espatier
	name = "Job - Deck Chief - Espatier"
	uniform = /obj/item/clothing/under/espatier/utility/supply
	shoes = /obj/item/clothing/shoes/jackboots/duty
	head = /obj/item/clothing/head/espatier/beret/supply

/decl/hierarchy/outfit/job/torch/crew/supply/tech
	name = "Job - Deck Technician"
	uniform = /obj/item/clothing/under/iseo/utility/supply
	shoes = /obj/item/clothing/shoes/jackboots/duty
	id_type = /obj/item/card/id/torch/crew/supply
	pda_type = /obj/item/modular_computer/pda/cargo
	head = /obj/item/clothing/head/iseo/beret/supply

/decl/hierarchy/outfit/job/torch/crew/supply/tech/espatier
	name = "Job - Deck Technician - Espatier"
	uniform = /obj/item/clothing/under/espatier/utility/supply
	shoes = /obj/item/clothing/shoes/jackboots/duty
	head = /obj/item/clothing/head/espatier/beret/supply

/decl/hierarchy/outfit/job/torch/crew/supply/contractor
	name = "Job - Supply Assistant"
	uniform = /obj/item/clothing/under/cargotech
	shoes = /obj/item/clothing/shoes/color/brown
	id_type = /obj/item/card/id/torch/contractor/supply
	pda_type = /obj/item/modular_computer/pda/cargo

/decl/hierarchy/outfit/job/torch/passenger/research/prospector
	name = "Job - Prospector"
	uniform = /obj/item/clothing/under/work
	shoes = /obj/item/clothing/shoes/workboots
	id_type = /obj/item/card/id/torch/contractor/supply
	pda_type = /obj/item/modular_computer/pda/mining
	l_ear = /obj/item/radio/headset/headset_mining

/decl/hierarchy/outfit/job/torch/passenger/research/prospector/New()
	..()
	BACKPACK_OVERRIDE_ENGINEERING
