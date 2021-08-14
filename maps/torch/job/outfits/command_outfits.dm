/decl/hierarchy/outfit/job/torch/crew/command
	name = "Job - Torch Command Outfit"
	abstract_type = /decl/hierarchy/outfit/job/torch/crew/command
	l_ear = /obj/item/radio/headset/headset_com

/decl/hierarchy/outfit/job/torch/crew/command/CO
	name = "Job - Commanding Officer"
	glasses = /obj/item/clothing/glasses/sunglasses
	uniform = /obj/item/clothing/under/iseo/utility/command
	l_ear = /obj/item/radio/headset/heads/torchexec
	shoes = /obj/item/clothing/shoes/jackboots/duty
	head = /obj/item/clothing/head/iseo/beret/command
	id_type = /obj/item/card/id/torch/gold
	pda_type = /obj/item/modular_computer/pda/captain
	gloves = /obj/item/clothing/gloves/duty/com

/decl/hierarchy/outfit/job/torch/crew/command/CO/Initialize()
	. = ..()
	backpack_overrides[/decl/backpack_outfit/backpack] = /obj/item/storage/backpack/captain
	backpack_overrides[/decl/backpack_outfit/satchel] = /obj/item/storage/backpack/satchel/cap
	backpack_overrides[/decl/backpack_outfit/messenger_bag] = /obj/item/storage/backpack/messenger/com

/decl/hierarchy/outfit/job/torch/crew/command/XO
	name = "Job - Executive Officer"
	uniform = /obj/item/clothing/under/iseo/utility/command
	l_ear = /obj/item/radio/headset/heads/torchexec
	shoes = /obj/item/clothing/shoes/jackboots/duty
	id_type = /obj/item/card/id/torch/silver
	pda_type = /obj/item/modular_computer/pda/heads/hop
	gloves = /obj/item/clothing/gloves/duty/com

/decl/hierarchy/outfit/job/torch/crew/command/XO/espatier
	name = "Job - Executive Officer - Espatier Corps"
	head = /obj/item/clothing/head/espatier/beret/command
	uniform = /obj/item/clothing/under/espatier/utility/command
	shoes = /obj/item/clothing/shoes/jackboots/duty

/decl/hierarchy/outfit/job/torch/crew/command/cmo
	name = "Job - Chief Medical Officer - Torch"
	l_ear  =/obj/item/radio/headset/heads/cmo
	uniform = /obj/item/clothing/under/iseo/utility/medical
	shoes = /obj/item/clothing/shoes/jackboots/duty
	id_type = /obj/item/card/id/torch/silver/medical
	pda_type = /obj/item/modular_computer/pda/heads/cmo
	pda_slot = slot_l_store_str
	head = /obj/item/clothing/head/iseo/beret/medical
	gloves = /obj/item/clothing/gloves/duty/med

/decl/hierarchy/outfit/job/torch/crew/command/cmo/Initialize()
	. = ..()
	BACKPACK_OVERRIDE_MEDICAL

/decl/hierarchy/outfit/job/torch/crew/command/cmo/espatier
	name = "Job - Chief Medical Officer - Espatier Corps"
	uniform = /obj/item/clothing/under/espatier/utility/medical
	shoes = /obj/item/clothing/shoes/jackboots/duty
	head = /obj/item/clothing/head/espatier/beret/medical

/decl/hierarchy/outfit/job/torch/crew/command/chief_engineer
	name = "Job - Chief Engineer - Torch"
	uniform = /obj/item/clothing/under/iseo/utility/engineering
	shoes = /obj/item/clothing/shoes/jackboots/duty
	l_ear = /obj/item/radio/headset/heads/ce
	id_type = /obj/item/card/id/torch/silver/engineering
	pda_type = /obj/item/modular_computer/pda/heads/ce
	pda_slot = slot_l_store_str
	head = /obj/item/clothing/head/iseo/beret/engineering
	gloves = /obj/item/clothing/gloves/duty/eng

/decl/hierarchy/outfit/job/torch/crew/command/chief_engineer/Initialize()
	. = ..()
	BACKPACK_OVERRIDE_ENGINEERING

/decl/hierarchy/outfit/job/torch/crew/command/chief_engineer/espatier
	name = "Job - Chief Engineer - Espatier Corps"
	uniform = /obj/item/clothing/under/espatier/utility/engineering
	shoes = /obj/item/clothing/shoes/jackboots/duty
	head = /obj/item/clothing/head/espatier/beret/engineering

/decl/hierarchy/outfit/job/torch/crew/command/cos
	name = "Job - Chief of Security"
	l_ear = /obj/item/radio/headset/heads/cos
	uniform = /obj/item/clothing/under/iseo/utility/security
	shoes = /obj/item/clothing/shoes/jackboots/duty
	id_type = list(/obj/item/card/id/torch/silver/security)
	pda_type = /obj/item/modular_computer/pda/heads/hos
	head = /obj/item/clothing/head/iseo/beret/security
	gloves = /obj/item/clothing/gloves/duty/sec

/decl/hierarchy/outfit/job/torch/crew/command/cos/Initialize()
	. = ..()
	BACKPACK_OVERRIDE_SECURITY

/decl/hierarchy/outfit/job/torch/crew/command/cos/espatier
	name = "Job - Chief of Security - Espatier Corps"
	uniform = /obj/item/clothing/under/espatier/utility/security
	shoes = /obj/item/clothing/shoes/jackboots/duty
	head = /obj/item/clothing/head/espatier/beret/security

/decl/hierarchy/outfit/job/torch/passenger/workplace_liaison
	name = "Job - Workplace Liaison"
	l_ear = /obj/item/radio/headset/heads/torchntcommand
	uniform = /obj/item/clothing/under/suit_jacket/corp
	shoes = /obj/item/clothing/shoes/dress
	id_type = list(/obj/item/card/id/torch/passenger/corporate/liaison)
	pda_type = /obj/item/modular_computer/pda/heads/paperpusher
	backpack_contents = list(/obj/item/clothing/accessory/badge/nanotrasen = 1)

/decl/hierarchy/outfit/job/torch/passenger/corporate_bodyguard
	name = "Job - Executive Assistant"
	l_ear =    /obj/item/radio/headset/heads/torchcorp
	uniform =  /obj/item/clothing/under/suit_jacket/corp
	shoes =    /obj/item/clothing/shoes/dress
	id_type = list( /obj/item/card/id/torch/passenger/corporate)
	pda_type = /obj/item/modular_computer/pda/heads/paperpusher

/decl/hierarchy/outfit/job/torch/crew/representative
	name = "Job - SolGov Representative"
	l_ear = /obj/item/radio/headset/headset_com
	uniform = /obj/item/clothing/under/internalaffairs
	suit = /obj/item/clothing/suit/storage/toggle/suit/black
	shoes = /obj/item/clothing/shoes/dress
	id_type = list(/obj/item/card/id/torch/crew/representative)
	pda_type = /obj/item/modular_computer/pda/heads/paperpusher

/decl/hierarchy/outfit/job/torch/crew/command/sea/espatier
	name = "Job - Senior Enlisted Advisor - Espatier Corps"
	uniform = /obj/item/clothing/under/espatier/utility/command
	shoes = /obj/item/clothing/shoes/jackboots/duty
	l_ear = /obj/item/radio/headset/sea
	id_type = list(/obj/item/card/id/torch/crew/sea)
	pda_type = /obj/item/modular_computer/pda/heads
	gloves = /obj/item/clothing/gloves/duty/com

/decl/hierarchy/outfit/job/torch/crew/command/bridgeofficer
	name = "Job - Bridge Officer"
	uniform = /obj/item/clothing/under/iseo/utility/command
	shoes = /obj/item/clothing/shoes/jackboots/duty
	id_type = list(/obj/item/card/id/torch/crew/bridgeofficer)
	pda_type = /obj/item/modular_computer/pda/heads
	l_ear = /obj/item/radio/headset/bridgeofficer
	gloves = /obj/item/clothing/gloves/duty/com

/decl/hierarchy/outfit/job/torch/crew/command/bridgeofficer/espatier
	name = "Job - Bridge Officer - Espatier Corps"
	uniform = /obj/item/clothing/under/espatier/utility/command
	shoes = /obj/item/clothing/shoes/jackboots/duty
