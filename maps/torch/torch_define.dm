/datum/map/torch
	name = "Endeavour"
	full_name = "ISEO Endeavour"
	path = "torch"
	flags = MAP_HAS_BRANCH | MAP_HAS_RANK
	welcome_sound = 'mods/content/hearth_maps/sounds/cryorevival.ogg'
	//config_path = "config/torch_config.txt"

	admin_levels = list(7)
	accessible_z_levels = list("1"=1,"2"=3,"3"=1,"4"=1,"5"=1,"6"=1,"9"=30)
	usable_email_tlds = list("endeavour.issc.iseo", "endeavour.espatier.mil", "freemail.net")

	allowed_spawns = list(/decl/spawnpoint/cryo)
	default_spawn = /decl/spawnpoint/cryo

	station_name  = "ISEO Endeavour"
	station_short = "Endeavour"
	dock_name     = "TBD"
	boss_name     = "ISEO Command"
	boss_short    = "Command"
	company_name  = "International Stellar Exploration Organization"
	company_short = "ISEO"
	game_year = 184

	map_admin_faxes = list(
		"ISEO National Council",
		"ISEO Interstellar Logistics",
		"Espatier Corps Command",
		"Bureau of Diplomatic Affairs",
		"Emergency Management Bureau",
		"Secure Routing Service"
	)

	//These should probably be moved into the evac controller...
	shuttle_docked_message = "Attention all hands: Interstellar jump preparation complete. The superluminal shunt is now spooling up, secure all stations for departure. Time to jump: approximately %ETD%."
	shuttle_leaving_dock = "Attention all hands: Interstellar jump initiated, exiting shunt-space in %ETA%."
	shuttle_called_message = "Attention all hands: Interstellar jump sequence initiated. Transit procedures are now in effect. Jump in %ETA%."
	shuttle_recall_message = "Attention all hands: Jump sequence aborted, return to normal operating conditions."

	evac_controller_type = /datum/evacuation_controller/starship

	num_exoplanets = 1

	away_site_budget = 3
	id_hud_icons = 'mods/content/hearth_maps/icons/assignment_hud.dmi'
