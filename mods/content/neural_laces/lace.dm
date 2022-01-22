
/mob/living/carbon/human/proc/create_lace()
	internal_organs_by_name[BP_NEURAL_LACE] = new /obj/item/organ/internal/neural_lace(src,1)
	to_chat(src, SPAN_NOTICE("You feel a faint sense of vertigo as your neural lace boots."))

/obj/item/organ/internal/neural_lace
	name = "neural lace"
	parent_organ = BP_HEAD
	icon = 'mods/content/neural_laces/lace.dmi'
	icon_state = "neural_lace_off"
	organ_tag = BP_NEURAL_LACE
	status = ORGAN_PROSTHETIC
	origin_tech = "{'biotech':4,'materials':4,'magnets':2,'programming':2}"
	relative_size = 25

	var/ownerckey
	var/invasive
	var/default_language
	var/list/languages = list()
	var/datum/mind/backup
	var/prompting = FALSE // Are we waiting for a user prompt?
	var/list/skilldecay = list(SKILL_WEAPONS = -1, SKILL_COMBAT = -1, SKILL_HAULING = -2) //Skills that will suffer from relacing (Combat relevant skills as of the implementation of this PR)
	var/buff_type = /datum/skill_buff/lace
	var/relacetime
	var/mutable_appearance/MA

/datum/skill_buff/lace
		limit = 1

/obj/item/organ/internal/neural_lace/examine(var/mob/user)
	. = ..(user)
	if(istype(backup)) // Do we have a backup?
		if(user.skill_check(SKILL_DEVICES, SKILL_EXPERT)) // Can we even tell what the blinking means?
			if(find_dead_player(ownerckey, 1)) // Is the player still around and dead?
				to_chat(user, SPAN_NOTICE("The light on [src] is blinking rapidly. Someone might have a second chance."))
			else
				to_chat(user, "The light on [src] is blinking slowly. Maybe wait a while...")
		else
			to_chat(user, "The light on [src] is blinking, but you don't know what it means.")
	else
		to_chat(user, "The light on [src] is off. " + (user.skill_check(SKILL_DEVICES, SKILL_EXPERT) ? "It doesn't have a backup." : "Wonder what that means."))

/obj/item/organ/internal/neural_lace/emp_act()
	return

/obj/item/organ/internal/neural_lace/getToxLoss()
	return 0

/obj/item/organ/internal/neural_lace/proc/do_backup()
	if(owner && owner.stat != DEAD && !is_broken() && owner.mind)
		languages = owner.languages.Copy()
		backup = owner.mind
		default_language = owner.default_language
		if(owner.ckey)
			ownerckey = owner.ckey
		MA = new(owner)

/obj/item/organ/internal/neural_lace/Initialize()
	. = ..()
	do_backup()
	robotize()

/obj/item/organ/internal/neural_lace/proc/backup_inviable()
	return 	(!istype(backup) || backup == owner.mind || (backup.current && backup.current.stat != DEAD))

/obj/item/organ/internal/neural_lace/replaced()
	if(!..()) return 0
	if(prompting) // Don't spam the player with twenty dialogs because someone doesn't know what they're doing or panicking.
		return 0
	if(owner && !backup_inviable())
		var/current_owner = owner
		prompting = TRUE
		var/response = alert(find_dead_player(ownerckey, 1), "Your neural backup has been placed into a new body. Do you wish to return to life as the mind of [backup.name]?", "Resleeving", "Yes", "No")
		prompting = FALSE
		if(src && response == "Yes" && owner == current_owner)
			overwrite()
	sleep(-1)
	do_backup()
	if(!backup_inviable())
		to_chat(owner,SPAN_WARNING("You feel sluggish and your limbs are heavy as your new body adjusts to the neural lace - you'll probably be pretty useless until your lace has acclimated."))
		owner.buff_skill(skilldecay, 30 MINUTES, buff_type)//Debuff applied
		relacetime = world.time
	return 1

/obj/item/organ/internal/neural_lace/removed()
	do_backup()
	..()

/obj/item/organ/internal/neural_lace/proc/overwrite()
	if(owner.mind && owner.ckey) //Someone is already in this body!
		if(owner.mind == backup) // Oh, it's the same mind in the backup. Someone must've spammed the 'Start Procedure' button in a panic.
			return
		owner.visible_message(SPAN_DANGER("\The [owner] spasms violently!"))
		if(prob(66))
			to_chat(owner, SPAN_DANGER("You fight off the invading tendrils of another mind, holding onto your own body!"))
			return
		owner.ghostize() // Remove the previous owner to avoid their client getting reset.
	backup.active = TRUE
	backup.transfer_to(owner)
	if(default_language) owner.default_language = default_language
	owner.languages = languages.Copy()
	to_chat(owner, SPAN_NOTICE("Consciousness slowly creeps over you as your new body awakens."))

/obj/item/organ/internal/neural_lace/proc/summon_dead()
	if(!backup_inviable())
		var/response = alert(find_dead_player(ownerckey, 1), "Your neural backup has been placed into a soulcrypt. Do you wish to speak to the living?", "Soulcrypt", "Yes", "No")
		prompting = FALSE
		if(src && response == "Yes")
			return backup