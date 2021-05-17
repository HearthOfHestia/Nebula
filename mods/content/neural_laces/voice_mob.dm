/mob/living/voice
	name = "unknown person"
	desc = "How are you examining me?"
	see_invisible = SEE_INVISIBLE_LIVING
	var/obj/machinery/soulcrypt/SC

/mob/living/voice/Destroy()
	. = ..()
	if(SC)
		SC = null

/mob/living/voice/verb/hang_up()
	set name = "End Resurrection"
	set category = "Soulcrypt"
	set desc = "Ends your brief return to life."
	set src = usr

	if(SC)
		SC.end_holo()
	else
		to_chat(src, "You appear to not be inside a soulcrypt. This is a bug and you should report it.")