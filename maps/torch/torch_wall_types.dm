/turf/simulated/wall/r_wall/map_preset/tan
	paint_color = COLOR_BEIGE
	stripe_color = COLOR_BEIGE
	color = COLOR_BEIGE // color exists for mapping only.

/turf/simulated/wall/r_wall/map_preset/Initialize(ml, materialtype, rmaterialtype)
	. = ..()
	color = null
	update_icon()