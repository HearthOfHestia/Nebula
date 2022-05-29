/obj/machinery/air_sensor/dist/tank
	stock_part_presets = list(/decl/stock_part_preset/radio/basic_transmitter/air_sensor/tank = 1)

/decl/stock_part_preset/radio/basic_transmitter/air_sensor/tank
	frequency = 1441

/decl/stock_part_preset/radio/receiver/outlet_injector/tank
	frequency = 1441

/decl/stock_part_preset/radio/event_transmitter/outlet_injector/tank
	frequency = 1441


/obj/machinery/atmospherics/unary/outlet_injector/tank
	stock_part_presets = list(
		/decl/stock_part_preset/radio/receiver/outlet_injector/tank = 1,
		/decl/stock_part_preset/radio/event_transmitter/outlet_injector/tank = 1
	)