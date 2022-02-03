/obj/structure/morgue/wall
    name = "wall-mounted morgue tray"
    density = FALSE

/obj/structure/morgue/wall/open()
	if(open)
		return

	if(!connected_tray)
		return

	playsound(src, 'sound/items/Deconstruct.ogg', 50, 1)
	var/turf/T = get_turf(src)
	connected_tray.forceMove(T)
	connected_tray.set_dir(dir)
	for(var/atom/movable/A in src)
		A.forceMove(get_turf(connected_tray))

	open = TRUE
	update_icon()

/obj/structure/crematorium/wall
    name = "wall-mounted crematorium"
    density = FALSE

/obj/structure/crematorium/wall/open()
	if(cremating || locked || open)
		return

	if(!connected_tray)
		return

	playsound(src, 'sound/items/Deconstruct.ogg', 50, 1)
	var/turf/T = get_step(src, dir)
	connected_tray.forceMove(T)
	connected_tray.set_dir(dir)
	for(var/atom/movable/A in src)
		A.forceMove(get_turf(connected_tray))

	open = TRUE
	update_icon()