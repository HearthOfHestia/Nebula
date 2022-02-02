/decl/hierarchy/supply_pack/security/secarmor
	name = "Armor - ISEO Security"
	contains = list(/obj/item/clothing/suit/armor/vest/government/sec = 2,
					/obj/item/clothing/head/helmet/iseo/security =2)
	cost = 20
	containertype = /obj/structure/closet/crate/secure
	containername = "security armor crate"
	access = access_security

/decl/hierarchy/supply_pack/security/espatierarmor
	name = "Armor - Peacekeeper"
	contains = list(/obj/item/clothing/suit/armor/vest/government/peacekeeper = 2,
					/obj/item/clothing/head/helmet/iseo/peacekeeper =2)
	cost = 30
	containertype = /obj/structure/closet/crate/secure
	containername = "peacekeeper armor crate"
	access = access_emergency_armory

/decl/hierarchy/supply_pack/security/comarmor
	name = "Armor - Command"
	contains = list(/obj/item/clothing/suit/armor/vest/government/command = 2,
					/obj/item/clothing/head/helmet/command = 2)
	cost = 20
	containertype = /obj/structure/closet/crate/secure
	containername = "command armor crate"
	access = access_heads