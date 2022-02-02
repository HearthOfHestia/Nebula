//Unsorted, random shit goes here.

//cyclers.

/obj/machinery/suit_cycler/endeavour
	boots = /obj/item/clothing/shoes/magboots
	req_access = list(access_eva)
	initial_access = list()

/obj/machinery/suit_cycler/endeavour/engineering
	helmet = /obj/item/clothing/head/helmet/space/void/engineering
	suit = /obj/item/clothing/suit/space/void/engineering
	available_modifications = list(
		/decl/item_modifier/space_suit/engineering
	)


/obj/machinery/suit_cycler/endeavour/engineering/atmos
	helmet = /obj/item/clothing/head/helmet/space/void/atmos
	suit = /obj/item/clothing/suit/space/void/atmos
	available_modifications = list(
		/decl/item_modifier/space_suit/atmos
	)

/obj/machinery/suit_cycler/endeavour/security
	helmet =  /obj/item/clothing/head/helmet/space/void/security
	suit = /obj/item/clothing/suit/space/void/security
	available_modifications = list(
		/decl/item_modifier/space_suit/security
	)

/obj/machinery/suit_cycler/endeavour/medical
	helmet = /obj/item/clothing/head/helmet/space/void/medical/alt
	suit = /obj/item/clothing/suit/space/void/medical/alt
	available_modifications = list(
		/decl/item_modifier/space_suit/medical
	)

/obj/machinery/suit_cycler/endeavour/generic
	helmet = /obj/item/clothing/head/helmet/space
	suit = /obj/item/clothing/suit/space
	available_modifications = list(
		/decl/item_modifier/space_suit/medical
	)

/obj/machinery/suit_cycler/endeavour/salvage
	helmet = /obj/item/clothing/head/helmet/space/void/mining
	suit = /obj/item/clothing/suit/space/void/mining
	available_modifications = list(
		/decl/item_modifier/space_suit/mining
	)