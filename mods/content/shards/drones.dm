/mob/living/silicon/robot/drone/shard
	icon = 'mods/content/shards/sic_drones.dmi'
	icon_state = "sic"
	var/marking_color

/mob/living/silicon/robot/drone/shard/on_update_icon()
	..()
	var/image/Im = image(icon, icon_state = "sic_markings")
	Im.color = marking_color
	add_overlay(Im)

/mob/living/silicon/robot/drone/shard/command
	name = "Command SIC"
	marking_color = COMMS_COLOR_COMMAND
	module_type = /obj/item/robot_module/clerical/general/shard

/mob/living/silicon/robot/drone/shard/security
	name = "Security SIC"
	marking_color = COMMS_COLOR_SECURITY
	module_type = /obj/item/robot_module/security/shard

/mob/living/silicon/robot/drone/shard/engineering
	name = "Engineering SIC"
	marking_color = COMMS_COLOR_ENGINEER
	module_type = /obj/item/robot_module/engineering/shard

/mob/living/silicon/robot/drone/shard/medical
	name = "Medical SIC"
	marking_color = COMMS_COLOR_MEDICAL
	module_type = /obj/item/robot_module/medical/surgeon/shard

/mob/living/silicon/robot/drone/shard/research
	name = "Research SIC"
	marking_color = COMMS_COLOR_SCIENCE
	module_type = /obj/item/robot_module/research/shard

/obj/machinery/drone_fabricator/shard
	name = "Shard Interface Chassis Fabricator"

/obj/machinery/drone_fabricator/shard/attack_ai(mob/living/silicon/ai/user)

	if(!istype(user) || user.controlling_drone || !config.allow_drone_spawn)
		return

	if(stat & NOPOWER)
		to_chat(user, "<span class='warning'>\The [src] is unpowered.</span>")
		return

	if(!produce_drones)
		to_chat(user, "<span class='warning'>\The [src] is disabled.</span>")
		return

	if(drone_progress < 100)
		to_chat(user, "<span class='warning'>\The [src] is not ready to produce a new drone.</span>")
		return

	if(count_drones() >= config.max_maint_drones)
		to_chat(user, "<span class='warning'>The drone control subsystems are tasked to capacity; they cannot support any more drones.</span>")
		return

	var/mob/living/silicon/robot/drone/new_drone = create_drone(user = user)
	new_drone.assume_control(user)

/obj/machinery/drone_fabricator/shard/create_drone(var/client/player, var/mob/living/silicon/ai/user)
	var/temp_drone_type = drone_type
	if(user && user.assigned_type)
		temp_drone_type = user.assigned_type.drone_type

	if(stat & NOPOWER)
		return

	if(!produce_drones || !config.allow_drone_spawn || count_drones() >= config.max_maint_drones)
		return

	if(player && !isghost(player.mob))
		return

	visible_message("\The [src] churns and grinds as it lurches into motion, disgorging a shiny new drone after a few moments.")
	flick("h_lathe_leave",src)
	drone_progress = 0
	time_last_drone = world.time

	var/mob/living/silicon/robot/drone/new_drone = new temp_drone_type(get_turf(src))
	if(player)
		announce_ghost_joinleave(player, 0, "They have taken control over a maintenance drone.")
		if(player.mob && player.mob.mind) player.mob.mind.reset()
		new_drone.transfer_personality(player)

	return new_drone