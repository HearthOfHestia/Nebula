/turf/simulated/floor
	name = "bare deck"

/turf/simulated/floor/tiled
	name = "deck"

/decl/flooring/tiling
	name = "deck"

/decl/flooring/hangar_door
	name = "hangar door"
	desc = "A thick, retractable blast door."
	icon = 'maps/torch/icons/hangar_door_turf.dmi'
	icon_base = "hangardoor"
	damage_temperature = T0C+2500
	flags = TURF_HAS_CORNERS
	can_engrave = FALSE
	floor_smooth = SMOOTH_NONE
	wall_smooth = SMOOTH_NONE
	space_smooth = SMOOTH_NONE

/decl/flooring/hangar_door/glass
	icon_base = "hangardoor_glass"
	z_flags = ZM_MIMIC_BELOW

/turf/simulated/floor/hangar
	icon = 'maps/torch/icons/hangar_door_turf.dmi'
	icon_state = "hangardoor"
	initial_flooring = /decl/flooring/hangar_door

/turf/simulated/floor/hangar/glass
	icon_state = "hangardoor_glass"
	initial_flooring = /decl/flooring/hangar_door/glass


/turf/simulated/floor/shuttle_ceiling/torch
	color = COLOR_HULL

/turf/simulated/floor/shuttle_ceiling/torch/air
	initial_gas = list(GAS_OXYGEN = MOLES_O2STANDARD, GAS_NITROGEN = MOLES_N2STANDARD)
