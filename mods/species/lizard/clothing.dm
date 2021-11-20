/obj/item/clothing/under/Initialize()
	. = ..()
	if(fexists("mods/species/lizard/[icon]"))
		LAZYSET(sprite_sheets, BODYTYPE_UNATHI, file("mods/species/lizard/[icon]"))