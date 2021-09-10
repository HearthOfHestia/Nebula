/mob/living/silicon/ai/wipe_core()
	set name = "Wipe Core"
	set category = "OOC"
	set desc = "Wipe your core. This is functionally equivalent to cryo or robotic storage, freeing up your job slot."

	if(istype(loc, /obj/item))
		to_chat(src, "You cannot wipe your core when you are on a portable storage device.")
		return

	// Guard against misclicks, this isn't the sort of thing we want happening accidentally
	if(alert("WARNING: This will immediately wipe your core and ghost you, removing your character from the round permanently (similar to cryo and robotic storage). Are you entirely sure you want to do this?",
					"Wipe Core", "No", "No", "Yes") != "Yes")
		return

	if(istype(loc, /obj/item))
		to_chat(src, "You cannot wipe your core when you are on a portable storage device.")
		return

	if(is_special_character(src))
		log_and_message_admins("removed themselves from the round via Wipe Core")

	// We warned you.
	var/obj/structure/aicore/deactivated/newcore = new(loc)
	if(assigned_type)
		newcore.core_type = assigned_type.department
	empty_playable_ai_cores += newcore
	var/obj/item/radio/announcer = get_global_announcer()
	announcer.autosay("[src] has been moved to intelligence storage.", "Artificial Intelligence Oversight")

	//Handle job slot/tater cleanup.
	clear_client()

/mob/living/silicon/ai/on_mob_init()
	to_chat(src, "<B>You are playing the [station_name()]'s AI. The AI cannot move, but can interact with many objects while viewing them (through cameras).</B>")
	to_chat(src, "<B>To look at other areas, click on yourself to get a camera menu.</B>")
	to_chat(src, "<B>While observing through a camera, you can use most (networked) devices which you can see, such as computers, APCs, intercoms, doors, etc.</B>")
	to_chat(src, "To use something, simply click on it.")
	to_chat(src, "Use say [get_language_prefix()]b to speak to your cyborgs through binary. Use say :h to speak from an active holopad.")
	to_chat(src, "For department channels, use the following say commands:")

	var/radio_text = ""
	for(var/i = 1 to silicon_radio.channels.len)
		var/channel = silicon_radio.channels[i]
		var/key = get_radio_key_from_channel(channel)
		radio_text += "[key] - [channel]"
		if(i != silicon_radio.channels.len)
			radio_text += ", "

	to_chat(src, radio_text)
	if(assigned_type)
		addtimer(CALLBACK(src, .proc/show_laws), 1 SECOND)
	else
		show_laws()
	to_chat(src, "<b>These laws may be changed by other players or by other random events.</b>")

	//Prevents more than one active core spawning on the same tile. Technically just a sanitization for roundstart join
	for(var/obj/structure/aicore/C in src.loc)
		qdel(C)

	job = "AI"
	setup_icon()
	eyeobj.possess(src)
	CreateModularRecord(src, /datum/computer_file/report/crew_record/synth)
	addtimer(CALLBACK(src, .proc/update_hologram), 2 SECOND)

/mob/living/silicon/ai/proc/update_hologram()
	qdel(holo_icon)
	holo_icon = getHologramIcon(icon('icons/mob/hologram.dmi',"Face"), custom_tone = custom_color_tone)

/obj/machinery/ai_powersupply //50kw x 5 AIs is a little bit too much given that's half the Endeavour's idle power usage.
	active_power_usage = 15000