/obj/machinery/uniform_vendor
	name = "uniform vendor"
	desc= "A uniform vendor for utility, service, and dress uniforms."
	icon = 'icons/obj/vending.dmi'
	icon_state = "uniform"
	layer = BELOW_OBJ_LAYER
	anchored = 1
	density = 1

	// Power
	use_power = 1
	idle_power_usage = 10
	var/vend_power_usage = 150 //actuators and stuff

	var/obj/item/card/id/ID
	var/list/uniforms = list()
	var/list/selected_outfit = list()

/obj/machinery/uniform_vendor/on_update_icon()
	if(stat & BROKEN)
		icon_state = "[initial(icon_state)]-broken"
	else if(!(stat & NOPOWER))
		icon_state = initial(icon_state)
	else
		icon_state = "[initial(icon_state)]-off"
		
/obj/machinery/uniform_vendor/attackby(var/obj/item/W, var/mob/user)
	if(istype(W, /obj/item/clothingbag))
		if(W.contents.len)
			to_chat(user, "<span class='notice'>You must empty \the [W] before you can put it in \the [src].</span>")
			return
		to_chat(user, "<span class='notice'>You put \the [W] into \the [src]'s recycling slot.</span>")
		qdel(W)
	else if(istype(W, /obj/item/card/id) && !ID && user.unEquip(W, src))
		to_chat(user, "<span class='notice'>You slide \the [W] into \the [src]!</span>")
		ID = W
		attack_hand(user)
	else
		..()