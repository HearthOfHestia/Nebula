/obj/machinery/door/airlock/autoname/endeavour/

/obj/machinery/door/airlock/autoname/endeavour/mining
	door_color = COLOR_PALE_ORANGE
	stripe_color = COLOR_BEASTY_BROWN

/obj/machinery/door/airlock/autoname/endeavour/command
	door_color = COLOR_COMMAND_BLUE

/obj/machinery/door/airlock/autoname/endeavour/security
	door_color = COLOR_NT_RED

/obj/machinery/door/airlock/autoname/endeavour/security/research
	door_color = COLOR_WHITE
	stripe_color = COLOR_NT_RED

/obj/machinery/door/airlock/autoname/endeavour/medical
	door_color = COLOR_WHITE
	stripe_color = COLOR_DEEP_SKY_BLUE

/obj/machinery/door/airlock/autoname/endeavour/virology
	door_color = COLOR_WHITE
	stripe_color = COLOR_GREEN

/obj/machinery/door/airlock/autoname/endeavour/atmos
	door_color = COLOR_AMBER
	stripe_color = COLOR_CYAN

/obj/machinery/door/airlock/autoname/endeavour/research
	door_color = COLOR_WHITE
	stripe_color = COLOR_BOTTLE_GREEN

/obj/machinery/door/airlock/autoname/endeavour/science
	door_color = COLOR_WHITE
	stripe_color = COLOR_VIOLET

/obj/machinery/door/airlock/autoname/endeavour/sol
	door_color = COLOR_BLUE_GRAY

/obj/machinery/door/airlock/autoname/endeavour/civilian
	stripe_color = COLOR_CIVIE_GREEN

/obj/machinery/door/airlock/autoname/endeavour/chaplain
	stripe_color = COLOR_GRAY20

/obj/machinery/door/airlock/autoname/endeavour/engineering
	door_color = COLOR_AMBER

/obj/machinery/door/airlock/autoname/endeavour/maintenance
	stripe_color = COLOR_AMBER

// Glass airlock presets

/obj/machinery/door/airlock/autoname/endeavour/glass
	name = "Glass Airlock"
	icon_state = "preview_glass"
	hitsound = 'sound/effects/Glasshit.ogg'
	maxhealth = 300
	explosion_resistance = 5
	opacity = FALSE
	glass = TRUE

/obj/machinery/door/airlock/autoname/endeavour/glass/command
	door_color = COLOR_COMMAND_BLUE
	stripe_color = COLOR_SKY_BLUE

/obj/machinery/door/airlock/autoname/endeavour/glass/security
	door_color = COLOR_NT_RED
	stripe_color = COLOR_ORANGE

/obj/machinery/door/airlock/autoname/endeavour/glass/engineering
	door_color = COLOR_AMBER
	stripe_color = COLOR_RED

/obj/machinery/door/airlock/autoname/endeavour/glass/medical
	door_color = COLOR_WHITE
	stripe_color = COLOR_DEEP_SKY_BLUE

/obj/machinery/door/airlock/autoname/endeavour/glass/mining
	door_color = COLOR_PALE_ORANGE
	stripe_color = COLOR_BEASTY_BROWN

/obj/machinery/door/airlock/autoname/endeavour/glass/atmos
	door_color = COLOR_AMBER
	stripe_color = COLOR_CYAN

/obj/machinery/door/airlock/autoname/endeavour/glass/research
	door_color = COLOR_WHITE
	stripe_color = COLOR_RESEARCH

/obj/machinery/door/airlock/autoname/endeavour/glass/science
	door_color = COLOR_WHITE
	stripe_color = COLOR_VIOLET

/obj/machinery/door/airlock/autoname/endeavour/glass/sol
	door_color = COLOR_BLUE_GRAY
	stripe_color = COLOR_AMBER

/obj/machinery/door/airlock/autoname/endeavour/glass/freezer
	door_color = COLOR_WHITE

/obj/machinery/door/airlock/autoname/endeavour/glass/civilian
	stripe_color = COLOR_CIVIE_GREEN

/obj/machinery/door/airlock/autoname/endeavour/glass/mining
	door_color = COLOR_PALE_ORANGE
	stripe_color = COLOR_BEASTY_BROWN

/obj/machinery/door/airlock/autoname/endeavour/glass/engineering
	door_color = COLOR_AMBER

/obj/machinery/door/airlock/autoname/endeavour/glass/hydroponic
	door_color = COLOR_CIVIE_GREEN

/obj/machinery/door/airlock/hatch/autoname/endeavour

/obj/machinery/door/airlock/hatch/autoname/endeavour/Initialize()
	. = ..()
	var/area/A = get_area(src)
	SetName("[A.name]")

/obj/machinery/door/airlock/hatch/autoname/endeavour/general
	stripe_color = COLOR_CIVIE_GREEN

/obj/machinery/door/airlock/hatch/autoname/endeavour/maintenance
	stripe_color = COLOR_AMBER

/obj/machinery/door/airlock/hatch/autoname/endeavour/command
	stripe_color = COLOR_COMMAND_BLUE

/obj/machinery/door/airlock/hatch/autoname/endeavour/engineering
	stripe_color = COLOR_AMBER

/obj/machinery/door/airlock/hatch/autoname/endeavour/science
	stripe_color = COLOR_PURPLE