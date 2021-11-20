/obj/structure/closet/walllocker/skinsuit
	desc = "A wall mounted storage locker for skinsuits."
	name = "emergency skinsuit locker"
	icon = 'maps/torch/icons/original_icons/suit_locker/suit_locker.dmi'
	closet_appearance = /decl/closet_appearance/wall_locker2
	density = 0
	anchored = 1
	wall_mounted = 1
	storage_types = CLOSET_STORAGE_ITEMS
	setup = 0
	icon_state = "base"

/decl/closet_appearance/wall_locker2
	decals = null
	base_icon =  'maps/torch/icons/original_icons/suit_locker/suit_locker.dmi'
	decal_icon = 'maps/torch/icons/original_icons/suit_locker/suit_locker_decals.dmi'
	color = COLOR_GRAY40
	extra_decals = list(
		"label"
	)

/decl/closet_appearance/wall_locker2/security
	extra_decals = list(
		"label",
		"stripe" = COMMS_COLOR_SECURITY
	)

/decl/closet_appearance/wall_locker2/medical
	extra_decals = list(
		"label",
		"stripe" = COLOR_PALE_BLUE_GRAY
	)

/decl/closet_appearance/wall_locker2/engineering
	extra_decals = list(
		"label",
		"stripe" = COMMS_COLOR_ENGINEER
	)

/decl/closet_appearance/wall_locker2/command
	extra_decals = list(
		"label",
		"stripe" = "#344c87"
	)

/decl/closet_appearance/wall_locker2/science
	extra_decals = list(
		"label",
		"stripe" = COMMS_COLOR_SCIENCE
	)

/obj/structure/closet/walllocker/skinsuit/Initialize()
	. = ..()
	icon_state = "base"
	default_pixel_x = 0
	default_pixel_y = 0
	var/turf/T = get_step(get_turf(src), turn(dir, 180))
	if(istype(T) && T.density)
		if(dir == NORTH)
			default_pixel_y = -21
		else if(dir == SOUTH)
			default_pixel_y = 21
		else if(dir == WEST)
			default_pixel_x = 21
		else if(dir == EAST)
			default_pixel_x = -21
	reset_offsets(0)

/obj/structure/closet/walllocker/skinsuit/WillContain()
	return list(/obj/item/clothing/suit/space/skinsuit = 1, /obj/item/clothing/head/helmet/space/skinsuit = 1, /obj/item/tank/emergency/oxygen/engi = 1, /obj/item/clothing/mask/gas/half = 1)

/obj/structure/closet/walllocker/skinsuit/security
	name = "security skinsuit locker"
	closet_appearance = /decl/closet_appearance/wall_locker2/security
	icon_state = "base_map_sec"

/obj/structure/closet/walllocker/skinsuit/security/WillContain()
	return list(/obj/item/clothing/suit/space/skinsuit/security = 1, /obj/item/clothing/head/helmet/space/skinsuit/security = 1, /obj/item/tank/emergency/oxygen/engi = 1, /obj/item/clothing/mask/gas/half = 1)

/obj/structure/closet/walllocker/skinsuit/engineering
	name = "engineering skinsuit locker"
	closet_appearance = /decl/closet_appearance/wall_locker2/engineering
	icon_state = "base_map_eng"

/obj/structure/closet/walllocker/skinsuit/engineering/WillContain()
	return list(/obj/item/clothing/suit/space/skinsuit/engineering = 1, /obj/item/clothing/head/helmet/space/skinsuit/engineering = 1, /obj/item/tank/emergency/oxygen/engi = 1, /obj/item/clothing/mask/gas/half = 1)

/obj/structure/closet/walllocker/skinsuit/medical
	name = "medical skinsuit locker"
	closet_appearance = /decl/closet_appearance/wall_locker2/medical
	icon_state = "base_map_med"

/obj/structure/closet/walllocker/skinsuit/medical/WillContain()
	return list(/obj/item/clothing/suit/space/skinsuit/medical = 1, /obj/item/clothing/head/helmet/space/skinsuit/medical = 1, /obj/item/tank/emergency/oxygen/engi = 1, /obj/item/clothing/mask/gas/half = 1)

/obj/structure/closet/walllocker/skinsuit/science
	name = "science skinsuit locker"
	closet_appearance = /decl/closet_appearance/wall_locker2/science
	icon_state = "base_map_sci"

/obj/structure/closet/walllocker/skinsuit/science/WillContain()
	return list(/obj/item/clothing/suit/space/skinsuit/science = 1, /obj/item/clothing/head/helmet/space/skinsuit/science = 1, /obj/item/tank/emergency/oxygen/engi = 1, /obj/item/clothing/mask/gas/half = 1)

/obj/structure/closet/walllocker/skinsuit/command
	name = "command skinsuit locker"
	closet_appearance = /decl/closet_appearance/wall_locker2/command
	icon_state = "base_map_comm"

/obj/structure/closet/walllocker/skinsuit/command/WillContain()
	return list(/obj/item/clothing/suit/space/skinsuit/command = 1, /obj/item/clothing/head/helmet/space/skinsuit/command = 1, /obj/item/tank/emergency/oxygen/engi = 1, /obj/item/clothing/mask/gas/half = 1)

/obj/structure/closet/emcloset/torch/WillContain()
	//Guaranteed kit - two tanks, two masks, two O2 pouches, and a softsuit
	. = list(/obj/item/tank/emergency/oxygen/engi = 2,
			/obj/item/clothing/mask/breath = 2,
			/obj/item/storage/med_pouch/oxyloss = 2,
			/obj/item/clothing/suit/space/skinsuit,
			/obj/item/clothing/head/helmet/space/skinsuit)

	. += new/datum/atom_creator/simple(list(/obj/item/storage/toolbox/emergency, /obj/item/inflatable/wall = 2), 75)
	. += new/datum/atom_creator/simple(list(/obj/item/clothing/mask/gas/half, /obj/item/tank/oxygen), 10)
	. += new/datum/atom_creator/simple(/obj/item/oxycandle, 75)
	. += new/datum/atom_creator/simple(/obj/item/storage/firstaid/regular, 25)
