/decl/loadout_category/eyes
	name = "Eyewear"

/decl/loadout_option/eyes
	category = /decl/loadout_category/eyes
	slot = slot_glasses_str

/decl/loadout_option/eyes/eyepatch
	name = "eyepatch"
	path = /obj/item/clothing/glasses/eyepatch

/decl/loadout_option/eyes/glasses
	name = "glasses selection"
	path = /obj/item/clothing/glasses

/decl/loadout_option/eyes/glasses/get_gear_tweak_options()
	. = ..()
	LAZYINITLIST(.[/datum/gear_tweak/path])
	.[/datum/gear_tweak/path] |= list(
		"prescription glasses" = /obj/item/clothing/glasses/prescription,
		"green glasses" =        /obj/item/clothing/glasses/prescription/gglasses,
		"hipster glasses" =      /obj/item/clothing/glasses/prescription/hipster,
		"monocle" =              /obj/item/clothing/glasses/eyepatch/monocle
	)

/decl/loadout_option/eyes/shades
	name = "sunglasses selection"
	path = /obj/item/clothing/glasses/sunglasses
	cost = 3

/decl/loadout_option/eyes/shades/get_gear_tweak_options()
	. = ..()
	LAZYINITLIST(.[/datum/gear_tweak/path])
	.[/datum/gear_tweak/path] |= list(
		"sunglasses, big" =         /obj/item/clothing/glasses/sunglasses/big,
		"sunglasses, presciption" = /obj/item/clothing/glasses/sunglasses/prescription
	)

/decl/loadout_option/eyes/blindfold
	name = "blindfold"
	path = /obj/item/clothing/glasses/blindfold
	flags = GEAR_HAS_COLOR_SELECTION

/decl/loadout_option/eyes/medical
	name = "medical eyewear selection"
	path = /obj/item/clothing/glasses

/decl/loadout_option/eyes/medical/get_gear_tweak_options()
	. = ..()
	LAZYINITLIST(.[/datum/gear_tweak/path/specified_types_list])
	.[/datum/gear_tweak/path/specified_types_list] |= list(
		/obj/item/clothing/glasses/hud/health,
		/obj/item/clothing/glasses/hud/health/prescription,
		/obj/item/clothing/glasses/hud/health/visor,
		/obj/item/clothing/glasses/eyepatch/hud/medical
	)

/decl/loadout_option/eyes/security
	name = "security eyewear selection"
	path = /obj/item/clothing/glasses

/decl/loadout_option/eyes/security/get_gear_tweak_options()
	. = ..()
	LAZYINITLIST(.[/datum/gear_tweak/path/specified_types_list])
	.[/datum/gear_tweak/path/specified_types_list] |= list(
		/obj/item/clothing/glasses/hud/security,
		/obj/item/clothing/glasses/hud/security/prescription,
		/obj/item/clothing/glasses/sunglasses/sechud,
		/obj/item/clothing/glasses/sunglasses/sechud/toggle,
		/obj/item/clothing/glasses/eyepatch/hud/security
	)

/decl/loadout_option/eyes/meson
	name = "meson eyewear selection"
	path = /obj/item/clothing/glasses


/decl/loadout_option/eyes/meson/get_gear_tweak_options()
	. = ..()
	LAZYINITLIST(.[/datum/gear_tweak/path/specified_types_list])
	.[/datum/gear_tweak/path/specified_types_list] |= list(
		/obj/item/clothing/glasses/meson,
		/obj/item/clothing/glasses/meson/prescription,
		/obj/item/clothing/glasses/eyepatch/hud/meson
	)

/decl/loadout_option/eyes/sciencegoggles
	name = "scientific eyewear selection"
	path = /obj/item/clothing/glasses

/decl/loadout_option/eyes/sciencegoggles/get_gear_tweak_options()
	. = ..()
	LAZYINITLIST(.[/datum/gear_tweak/path/specified_types_list])
	.[/datum/gear_tweak/path/specified_types_list] |= list(
		/obj/item/clothing/glasses/science,
		/obj/item/clothing/glasses/science/prescription,
		/obj/item/clothing/glasses/eyepatch/hud/science
	)

/decl/loadout_option/eyes/welding
	name = "welding goggles"
	path = /obj/item/clothing/glasses/welding

/decl/loadout_option/eyes/material
	name = "optical material scanner"
	path = /obj/item/clothing/glasses/material