/obj/machinery/atmospherics/unary/rtg //Like a heater, but uses no power. Icons from Natakilar's fission reactor PR on Nebula, #1284
	name = "radiothermal heater"
	desc = "A gas-cooled radiopile which generates heat. Self-regulating to maintain a temperature of approximately 1000k, rated output 150kw."
	icon = 'maps/torch/icons/obj/fission_core.dmi'
	icon_state = "fission_core"
	var/regulate_temp = 1000 //kelvin
	var/heating_power = 150 KILOWATTS

/obj/machinery/atmospherics/unary/rtg/Process()
	..()
	if(LAZYLEN(nodes_to_networks) && air_contents.total_moles && air_contents.temperature < regulate_temp)
		air_contents.add_thermal_energy(heating_power * HEATER_PERF_MULT)
		update_networks()
		SSradiation.radiate(src, 100)