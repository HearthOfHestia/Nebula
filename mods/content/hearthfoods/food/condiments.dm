/hook/global_init/proc/condi_add()
	var/obj/item/chems/condiment/C = new()
	C.special_bottles[/decl/material/solid/spacespice] = /obj/item/chems/condiment/small/spacespice
	qdel(C)

/obj/item/chems/condiment/small/spacespice
	name = "\improper Space-Spice! bottle"
	desc = "Space-Spice! brand Space-Spice!, manufactured by Space-Spice! Ltd., is a proprietary blend of spices claimed to taste better in space. This claim has not been evaluated by any scientific research and does not purport to treat or cure any disease, real or fictional. Any resemblance to other seasonings alive or dead is entirely coincidental."
	icon = 'mods/content/hearthfoods/icons/obj/food.dmi'
	icon_state = "spacespicebottle"
	possible_transfer_amounts = @"[1,40]"
	volume = 40
	center_of_mass = @"{'x':16,'y':9}"
	starting_reagents = list(/decl/material/solid/spacespice = 40)