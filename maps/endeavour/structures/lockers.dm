/obj/structure/closet/secure_closet/armsmen
	name = "armsman's locker"
	req_access = list(access_brig)
	closet_appearance = /decl/closet_appearance/secure_closet/security

/obj/structure/closet/secure_closet/armsmen/WillContain()
	return list(
		new/datum/atom_creator/weighted(list(/obj/item/storage/backpack/security, /obj/item/storage/backpack/satchel/sec)),
		new/datum/atom_creator/simple(/obj/item/storage/backpack/dufflebag/sec, 50),
		/obj/item/clothing/head/helmet,
		/obj/item/radio/headset/headset_sec,
		/obj/item/storage/belt/holster/security,
		/obj/item/flash,
		/obj/item/chems/spray/pepper,
		/obj/item/grenade/chem_grenade/teargas,
		/obj/item/baton/loaded,
		/obj/item/clothing/glasses/sunglasses/sechud,
		/obj/item/taperoll/police,
		/obj/item/hailer,
		/obj/item/clothing/accessory/storage/vest/black,
		/obj/item/gun/energy/taser,
		/obj/item/holowarrant,
		/obj/item/clothing/suit/armor/pcarrier/medium
	)

/obj/structure/closet/secure_closet/brig_chief
	name = "brig chief's locker"
	req_access = list(access_armory)
	closet_appearance = /decl/closet_appearance/secure_closet/security/warden

/obj/structure/closet/secure_closet/brig_chief/WillContain()
	return list(
		new/datum/atom_creator/weighted(list(/obj/item/storage/backpack/security, /obj/item/storage/backpack/satchel/sec)),
		new/datum/atom_creator/simple(/obj/item/storage/backpack/dufflebag/sec, 50),
		/obj/item/clothing/under/warden,
		/obj/item/clothing/suit/armor/pcarrier/medium,
		/obj/item/clothing/accessory/armor/tag,
		/obj/item/clothing/head/warden,
		/obj/item/radio/headset/headset_sec,
		/obj/item/clothing/glasses/sunglasses/sechud,
		/obj/item/taperoll/police,
		/obj/item/storage/box/flashbangs,
		/obj/item/storage/box/teargas,
		/obj/item/storage/belt/holster/security,
		/obj/item/chems/spray/pepper,
		/obj/item/baton/loaded,
		/obj/item/gun/energy/gun,
		/obj/item/storage/box/holobadge,
		/obj/item/holowarrant
	)

/obj/structure/closet/secure_closet/ssc
	name = "ship security commander's locker"
	req_access = list(access_hos)
	closet_appearance = /decl/closet_appearance/secure_closet/security/hos

/obj/structure/closet/secure_closet/ssc/WillContain()
	return list(
		new/datum/atom_creator/weighted(list(/obj/item/storage/backpack/security, /obj/item/storage/backpack/satchel/sec)),
		/obj/item/clothing/head/HoS,
		/obj/item/clothing/suit/armor/vest/heavy/hos,
		/obj/item/clothing/under/head_of_security/jensen,
		/obj/item/clothing/suit/armor/pcarrier/medium,
		/obj/item/clothing/accessory/armor/tag/hos,
		/obj/item/clothing/accessory/armor/plate/merc,
		/obj/item/clothing/suit/armor/hos/jensen,
		/obj/item/clothing/suit/armor/hos,
		/obj/item/radio/headset/heads/hos,
		/obj/item/clothing/glasses/sunglasses/sechud,
		/obj/item/taperoll/police,
		/obj/item/shield/riot,
		/obj/item/storage/box/flashbangs,
		/obj/item/storage/belt/holster/security,
		/obj/item/flash,
		/obj/item/baton/loaded,
		/obj/item/gun/energy/gun,
		/obj/item/clothing/accessory/storage/holster/waist,
		/obj/item/telebaton,
		/obj/item/holowarrant
	)