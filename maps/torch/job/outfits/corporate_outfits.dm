/decl/hierarchy/outfit/job/torch/passenger/research
	abstract_type = /decl/hierarchy/outfit/job/torch/passenger/research
	l_ear = /obj/item/radio/headset/endeavournanotrasen

/decl/hierarchy/outfit/job/torch/passenger/research/scientist
	name = "Job - Scientist - Endeavour"
	uniform = /obj/item/clothing/under/color/white
	shoes = /obj/item/clothing/shoes/color/white
	pda_type = /obj/item/modular_computer/pda/science
	//id_types = list(/obj/item/card/id/endeavour/passenger/research/scientist)

/decl/hierarchy/outfit/job/torch/passenger/research/scientist/Initialize()
	. = ..()
	BACKPACK_OVERRIDE_RESEARCH

/decl/hierarchy/outfit/job/torch/passenger/research/assist
	name = "Job - Research Assistant - Endeavour"
	uniform = /obj/item/clothing/under/color/white
	shoes = /obj/item/clothing/shoes/color/white
	pda_type = /obj/item/modular_computer/pda/science
	id_type = /obj/item/card/id/endeavour/passenger/research

/decl/hierarchy/outfit/job/torch/passenger/research/assist/testsubject
	name = "Job - Testing Assistant"
	//uniform = /obj/item/clothing/under/rank/ntwork