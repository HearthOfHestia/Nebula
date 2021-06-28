/decl/human_examination/proc/do_examine(var/user, var/distance, var/source)
	if(mind && mind.ooc_notes)
		to_chat(user, "<span class = 'deptradio'>OOC Notes:</span> <a href='?src=\ref[source];ooc_notes=1'>\[View\]</a>")

/mob/living/carbon/human/OnTopic(mob/user, href_list)
	if(href_list["ooc_notes"])
		if(mind && mind.ooc_notes)
			to_chat(user, mind.ooc_notes)
	. = ..()