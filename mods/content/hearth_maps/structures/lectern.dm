/obj/structure/lectern
	name = "lectern"
	icon = 'mods/content/hearth_maps/icons/obj/lectern.dmi'
	icon_state = "lectern"
	anchored = 1
	density = 1
	obj_flags = OBJ_FLAG_ANCHORABLE
	material = /decl/material/solid/wood
	tool_interaction_flags = (TOOL_INTERACTION_ANCHOR | TOOL_INTERACTION_DECONSTRUCT)
	material_alteration = MAT_FLAG_ALTERATION_NAME | MAT_FLAG_ALTERATION_COLOR
	var/speaking_cooldown = 5 SECONDS
	var/cooldown

/obj/structure/lectern/walnut
	material = /decl/material/solid/wood/walnut

/obj/structure/lectern/attack_hand(mob/user)
	. = ..()
	speak(user)
	
/obj/structure/lectern/proc/speak(var/mob/living/carbon/human/user)
	if(CanPhysicallyInteract(user))
		var/speaking_verb = "speaks"
		var/textsize = 3
		if(!(world.time >= cooldown))
			to_chat(user, SPAN_WARNING("You can't speak that fast!"))
			return
		var/input = input("What do you want to say?", "Lectern", null) as message
		input = sanitize_text(input)
		if(length(input) > 1024) //Don't want overly long messages since this is amplified
			to_chat(user, SPAN_WARNING("Your message was too long!"))
			return
		if(user.skill_check(SKILL_LITERACY, SKILL_EXPERT))
			speaking_verb = "[pick("thunderingly", "eloquently", "passionately")] [pick("orates", "articulates", "declares")]"
			textsize = 4
		for(var/mob/O in (viewers(user)))
			O.show_message("<B>[user]</B> [speaking_verb], <FONT size=[textsize]>\"[input]\"</FONT>",2)
		