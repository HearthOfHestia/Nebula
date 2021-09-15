/*******************
Random item spawning
*******************/

/obj/random/solgov
	name = "random iseo equipment"
	desc = "This is a random piece of iseo equipment or clothing."
	icon = 'maps/torch/icons/obj/obj_head_solgov.dmi'
	icon_state = "solsoft"

/obj/random/solgov/spawn_choices()
	return list(/obj/item/clothing/head/espatier/utility/tan = 4,
				/obj/item/clothing/head/iseo/utility = 2,
				/obj/item/clothing/head/espatier/utility= 4,
				/obj/item/clothing/head/helmet = 1,
				/obj/item/clothing/suit/armor/vest/government/sec = 2,
				/obj/item/clothing/under/iseo/utility = 5,
				/obj/item/clothing/under/espatier/utility = 3,
				/obj/item/clothing/under/espatier/pt = 4,
				/obj/item/clothing/under/iseo/pt= 4
				)

/obj/random/maintenance/solgov
	name = "random maintenance item"
	desc = "This is a random maintenance item."
	icon = 'icons/obj/items/gift_wrapped.dmi'
	icon_state = "gift1"

/obj/random/maintenance/solgov/spawn_choices()
	return list(/obj/random/junk = 4,
				/obj/random/trash = 4,
				/obj/random/maintenance/solgov/clean = 5)

/obj/random/maintenance/solgov/clean
	name = "random maintenance item"
	desc = "This is a random maintenance item."
	icon = 'icons/obj/items/gift_wrapped.dmi'
	icon_state = "gift2"

/obj/random/maintenance/solgov/clean/spawn_choices()
	return list(/obj/random/solgov = 3,
				/obj/random/maintenance/clean = 800)

/*******************
Torch specific items
*******************/

/obj/item/modular_computer/pda/explorer
	icon_state = "pda-exp"
	//icon_state_unpowered = "pda-exp"

/obj/item/modular_computer/pda/heads/hop
	stored_pen = /obj/item/pen/multi/cmd/xo

/obj/item/modular_computer/pda/captain
	stored_pen = /obj/item/pen/multi/cmd/co

/obj/item/storage/backpack/explorer
	name = "explorer backpack"
	desc = "A rugged backpack."
	icon_state = "exppack"

/obj/item/storage/backpack/satchel/explorer
	name = "explorer satchel"
	desc = "A rugged satchel for field work."
	icon_state = "satchel-exp"

/obj/item/storage/backpack/messenger/explorer
	name = "explorer messenger bag"
	desc = "A rugged backpack worn over one shoulder."
	icon_state = "courierbagexp"

/***********
Unique items
***********/

/obj/item/pen/multi/cmd/xo
	name = "executive officer's pen"
	icon = 'maps/torch/icons/obj/uniques.dmi'
	icon_state = "pen_xo"
	desc = "A slightly bulky pen with a silvery case. Twisting the top allows you to switch the nib for different colors."

/obj/item/pen/multi/cmd/co
	name = "commanding officer's pen"
	icon = 'maps/torch/icons/obj/uniques.dmi'
	icon_state = "pen_co"
	desc = "A slightly bulky pen with a golden case. Twisting the top allows you to switch the nib for different colors."

/obj/item/pen/multi/cmd/attack_self(mob/user)
	if(++selectedColor > 3)
		selectedColor = 1
	colour = colors[selectedColor]
	to_chat(user, "<span class='notice'>Changed color to '[colour].'</span>")

/******
Weapons
******/

/obj/item/gun/energy/gun/small/secure/corporate
	desc = "An access-locked EXO-branded LAEP90-CS. It's designed to please paranoid corporate liaisons. Body cam not included."
	req_access = list(access_liaison)

/obj/item/gun/projectile/revolver/medium/captain
	name = "Final Argument"
	icon = 'maps/torch/icons/obj/uniques.dmi'
	icon_state = "mosley"
	desc = "A shiny al-Maliki & Mosley Autococker automatic revolver, with black accents. Marketed as the 'Revolver for the Modern Era'. This one has 'To the Captain of ISEO Endeavour' engraved."
	fire_delay = 5.7 //Autorevolver. Also synced with the animation
	fire_anim = "mosley_fire"
	origin_tech = "{'combat':3,'materials':3}"
	starts_loaded = 0 //Nobody keeps ballistic weapons loaded

/obj/item/gun/energy/stunrevolver/secure/nanotrasen
	name = "corporate stun revolver"
	desc = "This A&M X6 is fitted with an NT1019 chip which allows remote authorization of weapon functionality. It has a NanoTrasen logo on the grip."
	req_access = list(list(access_brig, access_heads, access_rd, access_sec_guard))

/obj/item/gun/projectile/pistol/holdout/liaison
	magazine_type = /obj/item/ammo_magazine/pistol/small/oneway

/obj/item/ammo_magazine/pistol/small/oneway
	initial_ammo = 1

/obj/effect/paint/hull
	color = COLOR_HULL

/obj/effect/paint/expeditionary
	color = "#68099e"

/obj/item/gun/projectile/service_carbine
	name = "service carbine"
	desc = "The Zendai Armories MS2-A 'Legate' is a medium-caliber service carbine utilized across human-controlled space. Fires 10mm rounds."
	icon = 'maps/torch/icons/obj/carbine.dmi'
	fire_delay = 3
	origin_tech = "{'combat':3,'materials':3}"
	starts_loaded = 0
	caliber = CALIBER_RIFLE
	ammo_type = /obj/item/ammo_casing/pistol
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/carbine
	allowed_magazines = /obj/item/ammo_magazine/carbine
	one_hand_penalty = 8
	bulk = GUN_BULK_RIFLE
	mag_insert_sound = 'sound/weapons/guns/interaction/batrifle_magin.ogg'
	mag_remove_sound = 'sound/weapons/guns/interaction/batrifle_magout.ogg'
	material = /decl/material/solid/metal/steel
	matter = list(
		/decl/material/solid/metal/silver = MATTER_AMOUNT_REINFORCEMENT,
		/decl/material/solid/gemstone/diamond = MATTER_AMOUNT_TRACE
	)

/obj/item/gun/projectile/service_carbine/update_base_icon()
	if(ammo_magazine)
		if(ammo_magazine.stored_ammo.len)
			icon_state = "[get_world_inventory_state()]-loaded"
		else
			icon_state = "[get_world_inventory_state()]-empty"
	else
		icon_state = get_world_inventory_state()

/obj/item/ammo_magazine/carbine
	name = "carbine magazine"
	icon_state = "bullup"
	origin_tech = "{'combat':2}"
	mag_type = MAGAZINE
	caliber = CALIBER_RIFLE
	material = /decl/material/solid/metal/steel
	ammo_type = /obj/item/ammo_casing/pistol
	max_ammo = 20 //if we lived in a world where normal mags had 30 rounds, this would be a 20 round mag
	multiple_sprites = 1



