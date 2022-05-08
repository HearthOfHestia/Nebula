/datum/getrev
	var/origincommit  // git rev-parse origin/dev
	var/list/testmerge = list()

/datum/getrev/proc/load_tgs_info()
	testmerge = world.TgsTestMerges()
	var/datum/tgs_revision_information/revinfo = world.TgsRevision()
	if(revinfo)
		revision = revinfo.commit
		origincommit = revinfo.origin_commit
		date = revinfo.timestamp

	// goes to DD log and config_error.txt
	log_world(get_log_message())

/datum/getrev/proc/get_log_message()
	var/list/msg = list()
	msg += "Running Hearth of Hestia revision: [date]"
	if(origincommit)
		msg += "Origin commit: [origincommit]"

	for(var/datum/tgs_revision_information/test_merge/tm as anything in testmerge)
		msg += "Test merge active of PR #[tm.number] commit [tm.head_commit]"

	if(revision && revision != origincommit)
		msg += "HEAD: [revision]"
	else if(!origincommit)
		msg += "No commit information"

	return msg.Join("\n")

/datum/getrev/proc/GetTestMergeInfo(header = TRUE)
	if(!testmerge.len)
		return ""
	. = header ? "The following pull requests are currently test merged:<br>" : ""
	for(var/datum/tgs_revision_information/test_merge/tm as anything in testmerge)
		var/cm = tm.head_commit
		var/details = ": '" + html_encode(tm.title) + "' by " + html_encode(tm.author) + " at commit " + html_encode(copytext_char(cm, 1, 11))
		if(details && findtext(details, "\[s\]") && (!usr || !usr.client.holder))
			continue
		. += "<a href=\"[config.githuburl]/pull/[tm.number]\">#[tm.number][details]</a><br>"

/client/verb/showrevinfo()
	set category = "OOC"
	set name = "Show Server Revision"
	set desc = "Check the current server code revision"

	to_chat(src, "<b>Game ID:</b> [game_id]>")
	to_chat(src, "<b>Client BYOND Version:</b> [byond_version].[byond_build]")
	to_chat(src, "<b>Server BYOND Version:</b> [world.byond_version].[world.byond_build]")
	if(DM_VERSION != world.byond_version || DM_BUILD != world.byond_build)
		to_chat(src, "<b>Compiled with BYOND Version:</b> [DM_VERSION].[DM_BUILD]")
	to_chat(src, "<b>Current map:</b> [global.using_map.full_name]")
	if(global.revdata.branch)
		to_chat(src, "<b>Origin branch:</b> [global.revdata.branch]")
	var/parent_commit = global.revdata.origincommit
	if(parent_commit)
		to_chat(src, "<b>Origin commit:</b> <a href=\"[config.githuburl]/commit/[parent_commit]\">[parent_commit]</a>")
	if(global.revdata.testmerge.len)
		to_chat(src, global.revdata.GetTestMergeInfo())
	if(global.revdata.revision && global.revdata.revision != parent_commit)
		to_chat(src, "<b>Local commit:</b> [global.revdata.revision]")
	if(world.TgsAvailable())
		var/datum/tgs_version/version = world.TgsVersion()
		to_chat(src, "<b>TGS version:</b> [version.raw_parameter]")
		var/datum/tgs_version/api_version = world.TgsApiVersion()
		to_chat(src, "<b>DMAPI version:</b> [api_version.raw_parameter]")