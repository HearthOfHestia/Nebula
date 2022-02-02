var/global/const/CAMERA_CHANNEL_BRIDGE      = "Bridge"
var/global/const/CAMERA_CHANNEL_EXPEDITION  = "Expedition"
var/global/const/CAMERA_CHANNEL_FIRST_DECK  = "First Deck"
var/global/const/CAMERA_CHANNEL_SECOND_DECK = "Second Deck"
var/global/const/CAMERA_CHANNEL_THIRD_DECK  = "Third Deck"
var/global/const/CAMERA_CHANNEL_SUPPLY      = "Supply"
var/global/const/CAMERA_CHANNEL_HANGAR      = "Hangar"
var/global/const/CAMERA_CHANNEL_EXPLO       = "Exploration"

/datum/map/endeavour/get_network_access(var/network)
	switch(network)
		if(CAMERA_CHANNEL_BRIDGE)
			return access_heads
		if(CAMERA_CHANNEL_SUPPLY)
			return access_mailsorting
		if(CAMERA_CHANNEL_HANGAR)
			return access_hangar
		if(CAMERA_CHANNEL_EXPLO)
			return access_explorer
	return get_shared_network_access(network) || ..()

//
// Cameras
//

// Networks
/obj/machinery/camera/network/bridge
	preset_channels = list(CAMERA_CHANNEL_BRIDGE)
	initial_access = list(access_heads)

/obj/machinery/camera/network/expedition
	preset_channels = list(CAMERA_CHANNEL_EXPEDITION)

/obj/machinery/camera/network/first_deck
	preset_channels = list(CAMERA_CHANNEL_FIRST_DECK)

/obj/machinery/camera/network/second_deck
	preset_channels = list(CAMERA_CHANNEL_SECOND_DECK)

/obj/machinery/camera/network/supply
	preset_channels = list(CAMERA_CHANNEL_SUPPLY)
	initial_access = list(access_mailsorting)

/obj/machinery/camera/network/hangar
	preset_channels = list(CAMERA_CHANNEL_HANGAR)
	initial_access = list(access_hangar)

/obj/machinery/camera/network/exploration
	preset_channels = list(CAMERA_CHANNEL_EXPLO)
	initial_access = list(access_explorer)

/obj/machinery/camera/network/third_deck
	preset_channels = list(CAMERA_CHANNEL_THIRD_DECK)

/obj/machinery/camera/network/command
	preset_channels = list(CAMERA_CHANNEL_COMMAND)
	initial_access = list(access_heads)

/obj/machinery/camera/network/crescent
	preset_channels = list(CAMERA_CHANNEL_CRESCENT)

/obj/machinery/camera/network/engine
	preset_channels = list(CAMERA_CHANNEL_ENGINE)
	initial_access = list(access_engine)

// All Upgrades
/obj/machinery/camera/all/command
	preset_channels = list(CAMERA_CHANNEL_COMMAND)
	initial_access = list(access_heads)


//
// SMES units
//

// Substation SMES
/obj/machinery/power/smes/buildable/preset/endeavour/substation
	uncreated_component_parts = list(/obj/item/stock_parts/smes_coil = 1) // Note that it gets one more from global/construction
	_input_maxed = TRUE
	_output_maxed = TRUE

// Substation SMES (charged and with full I/O setting)
/obj/machinery/power/smes/buildable/preset/endeavour/substation_full
	uncreated_component_parts = list(/obj/item/stock_parts/smes_coil = 1)
	_input_maxed = TRUE
	_output_maxed = TRUE
	_input_on = TRUE
	_output_on = TRUE
	_fully_charged = TRUE

// Main Engine output SMES
/obj/machinery/power/smes/buildable/preset/endeavour/engine_main
	uncreated_component_parts = list(
		/obj/item/stock_parts/smes_coil/super_io = 2,
		/obj/item/stock_parts/smes_coil/super_capacity = 2)
	_input_maxed = TRUE
	_output_maxed = TRUE
	_input_on = TRUE
	_output_on = TRUE
	_fully_charged = TRUE

// Shuttle SMES
/obj/machinery/power/smes/buildable/preset/endeavour/shuttle
	uncreated_component_parts = list(
		/obj/item/stock_parts/smes_coil/super_io = 1,
		/obj/item/stock_parts/smes_coil/super_capacity = 1)
	_input_maxed = TRUE
	_output_maxed = TRUE
	_input_on = TRUE
	_output_on = TRUE
	_fully_charged = TRUE

// Hangar SMES. Charges the shuttles so needs a pretty big throughput.
/obj/machinery/power/smes/buildable/preset/endeavour/hangar
	uncreated_component_parts = list(
		/obj/item/stock_parts/smes_coil/super_io = 2)
	_input_maxed = TRUE
	_output_maxed = TRUE
	_input_on = TRUE
	_output_on = TRUE
	_fully_charged = TRUE

var/global/const/CAMERA_CHANNEL_COMMAND = "Command"
var/global/const/CAMERA_CHANNEL_ENGINE  = "Engine"
var/global/const/HAIL_FREQ = 1463

/datum/map/proc/get_shared_network_access(var/network)
	switch(network)
		if(CAMERA_CHANNEL_COMMAND)
			return access_heads
		if(CAMERA_CHANNEL_ENGINE)
			return access_engine

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