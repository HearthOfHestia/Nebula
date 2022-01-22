/datum/tgs_chat_command/tgsstatus
	name = "status"
	help_text = "Gets the admincount, playercount, gamemode, and true game mode of the server"
	admin_only = TRUE

/datum/tgs_chat_command/tgsstatus/Run(datum/tgs_chat_user/sender, params)
	var/list/allmins = global.admins
	var/status = "Admins: [allmins.len] ([english_list(allmins)])."
	status += "Players: [global.clients.len]. Mode: [SSticker.mode ? SSticker.mode.name : "Not started"]."
	return status

/datum/tgs_chat_command/tgscheck
	name = "check"
	help_text = "Gets the playercount, gamemode, and address of the server"
	admin_only = FALSE

/datum/tgs_chat_command/tgscheck/Run(datum/tgs_chat_user/sender, params)
	var/server = config.server
	return "[game_id ? "Round #[game_id]: " : ""][global.clients.len] players on [global.using_map.full_name], Mode: [SSticker.mode ? SSticker.mode.name : "Not started"]; Round [Master.current_runlevel >= RUNLEVEL_GAME ? (Master.current_runlevel == RUNLEVEL_GAME ? "Active" : "Finishing") : "Starting"] -- [server ? server : "[world.internet_address]:[world.port]"]"

/datum/tgs_chat_command/tgs_manifest_webhook
	name = "manifest"
	help_text = "Fetches the Crew Manifest via webhook."
	admin_only = FALSE

/datum/tgs_chat_command/tgs_manifest_webhook/Run(datum/tgs_chat_user/sender, params)
	SSwebhooks.send(WEBHOOK_CREW_MANIFEST, list("manifest" = nano_crew_manifest()))
	return ""

