#include "particle_accelerator_areas.dm"

/obj/effect/overmap/visitable/ship/particle_accelerator
	name = "Circumsolar Structure"
	desc = "Sensor array is detecting a linear structure, emitting light radiation. Warning: Active turret heat signatures detected."
	color = "#fffb00"
	instant_contact = TRUE
	vessel_mass = 200000

	initial_generic_waypoints = list(
		"nav_particle_accelerator_1",
		"nav_particle_accelerator_2",
		"nav_particle_accelerator_3",
		"nav_particle_accelerator_antag",
	)

/datum/map_template/ruin/away_site/particle_accelerator
	name = "Circumsolar Particle Accelerator"
	id = "awaysite_particle_accelerator"
	description = "linear structure"
	suffixes = list("particle_accelerator/particle_accelerator.dmm")
	cost = 1
	generate_mining_by_z = 1
	area_usage_test_exempted_root_areas = list(/area/particle_accelerator)
	apc_test_exempt_areas = list(
		/area/particle_accelerator/emitter = NO_VENT,
	)

/obj/effect/shuttle_landmark/particle_accelerator/nav1
	name = "Circumsolar Accelerator Navpoint #1"
	landmark_tag = "nav_particle_accelerator_1"

/obj/effect/shuttle_landmark/particle_accelerator/nav2
	name = "Circumsolar AcceleratorNavpoint #2"
	landmark_tag = "nav_particle_accelerator_2"

/obj/effect/shuttle_landmark/particle_accelerator/nav3
	name = "Circumsolar Accelerator Navpoint #3"
	landmark_tag = "nav_particle_accelerator_3"

/obj/effect/shuttle_landmark/particle_accelerator/nav4
	name = "Circumsolar Accelerator Navpoint #4"
	landmark_tag = "nav_particle_accelerator_antag"

//particle accelerator structure, lightly irradiated
/obj/structure/away_mission/circumsolar_particle_accelerator
	name = "\improper circumsolar particle accelerator"
	desc = "A marvel of technology. Seems to be deprecated..."
	icon = 'maps/away/particle_accelerator/particle_accelerator_machines.dmi'
	icon_state = "pa"
	density = 1
	anchored = 1
	layer = ABOVE_HUMAN_LAYER

/obj/structure/away_mission/circumsolar_particle_accelerator/right
	icon_state = "right"

/obj/structure/away_mission/circumsolar_particle_accelerator/left
	icon_state = "left"

/obj/structure/away_mission/circumsolar_particle_accelerator/centerright
	icon_state = "centerright"

/obj/structure/away_mission/circumsolar_particle_accelerator/centerleft
	icon_state = "centerleft"
	light_power = 3
	light_range = 2
	light_color = "#1885b8"

/obj/structure/away_mission/circumsolar_particle_accelerator/centerleft/Initialize()
	. = ..()
	SSradiation.radiate(src, 1000)

//notes

/obj/item/paper/crumpled/bloody/particle_accelerator_1
	name = "bloody note"
	info = "Work on the newest transverse kicker and transverse pick-up combination site has been slow.<BR><BR>Corpos estimate it'll take another month until the next asteroids are cleared out.<BR>Fucking idiots. I can just juice this baby up and even the largest ship would get dusted in an instant. We should just do the same with anyone and anything in our way."

/obj/item/paper/particle_accelerator_2
	name = "torn note"
	info = "--ower failure is unacceptable. If shift 3 can't manage to keep only ONE of the three required reactors running, we are going to send them home. And they know what that means.<BR> Keep your men in check, foreman."

/obj/item/paper/particle_accelerator_3
	name = "shredded scrap"
	info = "--recent difficulties with ███ █████ ██████ ███ ███ ████ ████████████ have made a continuation of project ███████████ ████████ ███████████-- <BR> We implore you--<BR><BR><BR> --unfeasible and uneconomic--"

//turrets

/obj/machinery/porta_turret/stationary/particle_accelerator
	name = "unmanned turret"
	desc = "An unmarked turret armed with a laser gun. A red light is blinking near the mount."
	idle_power_usage = 0
	enabled = 1
	ailock = 1
	check_access = 1
	initial_access = list(list(access_syndicate))

//power

/obj/machinery/power/smes/buildable/preset/particle_accelerator
	uncreated_component_parts = list(
		/obj/item/stock_parts/smes_coil/super_io = 2)
	_output_maxed = TRUE
	_output_on = TRUE
	_fully_charged = TRUE
	name = "power storage unit"
	desc = "A high-capacity superconducting magnetic energy storage (SMES) unit."

//radiation tech corpse

/obj/abstract/landmark/corpse/radiation_tech
	name = "Radiation Technician"
	corpse_outfits = list(/decl/hierarchy/outfit/job/particle_accelerator/radiation_tech)

/decl/hierarchy/outfit/job/particle_accelerator/radiation_tech
	l_ear = /obj/item/radio/headset
	suit = /obj/item/clothing/suit/radiation
	head = /obj/item/clothing/head/radiation
	shoes = /obj/item/clothing/shoes/color/black
	uniform = /obj/item/clothing/under/color/grey