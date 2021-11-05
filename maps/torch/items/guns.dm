/obj/item/gun/energy/shock_carbine
	name = "shock carbine"
	desc = "A 'Zeus' E05 nonlethal energy carbine, designed to incapacitate targets with a powerful electrolaser. Has two modes: shock, and shockier."
	icon = 'maps/torch/icons/obj/guns/taser_carbine.dmi'
	icon_state = ICON_STATE_WORLD
	slot_flags = SLOT_LOWER_BODY|SLOT_BACK
	w_class = ITEM_SIZE_LARGE
	force = 10
	one_hand_penalty = 2
	bulk = GUN_BULK_RIFLE
	origin_tech = "{'combat':3,'magnets':2}"
	material = /decl/material/solid/metal/steel
	projectile_type = /obj/item/projectile/beam/stun/heavy

	firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun/heavy),
		list(mode_name="shock", projectile_type=/obj/item/projectile/beam/stun/shock/heavy)
		)

/obj/item/gun/projectile/pistol/secure
	name = "smartpistol"
	desc = "The SEM-05A is a 'smart' weapon that will only fire if is authorized to fire it's loaded ammunition. Widely used by police forces across human space."
	icon = 'maps/torch/icons/obj/guns/secure_pistol.dmi'
	req_access = list(list(access_brig, access_bridge))
	authorized_modes = list(ALWAYS_AUTHORIZED, UNAUTHORIZED, UNAUTHORIZED)
	magazine_type = /obj/item/ammo_magazine/pistol/stun
	var/list/allowed_projectile = list(/obj/item/ammo_casing/pistol/stun)

	firemodes = list(
		list(mode_name="nonlethal", allowed_projectile=list(/obj/item/ammo_casing/pistol/stun)),
		list(mode_name="less than lethal", allowed_projectile=list(/obj/item/ammo_casing/pistol/stun,/obj/item/ammo_casing/pistol/rubber)),
		list(mode_name="lethal", allowed_projectile=list(/obj/item/ammo_casing/pistol/stun,/obj/item/ammo_casing/pistol/rubber,/obj/item/ammo_casing/pistol))
		)

/obj/item/gun/projectile/pistol/secure/preauthorized
	authorized_modes = list(ALWAYS_AUTHORIZED, ALWAYS_AUTHORIZED, ALWAYS_AUTHORIZED)

/obj/item/gun/projectile/pistol/secure/special_check()
	if(is_secure_gun() && !free_fire() && (!authorized_modes[sel_mode] || !registered_owner))
		audible_message(SPAN_WARNING("\The [src] buzzes, refusing to fire."), hearing_distance = 3)
		playsound(loc, 'sound/machines/buzz-sigh.ogg', 10, 0)
		return 0
	var/obj/ammo
	if(length(ammo_magazine.stored_ammo))
		ammo = ammo_magazine.stored_ammo[1]
	if(ammo_magazine && length(ammo_magazine.stored_ammo) && !isnull(ammo) && !(ammo.type in allowed_projectile)) //Comparing the first round in the magazine to the allowed projectile.
		audible_message(SPAN_WARNING("\The [src] buzzes, refusing to fire."), hearing_distance = 3)
		playsound(loc, 'sound/machines/buzz-sigh.ogg', 10, 0)
		return 0
	. = ..()

/obj/item/ammo_casing/pistol/stun
	desc = "A taser pistol bullet casing."
	projectile_type = /obj/item/projectile/energy/electrode
	bullet_color = COLOR_GRAY40

/obj/item/ammo_magazine/pistol/stun
	labels = list("stun")
	ammo_type = /obj/item/ammo_casing/pistol/stun

/obj/item/storage/box/ammo/pistol_magazines/rubber
	name = "box of magazines (10mm, rubber)"
	icon_state = "ammo"
	startswith = list(/obj/item/ammo_magazine/pistol/rubber = 7)

/obj/item/storage/box/ammo/pistol_magazines/stun
	name = "box of magazines (10mm, stun)"
	icon_state = "ammo"
	startswith = list(/obj/item/ammo_magazine/pistol/stun = 7)

/obj/item/storage/box/ammo/pistol_magazines/lethal
	name = "box of magazines (10mm, lethal)"
	icon_state = "ammo"
	startswith = list(/obj/item/ammo_magazine/pistol = 7)

/obj/item/gun/energy/gun
	firemodes = list(
		list(mode_name="stun", projectile_type=/obj/item/projectile/beam/stun, indicator_color=COLOR_CYAN, charge_cost = 20),
		list(mode_name="shock", projectile_type=/obj/item/projectile/beam/stun/shock, indicator_color=COLOR_YELLOW, charge_cost = 20),
		list(mode_name="kill", projectile_type=/obj/item/projectile/beam/smalllaser, indicator_color=COLOR_RED, charge_cost = 10),
		)

