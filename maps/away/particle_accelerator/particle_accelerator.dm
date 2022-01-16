#include "particle_accelerator_areas.dm"

/obj/effect/overmap/visitable/ship/particle_accelerator
	name = "circumsolar structure"
	desc = "Sensor array is detecting a large ring like structure, emitting light radiation"
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
	description = "Large linear structure with radiation"
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

/obj/item/paper/particle_accelerator_1
	name = "bloody note"
	icon_state = "scrap_bloodied"
	info = "Work on the newest transverse kicker and transverse pick-up combination site has been slow.<BR>Corpos estimate it'll take another month until the next asterois are cleared out.<BR>Fucking idiots. I can just juice this baby up and even the largest ship would get dusted in an instant. We should just do the same with anyone and anything in our way."