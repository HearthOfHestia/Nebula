#ifdef MODPACK_LIZARD
/obj/item/clothing/under/espatier/Initialize()
	. = ..()
	LAZYREMOVE(sprite_sheets, BODYTYPE_UNATHI) // contained in the base icon
#endif

//
// PT Uniform
//

/obj/item/clothing/under/espatier/pt
	name = "pt uniform"
	desc = "A plain black set of shorts and t-shirt. Utiliarian to the extreme. Fitted for both sexes."
	icon = 'mods/content/iseo/icons/under/under_pt_espatiers.dmi'
//
// Utility
//
/obj/item/clothing/under/espatier/utility
	name = "green utility fatigues"
	desc = "A set of green fatigues made from sturdy, durable synthetic fibers. Mildly flash and stain resistant. Tailored for forested climates."
	icon = 'mods/content/iseo/icons/under/under_utility_green_espatiers.dmi'
	siemens_coefficient = 0.8
	armor = list(
		melee = ARMOR_MELEE_MINOR,
		energy = ARMOR_ENERGY_MINOR
	)

/obj/item/clothing/under/espatier/utility/command
	starting_accessories = list(/obj/item/clothing/accessory/department/espatier/command)

/obj/item/clothing/under/espatier/utility/security
	starting_accessories = list(/obj/item/clothing/accessory/department/espatier/security)

/obj/item/clothing/under/espatier/utility/medical
	starting_accessories = list(/obj/item/clothing/accessory/department/espatier/medical, /obj/item/clothing/accessory/armband/medblue)

/obj/item/clothing/under/espatier/utility/engineering
	starting_accessories = list(/obj/item/clothing/accessory/department/espatier/engineering, /obj/item/clothing/accessory/armband/engine)

/obj/item/clothing/under/espatier/utility/supply
	starting_accessories = list(/obj/item/clothing/accessory/department/espatier/supply, /obj/item/clothing/accessory/armband/cargo)

/obj/item/clothing/under/espatier/utility/service
	starting_accessories = list(/obj/item/clothing/accessory/department/espatier/service)

/obj/item/clothing/under/espatier/utility/science
	starting_accessories = list(/obj/item/clothing/accessory/department/espatier/exploration)

/obj/item/clothing/under/iseo/utility/alt
	name = "tan utility fatigues"
	desc = "A set of tan fatigues made from sturdy, durable synthetic fibers. Mildly flash and stain resistant. Tailored for arid climates."
	icon = 'mods/content/iseo/icons/under/under_utility_tan_espatiers.dmi'

/obj/item/clothing/under/iseo/utility/alt2
	name = "grey utility fatigues"
	desc = "A set of grey fatigues made from sturdy, durable synthetic fibers. Mildly flash and stain resistant. Tailored for urban use."
	icon = 'mods/content/iseo/icons/under/under_utility_grey_espatiers.dmi'
//
// Service
//

/obj/item/clothing/under/espatier/service/uniform
	name = "service uniform"
	desc = "A fetching service uniform, with green pants and a brown dress shirt. For all semi-formal and formal occasions."
	icon = 'mods/content/iseo/icons/under/under_service_uniform_espatiers.dmi'

/obj/item/clothing/under/espatier/service/uniform/officer
	desc = "A fetching service uniform, with green pants and a brown dress shirt. For all semi-formal and formal occasions. This one has gold highlights."
	icon = 'mods/content/iseo/icons/under/under_service_uniform_command_espatiers.dmi'

/obj/item/clothing/under/espatier/service/skirt
	name = "service skirt"
	desc = "A fetching service uniform, with a green skirt and a brown dress shirt. For all semi-formal and formal occasions."
	icon = 'mods/content/iseo/icons/under/under_service_skirt_espatiers.dmi'

/obj/item/clothing/under/espatier/service/skirt/officer
	name = "service skirt"
	desc = "A fetching service uniform, with a green skirt and a brown dress shirt. For all semi-formal and formal occasions. This one has gold highlights."
	icon = 'mods/content/iseo/icons/under/under_service_skirt_command_espatiers.dmi'

//
// Dress
//

/obj/item/clothing/under/espatier/dress/uniform
	name = "dress uniform"
	desc = "A set of black dress pants with a brown dress shirt with red highlights. Typically used only for the most formal of occasions."
	icon = 'mods/content/iseo/icons/under/under_dress_uniform_espatiers.dmi'

/obj/item/clothing/under/espatier/dress/uniform/command
	desc = "A set of black dress pants with a brown dress shirt with gold highlights. Typically used only for the most formal of occasions."
	icon = 'mods/content/iseo/icons/under/under_dress_uniform_command_espatiers.dmi'

/obj/item/clothing/under/espatier/dress/skirt
	name = "dress skirt"
	desc = "A black skirt with a brown dress shirt with red highlights. Typically used only for the most formal of occasions."
	icon = 'mods/content/iseo/icons/under/under_dress_skirt_espatiers.dmi'

/obj/item/clothing/under/espatier/dress/skirt/command
	name = "dress skirt"
	desc = "A black skirt with a brown dress shirt with gold highlights. Typically used only for the most formal of occasions."
	icon = 'mods/content/iseo/icons/under/under_dress_skirt_command_espatiers.dmi'
