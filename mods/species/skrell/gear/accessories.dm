/obj/item/clothing/accessory/badge/tags/skrell
	name = "\improper Skrellian holobadge"
	desc = "A high tech Skrellian holobadge, designed to project information about the owner."
	icon = 'mods/species/skrell/icons/clothing/accessories/obj_skrell_badge.dmi'
	badge_string = null	//Will be the name of the SDTF.

/obj/item/clothing/accessory/badge/tags/skrell/set_desc(var/mob/living/carbon/human/H)
	if(!istype(H))
		return
	desc = "Blood type: [H.b_type]"

/obj/item/clothing/accessory/badge/tags/skrell/verb/set_sdtf()
	set name = "Set SDTF Name"
	set category = "Object"
	set src in usr

	if(usr.incapacitated())
		to_chat(usr, "<span class='warning'>You're unable to do that.</span>")
		return

	var/obj/item/in_hand = usr.get_active_hand()
	if(in_hand != src)
		to_chat(usr, "<span class='warning'>You have to be holding [src] to modify it.</span>")
		return

	badge_string = sanitize(input(usr, "Input your SDTF.", "SDTF Holobadge") as null|text, MAX_NAME_LEN)

	if(usr.incapacitated())	//Because things can happen while you're typing
		to_chat(usr, "<span class='warning'>You're unable to do that.</span>")
		return
	in_hand = usr.get_active_hand()
	if(in_hand != src)
		to_chat(usr, "<span class='warning'>You have to be holding [src] to modify it.</span>")
		return

	if(badge_string)
		set_name(usr.real_name)
		set_desc(usr)
		verbs -= /obj/item/clothing/accessory/badge/tags/skrell/verb/set_sdtf

/decl/loadout_option/accessory/skrell_badge
	name = "skrellian SDTF badge"
	path = /obj/item/clothing/accessory/badge/tags/skrell
	whitelisted = list(SPECIES_SKRELL)
	category = /decl/loadout_category/accessories