/obj/item/disk/dna
	name = "gene storage disk"
	desc = "A disk for storing genetic data. It contains a small blood sample analyzer."
	label = "label_dna"
	color = COLOR_PALE_BLUE_GRAY
	var/datum/dna/stored_gene

/obj/item/disk/dna/attack_hand(mob/user)
	if(user.a_intent == I_HURT && stored_gene)
		stored_gene = null
		SetName(initial(name))
		to_chat(user, SPAN_DANGER("You flick the erase switch and wipe \the [src]."))
		return TRUE
	. = ..()

/obj/item/disk/dna/attackby(obj/item/I, mob/user)
	. = ..()
	if(istype(I,/obj/item/chems/syringe) && !stored_gene)
		var/obj/item/chems/syringe/S = I
		if(REAGENT_VOLUME(S.reagents, /decl/material/liquid/blood))
			var/loaded_dna = REAGENT_DATA(S.reagents, /decl/material/liquid/blood)
			if(islist(loaded_dna))
				var/weakref/R = loaded_dna["donor"]
				var/mob/living/carbon/human/H = R.resolve()
				if(H && istype(H) && H.species && H.dna)
					stored_gene = H.dna && H.dna.Clone()
					to_chat(user, SPAN_INFO("You inject the blood sample into \the [src]."))
					S.reagents.clear_reagents()
					S.update_icon()
					name = "[initial(name)] - [stored_gene.real_name]"
					return TRUE
		to_chat(user, SPAN_WARNING("\The [src] displays an error: no viable blood sample could be obtained from \the [I]."))
		return TRUE

/obj/item/storage/box/dna_disks
	name = "box of dna disks"
	startswith = list(/obj/item/disk/dna = 5)