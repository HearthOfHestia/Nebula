/*
 * Torch Exploration
 */

/decl/closet_appearance/secure_closet/torch/exploration
	extra_decals = list(
		"stripe_vertical_mid_full" = COLOR_PURPLE,
		"exped" = COLOR_PURPLE
	)

/decl/closet_appearance/secure_closet/torch/exploration/pilot
	extra_decals = list(
		"stripe_vertical_left_full" = COLOR_PURPLE,
		"stripe_vertical_right_full" = COLOR_PURPLE,
		"exped" = COLOR_PURPLE
	)

/decl/closet_appearance/secure_closet/torch/exploration/pathfinder
	extra_decals = list(
		"stripe_vertical_left_full" = COLOR_PURPLE,
		"stripe_vertical_mid_full" = COLOR_CLOSET_GOLD,
		"stripe_vertical_right_full" = COLOR_PURPLE,
		"exped" = COLOR_CLOSET_GOLD
	)

/obj/structure/closet/secure_closet/pathfinder
	name = "pathfinder's locker"
	req_access = list(access_pathfinder)
	closet_appearance = /decl/closet_appearance/secure_closet/torch/exploration/pathfinder

/obj/structure/closet/secure_closet/pathfinder/WillContain()
	return list(
		/obj/item/solbanner,
		/obj/item/solbanner,
		/obj/item/radio,
		/obj/item/tape/random,
		/obj/item/gps,
		/obj/item/pinpointer/radio,
		/obj/item/radio/beacon,
		/obj/item/taperoll/research,
		/obj/item/hatchet/machete/deluxe,
		/obj/item/storage/belt/holster/machete,
		/obj/item/spaceflare,
		/obj/item/clothing/accessory/storage/webbing_large,
		/obj/item/taperecorder,
		/obj/item/scanner/gas,
		/obj/item/flash,
		/obj/item/radio/headset/pathfinder,
		/obj/item/radio/headset/pathfinder/alt,
		/obj/item/storage/box/encryptionkey/exploration,
		/obj/item/binoculars,
		/obj/item/knife/folding/swiss/explorer,
		/obj/item/clothing/accessory/buddytag,
		///obj/item/storage/firstaid/light,
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack, /obj/item/storage/backpack/satchel/grey)),
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/dufflebag, /obj/item/storage/backpack/messenger)),
		new /datum/atom_creator/weighted(list(/obj/item/flashlight, /obj/item/flashlight/flare, /obj/item/flashlight/flare/glowstick/random))
	)

/obj/structure/closet/secure_closet/explorer
	name = "explorer's locker"
	req_access = list(access_explorer)
	closet_appearance = /decl/closet_appearance/secure_closet/torch/exploration

/obj/structure/closet/secure_closet/explorer/WillContain()
	return list(
		/obj/item/radio,
		/obj/item/gps,
		/obj/item/taperoll/research,
		/obj/item/storage/belt/holster/machete,
		/obj/item/spaceflare,
		/obj/item/clothing/accessory/storage/webbing_large,
		/obj/item/scanner/gas,
		/obj/item/radio/headset/exploration,
		/obj/item/radio/headset/exploration/alt,
		/obj/item/binoculars,
		/obj/item/clothing/accessory/buddytag,
		///obj/item/storage/firstaid/light,
		/obj/item/knife/folding/swiss/explorer,
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack, /obj/item/storage/backpack/satchel/grey)),
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/dufflebag, /obj/item/storage/backpack/messenger)),
		new /datum/atom_creator/weighted(list(/obj/item/flashlight, /obj/item/flashlight/flare, /obj/item/flashlight/flare/glowstick/random))
	)

/obj/structure/closet/secure_closet/pilot
	name = "pilot's locker"
	req_access = list(access_pilot)
	closet_appearance = /decl/closet_appearance/secure_closet/torch/exploration/pilot

/obj/structure/closet/secure_closet/pilot/WillContain()
	return list(
		/obj/item/radio,
		/obj/item/gps,
		/obj/item/storage/belt/utility/full,
		/obj/item/spaceflare,
		/obj/item/clothing/accessory/storage/webbing_large,
		/obj/item/scanner/gas,
		/obj/item/radio/headset/headset_pilot,
		/obj/item/radio/headset/headset_pilot/alt,
		/obj/item/binoculars,
		/obj/item/clothing/gloves/thick,
		///obj/item/clothing/suit/storage/hazardvest/blue,
		/obj/item/clothing/head/helmet/solgov/pilot,
		/obj/item/clothing/head/helmet/solgov/pilot/fleet,
		///obj/item/clothing/head/helmet/nt/pilot,
		///obj/item/storage/firstaid/light,
		/obj/item/knife/folding/swiss/explorer,
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack, /obj/item/storage/backpack/satchel/grey)),
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/dufflebag, /obj/item/storage/backpack/messenger)),
		new /datum/atom_creator/weighted(list(/obj/item/flashlight, /obj/item/flashlight/flare, /obj/item/flashlight/flare/glowstick/random))
	)

