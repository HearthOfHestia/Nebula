/obj/item/clothing/under/iseo/Initialize()
	. = ..()
	LAZYREMOVE(sprite_sheets, BODYTYPE_UNATHI) // contained in the base icon

//
// PT Uniform
//

/obj/item/clothing/under/iseo/pt
	name = "pt uniform"
	desc = "A plain black set of shorts with a navy blue t-shirt. Utiliarian to the extreme. Fitted for both sexes."
	icon = 'maps/torch/icons/converted_icons/under/under_pt_iseo.dmi'

//
// Utility
//

/obj/item/clothing/under/iseo/utility
	name = "utility fatigues"
	desc = "A set of black fatigues made from sturdy, durable synthetic fibers used by the ISEO Surveyor Corps. Mildly flash and stain resistant."
	icon = 'maps/torch/icons/converted_icons/under/under_utility_iseo.dmi'
	siemens_coefficient = 0.8
	armor = list(
		melee = ARMOR_MELEE_MINOR,
		energy = ARMOR_ENERGY_MINOR
	)

/obj/item/clothing/under/iseo/utility/command
	desc = "A set of blue fatigues made from sturdy, durable synthetic fibers used by the ISEO Surveyor Corps. Mildly flash and stain resistant."
	icon = 'maps/torch/icons/converted_icons/under/under_utility_iseo_command.dmi'
	starting_accessories = list(/obj/item/clothing/accessory/department/iseo/command)

/obj/item/clothing/under/iseo/utility/security
	starting_accessories = list(/obj/item/clothing/accessory/department/iseo/security)

/obj/item/clothing/under/iseo/utility/engineering
	starting_accessories = list(/obj/item/clothing/accessory/department/iseo/engineering, /obj/item/clothing/accessory/armband/engine)

/obj/item/clothing/under/iseo/utility/supply
	starting_accessories = list(/obj/item/clothing/accessory/department/iseo/supply, /obj/item/clothing/accessory/armband/cargo)

/obj/item/clothing/under/iseo/utility/science
	starting_accessories = list(/obj/item/clothing/accessory/department/iseo/exploration)

/obj/item/clothing/under/iseo/utility/medical
	desc = "A set of white fatigues made from sturdy, durable synthetic fibers used by the ISEO Surveyor Corps. Very stain resistant - and sterile."
	icon = 'maps/torch/icons/converted_icons/under/under_utility_iseo_medical.dmi'
	starting_accessories = list(/obj/item/clothing/accessory/department/iseo/medical, /obj/item/clothing/accessory/armband/medblue)

/obj/item/clothing/under/iseo/utility/service
	starting_accessories = list(/obj/item/clothing/accessory/department/iseo/service)

//
// Service
//

/obj/item/clothing/under/iseo/service/uniform
	name = "service uniform"
	desc = "A fetching service uniform, with a white dress shirt and blue pants. For all semi-formal and formal occasions."
	icon = 'maps/torch/icons/converted_icons/under/under_service_uniform_iseo.dmi'

/obj/item/clothing/under/iseo/service/uniform/officer
	desc = "A fetching service uniform, with a white dress shirt and blue pants. For all semi-formal and formal occasions. This one has silver highlights."
	icon = 'maps/torch/icons/converted_icons/under/under_service_uniform_officer_iseo.dmi'

/obj/item/clothing/under/iseo/service/uniform/command
	desc = "A fetching service uniform, with a white dress shirt and blue pants. For all semi-formal and formal occasions. This one has gold highlights."
	icon = 'maps/torch/icons/converted_icons/under/under_service_uniform_command_iseo.dmi'

/obj/item/clothing/under/iseo/service/uniform/flag
	desc = "A fetching service uniform, with a white dress shirt and blue pants. For all semi-formal and formal occasions. This one has red highlights."
	icon = 'maps/torch/icons/converted_icons/under/under_service_uniform_flag_iseo.dmi'

/obj/item/clothing/under/iseo/service/skirt
	name = "service skirt"
	desc = "A fetching service uniform, with a white dress shirt and a blue skirt. For all semi-formal and formal occasions."
	icon = 'maps/torch/icons/converted_icons/under/under_service_skirt_iseo.dmi'

/obj/item/clothing/under/iseo/service/skirt/officer
	desc = "A fetching service uniform, with a white dress shirt and a blue skirt. For all those semi-formal and formal occasions. This one has silver highlights."
	icon = 'maps/torch/icons/converted_icons/under/under_service_skirt_officer_iseo.dmi'

/obj/item/clothing/under/iseo/service/skirt/command
	desc = "A fetching service uniform, with a white dress shirt and a blue skirt. For all those semi-formal and formal occasions. This one has gold highlights."
	icon = 'maps/torch/icons/converted_icons/under/under_service_skirt_command_iseo.dmi'

/obj/item/clothing/under/iseo/service/skirt/flag
	desc = "A fetching service uniform, with a white dress shirt and a blue skirt. For all those semi-formal and formal occasions. This one has red highlights."
	icon = 'maps/torch/icons/converted_icons/under/under_service_skirt_flag_iseo.dmi'

//ISEO use service uniforms as the under for their dress clothing.




