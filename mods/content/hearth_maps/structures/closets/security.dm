/*
 * Endeavour Security
 */

/decl/closet_appearance/secure_closet/endeavour/security
	extra_decals = list(
		"stripe_vertical_mid_full" = COLOR_NT_RED,
		"security" = COLOR_NT_RED
	)

/decl/closet_appearance/secure_closet/endeavour/security/forensics
	extra_decals = list(
		"stripe_vertical_mid_full" = COLOR_NT_RED,
		"forensics" = COLOR_NT_RED
	)

/decl/closet_appearance/secure_closet/endeavour/security/warden
	extra_decals = list(
		"stripe_vertical_left_full" = COLOR_NT_RED,
		"stripe_vertical_right_full" = COLOR_NT_RED,
		"security" = COLOR_NT_RED
	)

/decl/closet_appearance/secure_closet/endeavour/security/hos
	extra_decals = list(
		"stripe_vertical_left_full" = COLOR_NT_RED,
		"stripe_vertical_mid_full" = COLOR_CLOSET_GOLD,
		"stripe_vertical_right_full" = COLOR_NT_RED,
		"security" = COLOR_CLOSET_GOLD
	)

/obj/structure/closet/secure_closet/security_endeavour
	name = "master at arms' locker"
	req_access = list(access_brig)
	closet_appearance = /decl/closet_appearance/secure_closet/endeavour/security

/obj/structure/closet/secure_closet/security_endeavour/WillContain()
	return list(
		/obj/item/clothing/suit/armor/pcarrier/medium,
		/obj/item/clothing/head/helmet/iseo/security,
		/obj/item/radio/headset/headset_sec,
		/obj/item/radio/headset/headset_sec/alt,
		/obj/item/storage/belt/holster/security,
		/obj/item/flash,
		/obj/item/chems/spray/pepper,
		/obj/item/grenade/chem_grenade/teargas,
		/obj/item/baton/loaded,
		/obj/item/clothing/glasses/sunglasses/sechud/goggles,
		/obj/item/taperoll/police,
		/obj/item/hailer,
		/obj/item/clothing/accessory/storage/vest/black,
		/obj/item/gun/projectile/pistol/secure,
		/obj/item/megaphone,
		/obj/item/clothing/gloves/thick,
		/obj/item/holowarrant,
		/obj/item/flashlight/maglight,
		/obj/item/storage/belt/security,
		/obj/item/knife/folding/swiss/sec,
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/security, /obj/item/storage/backpack/satchel/sec)),
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/dufflebag/sec, /obj/item/storage/backpack/messenger/sec))
	)


/obj/structure/closet/secure_closet/cos
	name = "chief of security's locker"
	req_access = list(access_hos)
	closet_appearance = /decl/closet_appearance/secure_closet/endeavour/security/hos

/obj/structure/closet/secure_closet/cos/WillContain()
	return list(
		/obj/item/clothing/suit/armor/pcarrier/medium,
		/obj/item/clothing/head/helmet/iseo/security,
		/obj/item/radio/headset/heads/cos,
		/obj/item/radio/headset/heads/cos/alt,
		/obj/item/clothing/glasses/sunglasses/sechud/goggles,
		/obj/item/taperoll/police,
		/obj/item/handcuffs,
		/obj/item/storage/belt/holster/security,
		/obj/item/storage/belt/security,
		/obj/item/storage/belt/holster/general,
		/obj/item/storage/belt/general,
		/obj/item/flash,
		/obj/item/megaphone,
		/obj/item/baton/loaded,
		///obj/item/gun/energy/gun/secure/preauthorized,
		/obj/item/telebaton,
		/obj/item/chems/spray/pepper,
		/obj/item/clothing/accessory/storage/vest/black,
		/obj/item/hailer,
		/obj/item/clipboard,
		/obj/item/folder/red,
		/obj/item/holowarrant,
		/obj/item/clothing/gloves/thick,
		/obj/item/flashlight/maglight,
		/obj/item/taperecorder,
		/obj/item/knife/folding/swiss/officer,
		/obj/item/personal_shield,
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/security, /obj/item/storage/backpack/satchel/sec)),
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/dufflebag/sec, /obj/item/storage/backpack/messenger/sec))
	)

/obj/structure/closet/secure_closet/brigchief
	name = "brig chief's locker"
	req_access = list(access_armory)
	closet_appearance = /decl/closet_appearance/secure_closet/endeavour/security/warden

/obj/structure/closet/secure_closet/brigchief/WillContain()
	return list(
		/obj/item/clothing/suit/armor/pcarrier/medium,
		/obj/item/clothing/head/helmet/iseo/security,
		/obj/item/radio/headset/headset_sec,
		/obj/item/radio/headset/headset_sec/alt,
		/obj/item/clothing/glasses/sunglasses/sechud/goggles,
		/obj/item/taperoll/police,
		/obj/item/storage/belt/holster/security,
		/obj/item/storage/belt/security,
		/obj/item/chems/spray/pepper,
		/obj/item/baton/loaded,
		/obj/item/gun/projectile/pistol/secure/preauthorized,
		/obj/item/clothing/accessory/storage/vest/black,
		/obj/item/handcuffs,
		/obj/item/hailer,
		/obj/item/flash,
		/obj/item/megaphone,
		/obj/item/hand_labeler,
		/obj/item/holowarrant,
		/obj/item/clothing/gloves/thick,
		/obj/item/flashlight/maglight,
		/obj/item/knife/folding/swiss/sec,
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/security, /obj/item/storage/backpack/satchel/sec)),
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/dufflebag/sec, /obj/item/storage/backpack/messenger/sec))
	)

/obj/structure/closet/secure_closet/forensics
	name = "forensics technician's locker"
	req_access = list(access_forensics_lockers)
	closet_appearance = /decl/closet_appearance/secure_closet/endeavour/security/forensics

/obj/structure/closet/secure_closet/forensics/WillContain()
	return list(
		/obj/item/clothing/gloves/forensic,
		/obj/item/radio/headset/headset_sec,
		/obj/item/radio/headset/headset_sec/alt,
		/obj/item/clothing/head/helmet/command,
		/obj/item/clothing/suit/armor/pcarrier/medium,
		/obj/item/gun/energy/gun/small/secure,
		/obj/item/flash,
		/obj/item/baton/loaded,
		/obj/item/chems/spray/pepper,
		/obj/item/taperoll/police,
		/obj/item/clothing/accessory/storage/vest/black,
		/obj/item/magnetic_tape/random = 3,
		/obj/item/clothing/glasses/sunglasses/sechud/toggle,
		/obj/item/clothing/glasses/sunglasses/sechud/goggles,
		/obj/item/holowarrant,
		/obj/item/flashlight/maglight,
		/obj/item/storage/belt/holster/forensic,
		//obj/item/storage/belt/forensic,
		/obj/item/storage/belt/holster/security,
		/obj/item/storage/belt/security,
		/obj/item/clothing/gloves/thick,
		/obj/item/knife/folding/swiss/sec,
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/security, /obj/item/storage/backpack/satchel/sec)),
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/dufflebag/sec, /obj/item/storage/backpack/messenger/sec))
	)
