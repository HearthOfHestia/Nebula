//Torch override for it, auto-calls long-delayed jump automatically so round duration is hard capped.
/datum/game_mode/meteor
	name = "Meteor"
	round_description = "Suddenly the rocks, thousands of them!"
	extended_round_description = "We are on an unavoidable collision course with an asteroid field. You have only a moment to prepare before you are barraged by dust and meteors. Emergency BS drive spoolup has been initiated, but you need to survive until it's done."
	shuttle_delay = 5	//40ish minutes round
	meteor_grace_period = 10 MINUTES
	meteor_severity = 10   //Since Torch is pretty sturdy and time is of essence, jumpstart things a bit
	escalation_probability = 70

/datum/game_mode/meteor/post_setup()
	..()
	alert_title = "[global.using_map.full_name] Short Range Sensors"
	alert_text = "[global.using_map.full_name] is on a collision course with an ultradense asteroid field. Estimated time until impact is: [meteor_grace_period / 1200] MINUTES. Emegency random jump procedure initiated."
	start_text = "Asteroid field imminent. All hands brace for multiple impacts. May %DEITY_NAME% be with you."

	global.using_map.shuttle_called_message = "Attention all hands: Emergency Superluminal Drive spool up initiated. It will be ready for jump in %ETA%."
	global.using_map.shuttle_docked_message = "Attention all hands: Superluminal Drive spooled up. Emergency bluespace jump in %ETD%."
	global.using_map.shuttle_leaving_dock = "Attention all hands: Emergency superluminal jump initiated, emerging in %ETA%."

/datum/game_mode/meteor/on_meteor_warn()
	..()
	var/datum/evacuation_option/meteor_bluespace_jump/auto_evac = new()
	auto_evac.execute()

/datum/game_mode/meteor/declare_completion()
	var/eng_status = 0
	for(var/obj/machinery/atmospherics/unary/engine/E in SSmachines.machinery)
		if((get_z(E) in global.using_map.station_levels) && !(E.stat & BROKEN))
			eng_status++
	var/nav_status = FALSE
	for(var/obj/machinery/computer/ship/helm/H in SSmachines.machinery)
		if((get_z(H) in global.using_map.station_levels) && !(H.stat & BROKEN))
			nav_status = TRUE
	var/bsd_status = FALSE
	for(var/obj/machinery/ftl_shunt/core/C in SSmachines.machinery)
		if((get_z(C) in global.using_map.station_levels) && !(C.stat & (BROKEN|NOPOWER)))
			nav_status = TRUE

	to_world("<h3>Damage report</h3>")
	if(eng_status)
		to_world("<span class='good'>At least [eng_status] thrusters remained operational.</span>")
	else
		to_world("<span class='bad'>All propulsion was lost, leaving \the [global.using_map.full_name] drifting.</span>")
	if(nav_status)
		to_world("<span class='good'>Navigation and helm remained operational.</span>")
	else
		to_world("<span class='bad'>The navigation systems were lost on [global.using_map.full_name].</span>")
	if(bsd_status)
		to_world("<span class='good'>The Superluminal drive stayed powered.</span>")
	else
		to_world("<span class='bad'>The Superluminal drive lost power during the jump, causing dangerous anomalies in the local time-space.</span>")


//Bluespace jump but ignoring cooldowns and done at roundstart basically
/datum/evacuation_option/meteor_bluespace_jump
	option_text = "Initiate emergency bluespace jump"
	option_desc = "initiate automated emergency bluespace jump"

/datum/evacuation_option/meteor_bluespace_jump/execute(mob/user)
	if(!SSevac.evacuation_controller)
		return
	SSevac.evacuation_controller.call_evacuation(user, 0, forced = TRUE)
