/decl/closet_appearance/secure_closet/endeavour/sol
	color = COLOR_BABY_BLUE
	extra_decals = list(
		"stripe_vertical_mid_full" =  COLOR_OFF_WHITE
	)

/decl/closet_appearance/secure_closet/endeavour/sol/rep
	color = COLOR_BABY_BLUE
	extra_decals = list(
		"stripe_vertical_left_full" =  COLOR_OFF_WHITE,
		"stripe_vertical_right_full" =  COLOR_OFF_WHITE
	)

/decl/closet_appearance/secure_closet/endeavour/corporate
	color = COLOR_BOTTLE_GREEN
	extra_decals = list(
		"stripe_vertical_mid_full" = COLOR_OFF_WHITE
	)

/decl/closet_appearance/secure_closet/endeavour/corporate/liaison
	extra_decals = list(
		"stripe_vertical_left_full" =  COLOR_OFF_WHITE,
		"stripe_vertical_right_full" = COLOR_OFF_WHITE,
		"command" = COLOR_OFF_WHITE
	)

/obj/structure/closet/secure_closet/liaison
	name = "\improper corporate liaison's locker"
	req_access = list(access_liaison)
	closet_appearance = /decl/closet_appearance/secure_closet/endeavour/corporate/liaison

/obj/structure/closet/secure_closet/liaison/WillContain()
	return list(
		/obj/item/flash,
		/obj/item/clipboard,
		/obj/item/folder,
		/obj/item/magnetic_tape/random = 3,
		/obj/item/storage/secure/briefcase,
		/obj/item/clothing/shoes/dress,
		/obj/item/clothing/under/internalaffairs/plain,
		/obj/item/clothing/suit/storage/toggle/suit/black,
		/obj/item/clothing/glasses/sunglasses/big,
		/obj/item/storage/belt/general,
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack, /obj/item/storage/backpack/satchel)),
		new /datum/atom_creator/simple(/obj/item/storage/backpack/messenger, 50),
		/obj/item/radio/headset/heads/endeavourntcommand,
		/obj/item/radio/headset/heads/endeavourntcommand/alt
	)

/decl/closet_appearance/secure_closet/endeavour/corporate/bodyguard
	extra_decals = list(
		"stripe_vertical_left_full" =  COLOR_OFF_WHITE,
		"stripe_vertical_right_full" = COLOR_OFF_WHITE,
		"security" = COLOR_OFF_WHITE
	)

/obj/structure/closet/secure_closet/bodyguard
	name = "\improper corporate protection locker"
	req_access = list(access_sec_guard)
	closet_appearance = /decl/closet_appearance/secure_closet/endeavour/corporate/bodyguard

/obj/structure/closet/secure_closet/bodyguard/WillContain()
	return list(
		/obj/item/flash,
		/obj/item/clothing/accessory/storage/holster/armpit,
		/obj/item/storage/secure/briefcase,
		/obj/item/clothing/shoes/dress,
		/obj/item/gun/energy/gun/small/secure/corporate,
		/obj/item/clothing/under/internalaffairs,
		/obj/item/clothing/suit/storage/toggle/suit/black,
		/obj/item/clothing/gloves/color/black,
		/obj/item/clothing/glasses/sunglasses/big,
		/obj/item/clothing/accessory/badge/nanotrasen,
		/obj/item/radio/headset/heads/endeavourcorp,
		/obj/item/radio/headset/heads/endeavourcorp/alt,
		/obj/item/clothing/accessory/storage/vest/black,
		/obj/item/storage/belt/holster/general,
		/obj/item/flashlight/maglight,
		/obj/item/radio//,
		///obj/item/crowbar/prybar
	)

/obj/structure/closet/secure_closet/representative
	name = "\improper National Council Representative's locker"
	req_access = list(access_representative)
	closet_appearance = /decl/closet_appearance/secure_closet/endeavour/sol/rep

/obj/structure/closet/secure_closet/representative/WillContain()
	return list(
		/obj/item/flash,
		/obj/item/camera_film = 2,
		/obj/item/clipboard,
		/obj/item/folder,
		/obj/item/magnetic_tape/random = 3,
		/obj/item/storage/secure/briefcase,
		/obj/item/radio/headset/headset_com,
		/obj/item/clothing/shoes/dress,
		/obj/item/clothing/under/internalaffairs/plain,
		/obj/item/clothing/suit/storage/toggle/suit/black,
		/obj/item/clothing/glasses/sunglasses/big,
		/obj/item/storage/belt/general,
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack, /obj/item/storage/backpack/satchel)),
		new /datum/atom_creator/simple(/obj/item/storage/backpack/messenger, 50)
	)

//equipment closets that everyone on the crew or in research can access, for storing things securely

/obj/structure/closet/secure_closet/crew
	name = "crew equipment locker"
	req_access = list(access_solgov_crew)
	closet_appearance = /decl/closet_appearance/secure_closet/endeavour/sol

/obj/structure/closet/secure_closet/crew/WillContain()
	return list(
		/obj/item/radio,
		/obj/item/crowbar,
		/obj/item/flashlight,
		/obj/item/storage/box
	)

/obj/structure/closet/secure_closet/crew/research
	name = "research equipment locker"
	req_access = list(access_nanotrasen)
	closet_appearance = /decl/closet_appearance/secure_closet/endeavour/corporate


/obj/structure/closet/secure_closet/guncabinet/sidearm
	name = "sidearm cabinet"
	req_access = list(list(access_armory,access_emergency_armory,access_hos,access_hop,access_ce,access_cmo,access_rd,access_senadv))

/obj/structure/closet/secure_closet/guncabinet/sidearm/WillContain()
	return list(
			/obj/item/clothing/accessory/storage/holster/thigh = 2,
			/obj/item/gun/energy/gun/secure = 3,
	)

/obj/structure/closet/secure_closet/guncabinet/sidearm/small
	name = "personal sidearm cabinet"

/obj/structure/closet/secure_closet/guncabinet/sidearm/small/WillContain()
	return list(/obj/item/gun/energy/gun/small/secure = 4)

/obj/structure/closet/secure_closet/guncabinet/sidearm/combined
	name = "combined sidearm cabinet"

/obj/structure/closet/secure_closet/guncabinet/sidearm/combined/WillContain()
	return list(
		/obj/item/storage/belt/holster/general = 3,
		/obj/item/gun/energy/gun/secure = 3,
		/obj/item/gun/energy/gun/small/secure = 1,
	)

/obj/structure/closet/secure_closet/guncabinet/PPE
	name = "Bridge PPE cabinet"
	req_access = list(list(access_armory,access_emergency_armory,access_hos,access_hop,access_ce,access_cmo,access_rd,access_senadv))

/obj/structure/closet/secure_closet/guncabinet/PPE/WillContain()
	return list(
		/obj/item/gun/energy/gun/small/secure = 3,
		/obj/item/clothing/suit/armor/vest/government/command = 3,
		/obj/item/clothing/head/helmet/command = 3
	)
