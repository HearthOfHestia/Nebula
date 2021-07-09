/obj/item/clothingbag/uniform
	name = "uniform clothing bag"
	var/list/spawn_contents = list()

/obj/item/clothingbag/uniform/Initialize(ml, material_key)
	. = ..()
	for(var/I in spawn_contents)
		if(ispath(I))
			new I(src)