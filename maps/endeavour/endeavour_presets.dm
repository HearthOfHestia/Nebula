var/global/const/HAIL_FREQ = 1463

/datum/map/endeavour/default_internal_channels()
	return list(
		num2text(PUB_FREQ)   = list(),
		num2text(AI_FREQ)    = list(access_synth),
		num2text(ENT_FREQ)   = list(),
		num2text(ERT_FREQ)   = list(access_cent_specops),
		num2text(COMM_FREQ)  = list(access_radio_comm),
		num2text(ENG_FREQ)   = list(access_radio_eng),
		num2text(MED_FREQ)   = list(access_radio_med),
		num2text(MED_I_FREQ) = list(access_radio_med),
		num2text(SEC_FREQ)   = list(access_radio_sec),
		num2text(SEC_I_FREQ) = list(access_radio_sec),
		num2text(SCI_FREQ)   = list(access_radio_sci),
		num2text(SUP_FREQ)   = list(access_radio_sup),
		num2text(SRV_FREQ)   = list(access_radio_serv),
		num2text(EXP_FREQ)   = list(access_radio_exp),
		num2text(HAIL_FREQ)  = list(),
	)

/decl/stock_part_preset/radio/event_transmitter/access_button/shuttle/opportunity
	frequency = 1431

/obj/machinery/button/access/shuttle/opportunity
	stock_part_presets = list(/decl/stock_part_preset/radio/event_transmitter/access_button/shuttle/opportunity = 1)

/obj/machinery/button/access/shuttle/opportunity/interior
	command = "cycle_interior"

/obj/machinery/button/access/shuttle/opportunity/exterior
	command = "cycle_exterior"

/decl/stock_part_preset/radio/basic_transmitter/airlock_sensor/shuttle/opportunity
	frequency = 1431

/obj/machinery/fabricator/bioprinter/filled
	prefilled = TRUE

///I'm actually too lazy to mapedit this shit
//Too bad!

/obj/item/radio/intercom/bump/east
	pixel_x = 24
	dir = WEST

/obj/item/radio/intercom/bump/west
	pixel_x = -24
	dir = EAST

/obj/item/radio/intercom/bump/north
	pixel_y = 24
	dir = SOUTH

/obj/item/radio/intercom/bump/south
	pixel_y = -32
	dir = NORTH

//Head of staff request consoles, mostly for announcements.

/obj/machinery/newscaster/bump/north
	pixel_y = 32
	base_type = /obj/machinery/newscaster

/obj/machinery/newscaster/bump/south
	pixel_y = -32
	base_type = /obj/machinery/newscaster

/obj/machinery/newscaster/bump/east
	pixel_x = 32
	base_type = /obj/machinery/newscaster

/obj/machinery/newscaster/bump/west
	pixel_x = -32
	base_type = /obj/machinery/newscaster

// Wall-mounted emergency lockers, an adjunct to skinsuit lockers.
/obj/structure/closet/walllocker/emerglocker/north
	pixel_y = 32
	dir = SOUTH

/obj/structure/closet/walllocker/emerglocker/south
	pixel_y = -32
	dir = NORTH

/obj/structure/closet/walllocker/emerglocker/west
	pixel_x = -32
	dir = WEST

/obj/structure/closet/walllocker/emerglocker/east
	pixel_x = 32
	dir = EAST