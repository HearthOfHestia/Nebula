//Endeavour ID Cards (they have to be here to make the outfits work, no way around it)

/obj/item/card/id/endeavour
	name = "identification card"
	desc = "An identification card issued to personnel aboard the ISEO Endeavour."

/obj/item/card/id/endeavour/silver
	desc = "A silver identification card belonging to heads of staff."
	item_state = "silver_id"
	extra_details = list("goldstripe")
	color = "#ccecff"

/obj/item/card/id/endeavour/gold
	desc = "A golden identification card belonging to the Commanding Officer."
	item_state = "gold_id"
	color = "#d4c780"
	extra_details = list("goldstripe")

// SolGov Crew and Contractors
/obj/item/card/id/endeavour/crew
	desc = "An identification card issued to SolGov crewmembers aboard the ISEO Endeavour."
	color = "#d3e3e1"
	color = "#ccecff"


/obj/item/card/id/endeavour/contractor
	desc = "An identification card issued to private contractors aboard the ISEO Endeavour."
	color = COLOR_GRAY80


/obj/item/card/id/endeavour/silver/medical
	detail_color = COLOR_PALE_BLUE_GRAY

/obj/item/card/id/endeavour/crew/medical
	detail_color = COLOR_PALE_BLUE_GRAY

/obj/item/card/id/endeavour/crew/medical/senior

/obj/item/card/id/endeavour/contractor/medical
	detail_color = COLOR_PALE_BLUE_GRAY

/obj/item/card/id/endeavour/contractor/medical/senior

/obj/item/card/id/endeavour/contractor/chemist
	detail_color = COLOR_PALE_BLUE_GRAY

/obj/item/card/id/endeavour/contractor/medical/counselor

/obj/item/card/id/endeavour/silver/security
	detail_color = "#e00000"

/obj/item/card/id/endeavour/crew/security
	detail_color = "#e00000"

/obj/item/card/id/endeavour/crew/security/brigchief
	extra_details = list("onegoldstripe")

/obj/item/card/id/endeavour/crew/security/forensic

/obj/item/card/id/endeavour/silver/engineering
	detail_color = COLOR_SUN

/obj/item/card/id/endeavour/crew/engineering
	detail_color = COLOR_SUN

/obj/item/card/id/endeavour/crew/engineering/senior
	extra_details = list("onegoldstripe")

/obj/item/card/id/endeavour/contractor/engineering
	detail_color = COLOR_SUN

/obj/item/card/id/endeavour/contractor/engineering/roboticist

/obj/item/card/id/endeavour/crew/supply/deckofficer
	detail_color = COLOR_BROWN
	extra_details = list("onegoldstripe")

/obj/item/card/id/endeavour/crew/supply
	detail_color = COLOR_BROWN

/obj/item/card/id/endeavour/contractor/supply
	detail_color = COLOR_BROWN

/obj/item/card/id/endeavour/crew/service //unused
	detail_color = COLOR_CIVIE_GREEN

/obj/item/card/id/endeavour/crew/service/janitor

/obj/item/card/id/endeavour/crew/service/chef

/obj/item/card/id/endeavour/crew/service/chaplain

/obj/item/card/id/endeavour/contractor/service //unused
	detail_color = COLOR_CIVIE_GREEN

/obj/item/card/id/endeavour/contractor/service/bartender

/obj/item/card/id/endeavour/crew/representative
	detail_color = COLOR_COMMAND_BLUE

/obj/item/card/id/endeavour/crew/sea
	detail_color = COLOR_COMMAND_BLUE
	extra_details = list("onegoldstripe")

/obj/item/card/id/endeavour/crew/bridgeofficer
	detail_color = COLOR_COMMAND_BLUE

/obj/item/card/id/endeavour/crew/pathfinder
	detail_color = COLOR_PURPLE
	extra_details = list("onegoldstripe")

/obj/item/card/id/endeavour/crew/explorer
	detail_color = COLOR_PURPLE

/obj/item/card/id/endeavour/crew/pilot
	detail_color = COLOR_PURPLE

// EC Science
/obj/item/card/id/endeavour/silver/research
	detail_color = COLOR_RESEARCH
	color = COLOR_WHITE

/obj/item/card/id/endeavour/crew/research
	desc = "A card issued to science personnel aboard the ISEO Endeavour."
	detail_color = COLOR_RESEARCH

/obj/item/card/id/endeavour/crew/research/senior_scientist
	extra_details = list("onegoldstripe")

/obj/item/card/id/endeavour/crew/research/scientist

//NanoTrasen and Passengers

/obj/item/card/id/endeavour/passenger
	desc = "A card issued to passengers aboard the ISEO Endeavour."
	detail_color = COLOR_PAKISTAN_GREEN

/obj/item/card/id/endeavour/passenger/research
	desc = "A card issued to corporate personnel aboard the ISEO Endeavour."
	detail_color = COLOR_BOTTLE_GREEN

/obj/item/card/id/endeavour/passenger/research/senior_scientist
	extra_details = list("onegoldstripe")

/obj/item/card/id/endeavour/passenger/corporate
	color = COLOR_BOTTLE_GREEN
	detail_color = COLOR_OFF_WHITE

/obj/item/card/id/endeavour/passenger/corporate/liaison
	extra_details = list("onegoldstripe")

//Merchant
/obj/item/card/id/endeavour/merchant
	desc = "An identification card issued to Merchants, indicating their right to sell and buy goods."
	color = COLOR_OFF_WHITE
	detail_color = COLOR_BEIGE
