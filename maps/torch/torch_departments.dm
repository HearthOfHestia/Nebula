/decl/department/engineering
	name = "Engineering"
	announce_channel = "Engineering"
	colour = "#ffa500"
	display_priority = 3
	display_color = "#fff5cc"

/obj/item/robot_module/engineering
	associated_department = /decl/department/engineering

/obj/machinery/network/pager/engineering
	department = /decl/department/engineering

/decl/department/security
	name = "Security"
	announce_channel = "Security"
	colour = "#dd0000"
	display_priority = 7
	display_color = "#ffddf0"

/obj/item/robot_module/security
	associated_department = /decl/department/security

/obj/machinery/network/pager/security
	department = /decl/department/security

/decl/department/medical
	name = "Medical"
	goals = list(/datum/goal/department/medical_fatalities)
	announce_channel = "Medical"
	colour = COLOR_BABY_BLUE
	display_priority = 6
	display_color = "#ffeef0"

/obj/item/robot_module/medical
	associated_department = /decl/department/medical

/obj/machinery/network/pager/medical
	department = /decl/department/medical

/decl/department/science
	name = "Science"
	goals = list(/datum/goal/department/extract_slime_cores)
	announce_channel = "Science"
	colour = "#a65ba6"
	display_color = "#e79fff"
	display_priority = 5

/obj/item/robot_module/research
	associated_department = /decl/department/science

/obj/machinery/network/pager/science
	department = /decl/department/science

/decl/department/civilian
	name = "Civilian"
	display_priority = 1
	display_color = "#dddddd"

/decl/department/command
	name = "Command"
	colour = COLOR_COMMAND_BLUE
	display_priority = 9
	display_color = "#ccccff"

/obj/machinery/network/pager
	department = /decl/department/command

/decl/department/miscellaneous
	name = "Misc"
	display_priority = -1
	display_color = "#ccffcc"

/decl/department/service
	name = "Service"
	announce_channel = "Service"
	colour = "#88b764"
	display_color = "#d0f0c0"
	display_priority = 1

/decl/department/supply
	name = "Supply"
	announce_channel = "Supply"
	colour = "#bb9040"
	display_color = "#f0e68c"
	display_priority = 2

/obj/machinery/network/pager/cargo
	department = /decl/department/supply

/decl/department/support
	name = "Support"
	announce_channel = "Command"
	colour = "#800080"
	display_color = "#87ceeb"
	display_priority = 8

/decl/department/exploration
	name = "Exploration"
	announce_channel = "Exploration"
	colour = "#68099e"
	display_color = "#b784a7"
	display_priority = 4