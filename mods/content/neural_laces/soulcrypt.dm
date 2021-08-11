/obj/machinery/soulcrypt
	name = "soulcrypt"
	desc = "An advanced computer which can simulate the conciousness of any sentient being - provided a neural lace is inserted."
	icon = 'mods/content/neural_laces/soulcrypt.dmi'
	icon_state = "soulcrypt_inactive"
	idle_power_usage = 1000
	active_power_usage = 25000

	var/summoning_dead = FALSE

	var/obj/item/organ/internal/neural_lace/lace
	var/mob/living/voice/voicemob
	var/obj/effect/overlay/hologram

/obj/machinery/soulcrypt/examine(mob/user)
	. = ..()
	if(lace)
		to_chat(user, SPAN_NOTICE("A neural lace is inserted."))

/obj/machinery/soulcrypt/on_update_icon()
	if(summoning_dead)
		icon_state = "soulcrypt_active"
	else
		icon_state = "soulcrypt_inactive"

/obj/machinery/soulcrypt/attackby(var/obj/item/I, var/mob/user)
	. = ..()
	if(istype(I, /obj/item/organ/internal/neural_lace))
		if(user.unEquip(I) && !lace)
			to_chat(user, SPAN_NOTICE("You insert [I] into [src]."))
			I.forceMove(src)
			lace = I
			create_holo(user)
		else
			to_chat(user, SPAN_WARNING("There's already a neural lace inserted."))

/obj/machinery/soulcrypt/physical_attack_hand(var/mob/user)
	. = ..()
	if(lace)
		if(summoning_dead)
			end_holo()
		lace.forceMove(get_turf(user))
		user.put_in_hands(lace)
		to_chat(user, SPAN_NOTICE("You remove [lace] from [src]."))
		lace = null

/obj/machinery/soulcrypt/Process()
	if((stat & (BROKEN|NOPOWER)) && summoning_dead)
		end_holo()

/obj/machinery/soulcrypt/proc/create_holo(var/user)
	if(!lace) //No lace, no speaking.
		to_chat(user, SPAN_WARNING("You can't speak to the dead without the neural lace of a dead person."))
		return
	if(!lace.ownerckey)
		to_chat(user, SPAN_WARNING("You can't speak to an empty lace."))
		return
	var/datum/mind/dead_mind = lace.summon_dead() //Summon the dead.
	if(!dead_mind)
		to_chat(user, SPAN_NOTICE("It seems that the dead do not wish to speak."))
		return
	icon_state = "holopad-B1"
	voicemob = new(src) //Create our new voicemob.
	voicemob.SC = src
	voicemob.name = dead_mind.name
	voicemob.voice_name = dead_mind.name
	voicemob.languages = lace.languages.Copy()
	if(lace.default_language)
		voicemob.default_language = lace.default_language
	if(dead_mind)
		dead_mind.transfer_to(voicemob) //Shove the dead mind into the voice mob.
	to_chat(voicemob, SPAN_NOTICE("You are dead. This much is clear, as your conciousness comes into being within a simulated reality. Your emotions are blunted and your memory hazy - you do not remember the direct events leading to your death."))
	//Now, let's create our hologram.
	hologram = new(get_turf(src))
	hologram.name = dead_mind.name
	if(lace.MA)
		hologram.overlays += getHologramIcon(getFlatIcon(lace.MA), noDecolor = TRUE)
	else //For some reason the lace that's been inserted in us lacks a mutable appearance and therefore we can't generate an icon for it. Fall back to default.
		hologram.overlays += getHologramIcon(icon(lace.icon, lace.icon_state), noDecolor = TRUE)
	update_use_power(POWER_USE_ACTIVE)
	summoning_dead = TRUE

/obj/machinery/soulcrypt/proc/end_holo()
	QDEL_NULL(hologram)
	var/datum/mind/working_mind = voicemob.mind
	var/mob/observer/ghost/ghost = voicemob.ghostize()
	ghost.set_appearance(working_mind.original)
	QDEL_NULL(voicemob)
	icon_state = "holopad-B0"
	update_use_power(POWER_USE_IDLE)
	summoning_dead = FALSE


