/*
 * Endeavour Service
 */
/decl/closet_appearance/secure_closet/endeavour/hydroponics
	extra_decals = list(
		"stripe_vertical_right_partial" = COLOR_GREEN_GRAY,
		"stripe_vertical_mid_partial" =   COLOR_GREEN_GRAY,
		"hydro" = COLOR_GREEN_GRAY
	)

/obj/structure/closet/chefcloset_endeavour
	name = "chef's closet"
	desc = "It's a storage unit for foodservice equipment."
	closet_appearance = /decl/closet_appearance/wardrobe/black

/obj/structure/closet/chefcloset_endeavour/WillContain()
	return list(
		/obj/item/clothing/head/soft/mime,
		/obj/item/radio/headset/headset_service = 2,
		/obj/item/clothing/under/sundress,
		/obj/item/clothing/under/waiter = 2,
		/obj/item/storage/box/mousetraps = 2,
		/obj/item/clothing/under/chef,
		/obj/item/clothing/head/chefhat,
		/obj/item/clothing/suit/chef/classic
	)

/obj/structure/closet/waitstaff_endeavour
	name = "waitstaff closet"
	desc = "It's a storage unit for waitstaff equipment."
	closet_appearance = /decl/closet_appearance/wardrobe/black

/obj/structure/closet/waitstaff_endeavour/WillContain()
	return list(
		/obj/item/clothing/head/soft/black,
		/obj/item/radio/headset/headset_service = 2,
		/obj/item/clothing/under/sundress,
		/obj/item/clothing/under/waiter = 2,
		/obj/item/clothing/suit/chef/classic = 2
	)

/obj/structure/closet/secure_closet/hydroponics_endeavour //done so that it has no access reqs
	name = "hydroponics locker"
	req_access = list()
	closet_appearance = /decl/closet_appearance/secure_closet/endeavour/hydroponics

/obj/structure/closet/secure_closet/hydroponics_endeavour/WillContain()
	return list(
		/obj/item/clothing/head/soft/green,
		/obj/item/storage/plants,
		/obj/item/scanner/plant,
		/obj/item/minihoe,
		/obj/item/hatchet,
		/obj/item/wirecutters/clippers,
		/obj/item/chems/spray/plantbgone,
		new /datum/atom_creator/weighted(list(/obj/item/clothing/suit/apron, /obj/item/clothing/suit/apron/overalls)),
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack/hydroponics, /obj/item/storage/backpack/satchel/hyd)),
		new /datum/atom_creator/simple(/obj/item/storage/backpack/messenger/hyd, 50)
	)

/obj/structure/closet/jcloset_endeavour
	name = "custodial closet"
	desc = "It's a storage unit for janitorial equipment."
	closet_appearance = /decl/closet_appearance/wardrobe/mixed

/obj/structure/closet/jcloset_endeavour/WillContain()
	return list(
		/obj/item/clothing/head/soft/purple,
		/obj/item/radio/headset/headset_service,
		/obj/item/clothing/gloves/thick,
		/obj/item/flashlight,
		/obj/item/caution = 4,
		/obj/item/lightreplacer,
		/obj/item/storage/bag/trash,
		/obj/item/clothing/shoes/galoshes,
		/obj/item/storage/box/detergent,
		/obj/item/soap,
		/obj/item/storage/belt/janitor,
		/obj/item/clothing/glasses/hud/janitor
	)

/obj/structure/closet/secure_closet/bar_endeavour
	name = "bar locker"
	desc = "It's a storage unit for bar equipment."
	req_access = list(access_bar)

/obj/structure/closet/secure_closet/bar_endeavour/WillContain()
	return list(
		/obj/item/clothing/head/soft/black,
		/obj/item/radio/headset/headset_service,
		/obj/item/chems/drinks/shaker,
		/obj/item/glass_jar,
		/obj/item/book/manual/barman_recipes,
		/obj/item/clothing/under/bartender,
		/obj/item/clothing/shoes/dress
	)

