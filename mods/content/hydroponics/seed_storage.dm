/obj/machinery/seed_storage/garden/Initialize()
	LAZYSET(starting_seeds, /obj/item/seeds/opiumseed, 15)
	. = ..()

/obj/machinery/seed_storage/xenobotany/Initialize()
	LAZYSET(starting_seeds, /obj/item/seeds/opiumseed, 15)
	. = ..()