/*
 * Endeavour Excavation
 */

/obj/structure/closet/toolcloset/excavation
	name = "excavation equipment closet"
	desc = "It's a storage unit for excavation equipment."
	closet_appearance = /decl/closet_appearance/secure_closet/engineering/tools

/obj/structure/closet/toolcloset/excavation/WillContain()
	return list(
		/obj/item/storage/belt/archaeology,
		/obj/item/storage/excavation,
		/obj/item/flashlight/lantern,
		/obj/item/ano_scanner,
		/obj/item/depth_scanner,
		/obj/item/core_sampler,
		/obj/item/gps,
		/obj/item/pinpointer/radio,
		/obj/item/radio/beacon,
		/obj/item/clothing/glasses/meson,
		/obj/item/clothing/glasses/science,
		/obj/item/pickaxe,
		/obj/item/measuring_tape,
		/obj/item/pickaxe/xeno/hand,
		/obj/item/storage/bag/fossils,
		/obj/item/hand_labeler,
		/obj/item/taperoll/research,
		/obj/item/spaceflare
	)

/obj/structure/closet/wardrobe/ptgear
	name = "pt gear wardrobe"
	closet_appearance = /decl/closet_appearance/wardrobe/white

/obj/structure/closet/wardrobe/ptgear/WillContain()
	return list(
		/obj/item/clothing/under/iseo/pt = 4,
		/obj/item/clothing/shoes = 2,
		/obj/item/clothing/shoes/color/black = 2)

/obj/random/endeavourcloset //Random closets taking into account endeavour-specific ones
	name = "random closet"
	desc = "This is a random closet."

/obj/random/endeavourcloset/spawn_choices()
	return list(/obj/structure/closet,
				/obj/structure/closet/firecloset,
				/obj/structure/closet/emcloset,
				/obj/structure/closet/jcloset_endeavour,
				/obj/structure/closet/athletic_mixed,
				/obj/structure/closet/toolcloset,
				/obj/structure/closet/toolcloset/excavation,
				/obj/structure/closet/l3closet/general,
				/obj/structure/closet/cabinet,
				/obj/structure/closet/crate,
				/obj/structure/closet/crate/freezer,
				/obj/structure/closet/crate/freezer/rations,
				/obj/structure/closet/crate/internals,
				/obj/structure/closet/crate/trashcart,
				/obj/structure/closet/crate/medical,
				/obj/structure/closet/boxinggloves,
				/obj/structure/closet/secure_closet/crew,
				/obj/structure/closet/secure_closet/crew/research,
				/obj/structure/closet/secure_closet/guncabinet,
				/obj/structure/largecrate,
				/obj/structure/closet/wardrobe/xenos,
				/obj/structure/closet/wardrobe/mixed,
				/obj/structure/closet/wardrobe/suit)

/obj/structure/closet/secure_closet/brig/WillContain()
	return null
