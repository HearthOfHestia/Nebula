/obj/item/tank/skrell
	name = "skrellian gas synthesizer"
	desc = "A skrellian gas processing plant that continuously synthesises oxygen."
	var/charge_cost = 12
	var/refill_gas_type = /decl/material/gas/oxygen
	var/gas_regen_amount = 0.05
	var/gas_regen_cap = 50

/obj/item/tank/skrell/Initialize()
	starting_pressure = list(refill_gas_type = 6 * ONE_ATMOSPHERE)
	. = ..()


/obj/item/tank/skrell/Process()
	..()
	var/obj/item/rig/holder = loc
	if(air_contents.total_moles < gas_regen_cap && istype(holder) && holder.cell && holder.cell.use(charge_cost))
		air_contents.adjust_gas(refill_gas_type, gas_regen_amount)

// Self-charging power cell.
/obj/item/cell/skrell
	name = "skrellian microfusion cell"
	desc = "An impossibly tiny fusion power engine of Skrell design."
	icon = 'mods/species/skrell/icons/gear/gear.dmi'
	icon_state = "skrellcell"
	maxcharge = 1500
	w_class = ITEM_SIZE_NORMAL
	var/recharge_amount = 12

/obj/item/cell/skrell/Initialize()
	START_PROCESSING(SSobj, src)
	. = ..()

/obj/item/cell/skrell/Destroy()
	STOP_PROCESSING(SSobj, src)
	. = ..()

/obj/item/cell/skrell/Process()
	if(charge < maxcharge)
		give(recharge_amount)

//Skrellian energy shield.
/*Commented out pending upstream merge.
/obj/item/shield/energy/skrell
	name = "skrellian combat shield"
	desc = "An alien shield capable of stopping most projectile and melee attacks. It can be retracted, expanded, and stored anywhere."
	icon = 'mods/species/skrell/icons/gear/e_shield.dmi'
	icon_state = "skrellshield"
	shield_light_color = "#bf7efc"*/