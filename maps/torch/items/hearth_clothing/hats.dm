/obj/item/clothing/head/helmet/pilot/alternate
	name = "pilot's helmet"
	desc = "A pilot's helmet for operating the cockpit in style. This one is worn by members of the ISEO Fleet."
	icon = 'maps/torch/icons/borrowed_icons/pilot/helmet.dmi'
	var/open = FALSE

/obj/item/clothing/head/helmet/pilot/alternate/attack_self(mob/user)
	open = !open
	to_chat(user, SPAN_NOTICE("You [open ? "flip your visor up and undo your mask." : "flip your visor down and put your mask on."]"))
	update_icon()
	adjust_airtightness()

/obj/item/clothing/head/helmet/pilot/alternate/on_update_icon(mob/user)
	. = ..()
	icon_state = get_world_inventory_state()
	if(open && check_state_in_icon("[icon_state]-open", icon))
		icon_state = "[icon_state]-open"
	update_clothing_icon()

/obj/item/clothing/head/helmet/pilot/alternate/adjust_mob_overlay(var/mob/living/user_mob, var/bodytype,  var/image/overlay, var/slot, var/bodypart)
	if(overlay && open && check_state_in_icon("[overlay.icon_state]-open", overlay.icon))
		overlay.icon_state = "[overlay.icon_state]-open"
	. = ..()

/obj/item/clothing/head/helmet/pilot/alternate/proc/adjust_airtightness()
	if(open)
		item_flags &= ~ITEM_FLAG_AIRTIGHT
	else
		item_flags |= ITEM_FLAG_AIRTIGHT

//Variants below.

/obj/item/clothing/head/helmet/pilot/alternate/mobius
	icon = 'maps/torch/icons/borrowed_icons/pilot/mobius.dmi'

/obj/item/clothing/head/helmet/pilot/alternate/viper
	icon = 'maps/torch/icons/borrowed_icons/pilot/viper.dmi'

/obj/item/clothing/head/helmet/pilot/alternate/luke
	icon = 'maps/torch/icons/borrowed_icons/pilot/luke.dmi'

/obj/item/clothing/head/helmet/pilot/alternate/shark
	icon = 'maps/torch/icons/borrowed_icons/pilot/shark.dmi'

/obj/item/clothing/head/helmet/pilot/alternate/corvid
	icon = 'maps/torch/icons/borrowed_icons/pilot/corvid.dmi'

/obj/item/clothing/head/helmet/pilot/alternate/ace
	icon = 'maps/torch/icons/borrowed_icons/pilot/ace.dmi'

/obj/item/clothing/head/helmet/pilot/alternate/checker
	icon = 'maps/torch/icons/borrowed_icons/pilot/checker.dmi'

