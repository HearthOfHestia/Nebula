/decl/loadout_category/storage
	name = "Storage Accessories"

/decl/loadout_option/storage
	category = /decl/loadout_category/storage
	slot = slot_tie_str

/decl/loadout_option/storage/vest
	name = "webbing vest selection"
	path = /obj/item/clothing/accessory/storage/vest
	cost = 3

/decl/loadout_option/storage/vest/get_gear_tweak_options()
	. = ..()
	LAZYINITLIST(.[/datum/gear_tweak/path])
	.[/datum/gear_tweak/path] |= list(
		"black webbing vest" =           /obj/item/clothing/accessory/storage/vest/black,
		"brown webbing vest" =            /obj/item/clothing/accessory/storage/vest/brown,
		"white webbing vest" = /obj/item/clothing/accessory/storage/vest/white
	)

/decl/loadout_option/storage/pouches
	name = "drop pouches selection"
	path = /obj/item/clothing/accessory/storage/drop_pouches
	cost = 3

/decl/loadout_option/storage/pouches/get_gear_tweak_options()
	. = ..()
	LAZYINITLIST(.[/datum/gear_tweak/path])
	.[/datum/gear_tweak/path] |= list(
		"black drop pouches" =           /obj/item/clothing/accessory/storage/drop_pouches/black,
		"brown drop pouches" =            /obj/item/clothing/accessory/storage/drop_pouches/brown,
		"white drop pouches" = /obj/item/clothing/accessory/storage/drop_pouches/white
	)

/decl/loadout_option/storage/belts
	name = "storage belt selection"
	path = /obj/item/storage/belt
	slot = slot_belt_str
	cost = 3

/decl/loadout_option/storage/belts/get_gear_tweak_options()
	. = ..()
	LAZYINITLIST(.[/datum/gear_tweak/path])
	.[/datum/gear_tweak/path] |= list(
		"equipment belt" =           /obj/item/storage/belt/general,
		"waist pack" =            /obj/item/storage/belt/waistpack,
		"large waist pack" = /obj/item/storage/belt/waistpack/big
	)

/decl/loadout_option/storage/bandolier
	name = "bandolier"
	path = /obj/item/clothing/accessory/storage/bandolier
	cost = 2

/decl/loadout_option/storage/wallet
	name = "wallet, colour select"
	path = /obj/item/storage/wallet
	flags = GEAR_HAS_COLOR_SELECTION

/decl/loadout_option/storage/wallet_poly
	name = "wallet, polychromic"
	path = /obj/item/storage/wallet/poly
	cost = 2