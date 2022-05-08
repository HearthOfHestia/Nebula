//Engineering Voidsuits

/obj/item/clothing/head/helmet/space/void/engineering/alt/hazard
	name = "engineering hazard voidsuit helmet"
	desc = "A heavy, radiation-shielded voidsuit helmet with a surprisingly comfortable interior."
	icon = 'mods/content/hearth_maps/icons/converted_icons/spacesuits/eng_hazard_hardsuit_helmet.dmi'
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
		)

/obj/item/clothing/suit/space/void/engineering/alt/hazard
	name = "engineering hazard voidsuit"
	desc = "A bulky industrial voidsuit. An alternate model, this one is up-to-date and includes climate control. Fancy and expensive."
	icon = 'mods/content/hearth_maps/icons/converted_icons/spacesuits/eng_hazard_hardsuit.dmi'
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
		)

//Explo Voidsuits!

/obj/item/clothing/head/helmet/space/void/exploration
	desc = "An atmos resistant helmet for space and planet exploration. Has a wide visor for superior visibility"
	name = "exploration voidsuit helmet"
	icon = 'mods/content/hearth_maps/icons/converted_icons/spacesuits/explo_voidsuit_helmet.dmi'
	armor = list(
		melee = ARMOR_MELEE_KNIVES,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SMALL
		)

/obj/item/clothing/suit/space/void/exploration
	desc = "An atmos resistant voidsuit for space and planet exploration."
	name = "exploration voidsuit"
	icon = 'mods/content/hearth_maps/icons/converted_icons/spacesuits/explo_voidsuit.dmi'
	armor = list(
		melee = ARMOR_MELEE_KNIVES,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SMALL
		)
	allowed = list(/obj/item/flashlight,/obj/item/tank,/obj/item/suit_cooling_unit,/obj/item/storage/toolbox,/obj/item/storage/briefcase/inflatable,/obj/item/t_scanner,/obj/item/rcd,/obj/item/hatchet/machete)

//Command Voidsuit

/obj/item/clothing/head/helmet/space/void/command
	desc = "A sealed helmet, intended for a spacesuit."
	name = "command voidsuit helmet"
	icon = 'mods/content/hearth_maps/icons/converted_icons/spacesuits/command_voidsuit_helmet.dmi'
	armor = list(
		melee = ARMOR_MELEE_KNIVES,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SMALL
		)

/obj/item/clothing/suit/space/void/command
	desc = "An atmos resistant voidsuit for protection from hazardous enviroments."
	name = "command voidsuit"
	icon = 'mods/content/hearth_maps/icons/converted_icons/spacesuits/command_voidsuit.dmi'
	armor = list(
		melee = ARMOR_MELEE_KNIVES,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SMALL
		)
	allowed = list(/obj/item/flashlight,/obj/item/tank,/obj/item/suit_cooling_unit,/obj/item/storage/toolbox,/obj/item/storage/briefcase/inflatable,/obj/item/t_scanner,/obj/item/rcd,/obj/item/hatchet/machete)

//RIG suits below.

/obj/item/rig/command
	name = "command HCM"
	suit_type = "command hardsuit"
	icon = 'mods/content/hearth_maps/icons/converted_icons/spacesuits/rigs/module/command_rig.dmi'
	desc = "A specialized hardsuit rig control module issued to command staff of the ISSC and their peers."
	armor = list(
		melee = ARMOR_MELEE_KNIVES, 
		bullet = ARMOR_BALLISTIC_SMALL, 
		laser = ARMOR_LASER_MINOR, 
		energy = ARMOR_ENERGY_SMALL, 
		bomb = ARMOR_BOMB_PADDED, 
		bio = ARMOR_BIO_SHIELDED, 
		rad = ARMOR_RAD_SMALL
		)
	online_slowdown = 0.50
	offline_slowdown = 2
	offline_vision_restriction = TINT_HEAVY

	chest = /obj/item/clothing/suit/space/rig/command
	helmet = /obj/item/clothing/head/helmet/space/rig/command
	boots = /obj/item/clothing/shoes/magboots/rig/command
	gloves = /obj/item/clothing/gloves/rig/command

	allowed = list(/obj/item/gun,
				   /obj/item/ammo_magazine,
				   /obj/item/flashlight,
				   /obj/item/tank,
				   /obj/item/suit_cooling_unit,
				   /obj/item/storage/secure/briefcase)

	req_access = list(access_bridge)

/obj/item/clothing/head/helmet/space/rig/command
	icon = 'mods/content/hearth_maps/icons/converted_icons/spacesuits/rigs/head/command_rig.dmi'
	camera = /obj/machinery/camera/network/command
	//species_restricted = list(SPECIES_HUMAN,SPECIES_IPC) //no available icons for aliens

/obj/item/clothing/suit/space/rig/command
	icon = 'mods/content/hearth_maps/icons/converted_icons/spacesuits/rigs/body/command_rig.dmi'
	//species_restricted = list(SPECIES_HUMAN,SPECIES_IPC)

/obj/item/clothing/shoes/magboots/rig/command
	icon = 'mods/content/hearth_maps/icons/converted_icons/spacesuits/rigs/boots/command_rigs.dmi'
	//species_restricted = list(SPECIES_HUMAN,SPECIES_IPC)

/obj/item/clothing/gloves/rig/command
	icon = 'mods/content/hearth_maps/icons/converted_icons/spacesuits/rigs/hands/command_rigs.dmi'
	//species_restricted = list(SPECIES_HUMAN,SPECIES_IPC)

/obj/item/rig/command/equipped
	initial_modules = list(
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/flash,
		/obj/item/rig_module/cooling_unit
		)

/*
 * EXECUTIVE OFFICER
 */
/obj/item/rig/command/xo
	name = "officer's command HCM"
	suit_type = "advanced command hardsuit"
	desc = "A specialized hardsuit rig control module issued to high ranking officers of the ISSC and their peers."
	icon = 'mods/content/hearth_maps/icons/converted_icons/spacesuits/rigs/module/xo_rig.dmi'
	armor = list(
		melee = ARMOR_MELEE_KNIVES, 
		bullet = ARMOR_BALLISTIC_SMALL, 
		laser = ARMOR_LASER_MINOR, 
		energy = ARMOR_ENERGY_SMALL, 
		bomb = ARMOR_BOMB_PADDED, 
		bio = ARMOR_BIO_SHIELDED, 
		rad = ARMOR_RAD_SMALL
		)

	chest = /obj/item/clothing/suit/space/rig/command/xo
	helmet = /obj/item/clothing/head/helmet/space/rig/command/xo
	boots = /obj/item/clothing/shoes/magboots/rig/command
	gloves = /obj/item/clothing/gloves/rig/command

	req_access = list(access_hop)

/obj/item/clothing/head/helmet/space/rig/command/xo
	icon = 'mods/content/hearth_maps/icons/converted_icons/spacesuits/rigs/head/xo_rig.dmi'
/obj/item/clothing/suit/space/rig/command/xo
	icon = 'mods/content/hearth_maps/icons/converted_icons/spacesuits/rigs/body/xo_rig.dmi'

/obj/item/rig/command/xo/equipped
	initial_modules = list(
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/flash/advanced,
		/obj/item/rig_module/grenade_launcher/smoke,
		/obj/item/rig_module/cooling_unit)

/*
 * COMMANDING OFFICER
 */
/obj/item/rig/command/co
	name = "commanding officer's command HCM"
	suit_type = "advanced command hardsuit"
	desc = "A specialized hardsuit rig control module issued to commanding officers of the ISSC."
	icon = 'mods/content/hearth_maps/icons/converted_icons/spacesuits/rigs/module/co_rig.dmi'
	armor = list(
		melee = ARMOR_MELEE_RESISTANT, 
		bullet = ARMOR_BALLISTIC_PISTOL, 
		laser = ARMOR_LASER_SMALL, 
		energy = ARMOR_ENERGY_SMALL, 
		bomb = ARMOR_BOMB_PADDED, 
		bio = ARMOR_BIO_SHIELDED, 
		rad = ARMOR_RAD_SMALL
		)

	chest = /obj/item/clothing/suit/space/rig/command/co
	helmet = /obj/item/clothing/head/helmet/space/rig/command/co

	req_access = list(access_captain)

/obj/item/clothing/head/helmet/space/rig/command/co
	icon = 'mods/content/hearth_maps/icons/converted_icons/spacesuits/rigs/head/co_rig.dmi'
/obj/item/clothing/suit/space/rig/command/co
	icon = 'mods/content/hearth_maps/icons/converted_icons/spacesuits/rigs/body/co_rig.dmi'

/obj/item/rig/command/co/equipped
	initial_modules = list(
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/flash/advanced,
		/obj/item/rig_module/grenade_launcher/smoke,
		/obj/item/rig_module/cooling_unit)

/*
 * CHIEF MEDICAL OFFICER
 */
/obj/item/rig/command/medical
	name = "medical command HCM"
	suit_type = "medical command hardsuit"
	desc = "A specialized hardsuit rig control module issued to ranking medical officers of the ISSC and their peers."
	icon = 'mods/content/hearth_maps/icons/converted_icons/spacesuits/rigs/module/cmo_rig.dmi'

	chest = /obj/item/clothing/suit/space/rig/command/medical
	helmet = /obj/item/clothing/head/helmet/space/rig/command/medical

	allowed = list(/obj/item/gun,
				   /obj/item/ammo_magazine,
				   /obj/item/flashlight,
				   /obj/item/tank,
			 	   /obj/item/suit_cooling_unit,
				   /obj/item/storage/firstaid,
				   /obj/item/scanner/health,
				   /obj/item/stack/medical,
				   /obj/item/roller)

	req_access = list(access_cmo)

/obj/item/clothing/head/helmet/space/rig/command/medical
	icon = 'mods/content/hearth_maps/icons/converted_icons/spacesuits/rigs/head/cmo_rig.dmi'
/obj/item/clothing/suit/space/rig/command/medical
	icon = 'mods/content/hearth_maps/icons/converted_icons/spacesuits/rigs/body/cmo_rig.dmi'

/obj/item/rig/command/medical/equipped
	initial_modules = list(
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/flash,
		/obj/item/rig_module/device/healthscanner,
		/obj/item/rig_module/device/defib,
		/obj/item/rig_module/chem_dispenser/injector,
		/obj/item/rig_module/vision/medhud,
		/obj/item/rig_module/cooling_unit)

/*
* CHIEF OF SECURITY
*/
/obj/item/rig/command/security
	name = "security command HCM"
	suit_type = "security command hardsuit"
	desc = "A specialized hardsuit rig control module issued to ranking security officers of the ISSC and their peers."
	icon = 'mods/content/hearth_maps/icons/converted_icons/spacesuits/rigs/module/cso_rig.dmi'
	armor = list(
		melee = ARMOR_MELEE_RESISTANT, 
		bullet = ARMOR_BALLISTIC_PISTOL, 
		laser = ARMOR_LASER_SMALL, 
		energy = ARMOR_ENERGY_SMALL, 
		bomb = ARMOR_BOMB_PADDED, 
		bio = ARMOR_BIO_SHIELDED, 
		rad = ARMOR_RAD_SMALL
		)

	chest = /obj/item/clothing/suit/space/rig/command/security
	helmet = /obj/item/clothing/head/helmet/space/rig/command/security

	allowed = list(/obj/item/gun,
	 			  /obj/item/ammo_magazine,
	  			  /obj/item/handcuffs,
	   			  /obj/item/flashlight,
	    		  /obj/item/tank,
				  /obj/item/suit_cooling_unit,
				  /obj/item/baton)

	req_access = list(access_hos)

/obj/item/clothing/head/helmet/space/rig/command/security
	icon = 'mods/content/hearth_maps/icons/converted_icons/spacesuits/rigs/head/hos_rig.dmi'
/obj/item/clothing/suit/space/rig/command/security
	icon = 'mods/content/hearth_maps/icons/converted_icons/spacesuits/rigs/body/cso_rig.dmi'

/obj/item/rig/command/security/equipped
	initial_modules = list(
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/flash,
		/obj/item/rig_module/vision/sechud,
		/obj/item/rig_module/cooling_unit)

/*
* CHIEF SCIENCE OFFICER
*/
/obj/item/rig/command/science
	name = "research command HCM"
	suit_type = "research command hardsuit"
	desc = "A specialized hardsuit rig control module issued to ranking research officers of the ISSC."
	icon = 'mods/content/hearth_maps/icons/converted_icons/spacesuits/rigs/module/cso_rig.dmi'
	armor = list(
		melee = ARMOR_MELEE_KNIVES, 
		bullet = ARMOR_BALLISTIC_SMALL, 
		laser = ARMOR_LASER_MINOR, 
		energy = ARMOR_ENERGY_STRONG, 
		bomb = ARMOR_BOMB_RESISTANT, 
		bio = ARMOR_BIO_SHIELDED, 
		rad = ARMOR_RAD_SHIELDED
		)

	chest = /obj/item/clothing/suit/space/rig/command/science
	helmet = /obj/item/clothing/head/helmet/space/rig/command/science

	allowed = list(/obj/item/gun,
				   /obj/item/ammo_magazine,
				   /obj/item/flashlight,
				   /obj/item/tank,
				   /obj/item/suit_cooling_unit,
			       /obj/item/stack/flag,
				   /obj/item/storage/excavation,
				   /obj/item/scanner/health,
				   /obj/item/measuring_tape,
				   /obj/item/ano_scanner,
				   /obj/item/depth_scanner,
				   /obj/item/core_sampler,
				   /obj/item/gps,
				   /obj/item/pinpointer/radio,
				   /obj/item/radio/beacon,
				   /obj/item/pickaxe/xeno,
				   /obj/item/storage/bag/fossils,
				   /obj/item/rig_module/grenade_launcher/light)

	req_access = list(access_rd)

/obj/item/clothing/head/helmet/space/rig/command/science
	icon = 'mods/content/hearth_maps/icons/converted_icons/spacesuits/rigs/head/cso_rig.dmi'

/obj/item/clothing/suit/space/rig/command/science
	icon = 'mods/content/hearth_maps/icons/converted_icons/spacesuits/rigs/body/cso_rig.dmi'


/obj/item/rig/command/science/equipped
	initial_modules = list(
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/flash,
		/obj/item/rig_module/device/anomaly_scanner,
		/obj/item/rig_module/grenade_launcher/light,
		/obj/item/rig_module/cooling_unit)

/*
* EXPLORATION
*/
/obj/item/rig/exploration
	name = "heavy exploration HCM"
	suit_type = "heavy exploration hardsuit"
	desc = "Expeditionary Corps' Exoplanet Exploration Armored Unit, A-Unit for short. Built for more hostile (and hungry) environments, it features additional armor and powered exoskeleton."
	icon = 'mods/content/hearth_maps/icons/converted_icons/spacesuits/rigs/module/explo_rig.dmi'
	armor = list(
		melee = ARMOR_MELEE_MAJOR, 
		bullet = ARMOR_BALLISTIC_SMALL, 
		laser = ARMOR_LASER_SMALL, 
		energy = ARMOR_ENERGY_RESISTANT, 
		bomb = ARMOR_BOMB_MINOR, 
		bio = ARMOR_BIO_SHIELDED, 
		rad = ARMOR_RAD_SHIELDED
		)

	chest = /obj/item/clothing/suit/space/rig/command/exploration
	helmet = /obj/item/clothing/head/helmet/space/rig/command/exploration
	boots = /obj/item/clothing/shoes/magboots/rig/command/exploration
	gloves = /obj/item/clothing/gloves/rig/command/exploration

	allowed = list(/obj/item/gun,
				   /obj/item/ammo_magazine,
				   /obj/item/flashlight,
				   /obj/item/tank,
				   /obj/item/suit_cooling_unit)

	online_slowdown = 0.50
	offline_slowdown = 4
	offline_vision_restriction = TINT_BLIND

/obj/item/clothing/head/helmet/space/rig/command/exploration
	camera = /obj/machinery/camera/network/exploration
	icon = 'mods/content/hearth_maps/icons/converted_icons/spacesuits/rigs/head/explo_rig.dmi'
	brightness_on = 0.8

/obj/item/clothing/suit/space/rig/command/exploration
	icon = 'mods/content/hearth_maps/icons/converted_icons/spacesuits/rigs/body/explo_rig.dmi'

/obj/item/clothing/gloves/rig/command/exploration
	icon = 'mods/content/hearth_maps/icons/converted_icons/spacesuits/rigs/hands/explo_rig.dmi'

/obj/item/clothing/shoes/magboots/rig/command/exploration
	icon = 'mods/content/hearth_maps/icons/converted_icons/spacesuits/rigs/boots/explo_rig.dmi'

/obj/item/rig/exploration/equipped
	initial_modules = list(
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/flash,
		/obj/item/rig_module/device/anomaly_scanner,
		/obj/item/rig_module/grenade_launcher/light,
		/obj/item/rig_module/cooling_unit)

/*
 Overrides for standard mapset rig items
 */

/obj/item/clothing/head/helmet/space/rig/industrial
	camera = /obj/machinery/camera/network/supply

