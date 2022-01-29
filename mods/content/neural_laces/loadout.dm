/decl/loadout_option/augmentation/neural_lace
	name = "neural lace"
	custom_setup_proc_arguments = list(BP_HEAD)
	path = /obj/item/organ/internal/neural_lace

/obj/item/organ/internal/neural_lace/AttemptAugmentation(mob/user, target_zone)
	if(!istype(user))
		return ..()
	
	var/obj/item/organ/external/organ_to_implant_into = user.get_organ(parent_organ)
	
	if(!istype(organ_to_implant_into))
		return ..()

	do_install(user, organ_to_implant_into)
	to_chat(user, SPAN_NOTICE("You feel a faint sense of vertigo as your neural lace boots."))