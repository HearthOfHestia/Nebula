/mob/living/silicon/robot/drone/shard
	icon = 'mods/content/shards/sic_drones.dmi'
	icon_state = "body"
	var/marking_color_body
	var/marking_color_legs = COLOR_GRAY
	var/stripe_color
	status_flags = CANPUSH
	can_pull_size = ITEM_SIZE_STRUCTURE
	can_pull_mobs = MOB_PULL_SAME
	maxHealth = 250
	health = 250
	desc = "A six-legged remote interface drone, coloquially known as a thinktank."
	holder_type = null

/mob/living/silicon/robot/drone/shard/Initialize()
	. = ..()

	set_extension(src, /datum/extension/base_icon_state, icon_state)
	verbs += /mob/living/proc/hide
	remove_language(/decl/language/binary)
	add_language(/decl/language/binary, 0)
	add_language(/decl/language/binary/drone, 1)

	default_language = /decl/language/binary/drone
	// NO BRAIN.
	mmi = null

	verbs -= /mob/living/silicon/robot/verb/Namepick
	update_icon()

/mob/living/silicon/robot/drone/shard/on_update_icon()
	..()
	cut_overlays()
	var/image/body = image(icon, icon_state = "body_overlay")
	body.color = marking_color_body
	add_overlay(body)

	var/image/legs = image(icon, icon_state = "legs_overlay")
	legs.color = marking_color_legs
	add_overlay(legs)

	var/image/stripe = image(icon, icon_state = "stripe")
	stripe.color = stripe_color
	add_overlay(stripe)

	var/image/eyes = emissive_overlay(icon, "emissive")
	if(controlling_ai)
		eyes.color = COLOR_CYAN
	else
		eyes.color = COLOR_PALE_YELLOW
	add_overlay(eyes)

/mob/living/silicon/robot/drone/shard/command
	name = "Command SIC"
	marking_color_body = COLOR_COMMAND_BLUE
	marking_color_legs = COLOR_COMMAND_BLUE
	stripe_color = COLOR_GOLD
	module_type = /obj/item/robot_module/clerical/general/shard

/mob/living/silicon/robot/drone/shard/security
	name = "Security SIC"
	marking_color_body = COLOR_MAROON
	marking_color_legs = COLOR_MAROON
	stripe_color = COLOR_GOLD
	module_type = /obj/item/robot_module/security/general/shard

/mob/living/silicon/robot/drone/shard/engineering
	name = "Engineering SIC"
	marking_color_body = COLOR_BEIGE
	marking_color_legs = COLOR_BEIGE
	stripe_color = COMMS_COLOR_ENGINEER
	module_type = /obj/item/robot_module/engineering/shard

/mob/living/silicon/robot/drone/shard/medical
	name = "Medical SIC"
	marking_color_body = COLOR_EGGSHELL
	marking_color_legs = COLOR_EGGSHELL
	stripe_color = COMMS_COLOR_MEDICAL
	module_type = /obj/item/robot_module/medical/surgeon/shard

/mob/living/silicon/robot/drone/shard/research
	name = "Research SIC"
	marking_color_body = COLOR_EGGSHELL
	marking_color_legs = COLOR_EGGSHELL
	stripe_color = COMMS_COLOR_SCIENCE
	module_type = /obj/item/robot_module/research/shard

/obj/machinery/drone_fabricator/shard
	name = "Shard Interface Chassis Fabricator"
	time_last_drone = 1500

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

	if(!produce_drones)
		return

	if(player && !isghost(player.mob))
		return

	visible_message("\The [src] churns and grinds as it lurches into motion, disgorging a shiny new drone after a few moments.")
	flick("h_lathe_leave",src)
	drone_progress = 0
	time_last_drone = world.time

	var/mob/living/silicon/robot/drone/new_drone = new temp_drone_type(get_turf(src))
	if(player)
		announce_ghost_joinleave(player, 0, "They have taken control over a shard interface chassis.")
		if(player.mob && player.mob.mind) player.mob.mind.reset()
		new_drone.transfer_personality(player)

	return new_drone
