SUBSYSTEM_DEF(codex)
	name = "Codex"
	flags = SS_NO_FIRE
	init_order = SS_INIT_MISC_CODEX
	var/regex/linkRegex

	var/list/all_entries =       list()
	var/list/entries_by_path =   list()
	var/list/entries_by_string = list()
	var/list/index_file =        list()
	var/list/search_cache =      list()
	var/list/categories =        list()
	// HEARTH ADDITION
	var/list/name_cache =        list()
	// END HEARTH ADDITION

/datum/controller/subsystem/codex/Initialize()
	// Codex link syntax is such:
	// <l>keyword</l> when keyword is mentioned verbatim,
	// <span codexlink='keyword'>whatever</span> when shit gets tricky
	linkRegex = regex(@"<(span|l)(\s+codexlink='([^>]*)'|)>([^<]+)</(span|l)>","g")

	// Create general hardcoded entries.
	for(var/ctype in typesof(/datum/codex_entry))
		var/datum/codex_entry/centry = ctype
		if(initial(centry.name) || initial(centry.associated_paths) || initial(centry.associated_strings))
			centry = new centry()

	// Create categorized entries.
	var/list/categories = decls_repository.get_decls_of_subtype(/decl/codex_category)
	for(var/ctype in categories)
		var/decl/codex_category/cat = categories[ctype]
		if(cat?.name)
			cat.Populate()

	// Create the index file for later use.
	for(var/thing in SScodex.all_entries)
		var/datum/codex_entry/entry = thing
		index_file[entry.name] = entry
	index_file = sortTim(index_file, /proc/cmp_text_asc)
	. = ..()

/datum/controller/subsystem/codex/proc/parse_links(string, viewer)
	while(linkRegex.Find(string))
		// HEARTH MODIFICATION START
		var/list/linked_entries
		var/datum/codex_entry/linked_entry
		if(linkRegex.group[2])
			linked_entry = get_entry_by_string(linkRegex.group[3])
		else
			linked_entries = retrieve_entries_for_name(linkRegex.group[4])
			linked_entry = LAZYACCESS(linked_entries, 1)
		var/replacement = linkRegex.group[4]
		if (LAZYLEN(linked_entries) > 1)
			replacement = "<a href='?src=\ref[SScodex];show_disambiguation=[replacement];show_to=\ref[viewer]'>[replacement]</a>"
		else if(linked_entry)
		// HEARTH MODIFICATION END
			replacement = "<a href='?src=\ref[SScodex];show_examined_info=\ref[linked_entry];show_to=\ref[viewer]'>[replacement]</a>"
		string = replacetextEx(string, linkRegex.match, replacement)
	return string

/datum/controller/subsystem/codex/proc/get_codex_entry(var/entry)
	if(istype(entry, /atom))
		var/atom/entity = entry
		if(entity.get_specific_codex_entry())
			return entity.get_specific_codex_entry()
		return get_entry_by_string(entity.name) || entries_by_path[entity.type]
	else if(entries_by_path[entry])
		return entries_by_path[entry]
	else if(entries_by_string[lowertext(entry)])
		return entries_by_string[lowertext(entry)]

/datum/controller/subsystem/codex/proc/get_entry_by_string(var/string)
	return entries_by_string[lowertext(trim(string))]

/datum/controller/subsystem/codex/proc/present_codex_entry(var/mob/presenting_to, var/datum/codex_entry/entry)
	if(entry && istype(presenting_to) && presenting_to.client)
		var/datum/browser/popup = new(presenting_to, "codex\ref[entry]", "Codex", nheight=425)
		popup.set_content(parse_links(entry.get_text(presenting_to), presenting_to))
		popup.open()

/datum/controller/subsystem/codex/proc/get_guide(var/category)
	var/decl/codex_category/cat = GET_DECL(category)
	. = cat?.guide_html

/datum/controller/subsystem/codex/proc/retrieve_entries_for_string(var/searching)

	if(!initialized)
		return list()

	searching = sanitize(lowertext(trim(searching)))
	if(!searching)
		return list()
	if(!search_cache[searching])
		var/list/results
		if(entries_by_string[searching])
			results = list(entries_by_string[searching])
		else
			results = list()
			for(var/entry_title in entries_by_string)
				var/datum/codex_entry/entry = entries_by_string[entry_title]
				if(findtext(entry.name, searching) || \
				 findtext(entry.lore_text, searching) || \
				 findtext(entry.mechanics_text, searching) || \
				 findtext(entry.antag_text, searching))
					results |= entry
		search_cache[searching] = dd_sortedObjectList(results)
	return search_cache[searching]

// HEARTH ADDITION START
/// Like retrieve_entries_for_string, but it only searches for matches in names and other associated strings.
/datum/controller/subsystem/codex/proc/retrieve_entries_for_name(var/name, var/ignore_categories = TRUE, var/exact_word = TRUE)
	if(!initialized)
		return list()

	name = sanitize(lowertext(trim(name)))
	if(!name)
		return list()
	if(!name_cache[name])
		var/list/results
		if(entries_by_string[name])
			results = list(entries_by_string[name])
		else
			results = list()
			for(var/entry_title in entries_by_string)
				var/datum/codex_entry/entry = entries_by_string[entry_title]
				var/check_string = entry_title
				if(ignore_categories)
					check_string = replacetext(check_string, regex(@" \([^)]+\)$"), "")
				if (check_string == name)
					results = list(entry)
					break
				if (exact_word)
					if(findtext(check_string, regex("\\b[name]\\b"))) // take into account word boundaries
						results |= entry
				else
					if(findtext(check_string, name))
						results |= entry
		name_cache[name] = dd_sortedObjectList(results)
	return name_cache[name]
// HEARTH ADDITION END

// HEARTH MODIFICATION START
/datum/controller/subsystem/codex/Topic(href, href_list)
	. = ..()
	if(.)
		return .
	if (href_list["show_to"])
		var/mob/showing_mob =   locate(href_list["show_to"])
		if(!istype(showing_mob) || !showing_mob.can_use_codex())
			return
		if (href_list["show_examined_info"])
			var/atom/showing_atom = locate(href_list["show_examined_info"])
			var/entry
			if(istype(showing_atom, /datum/codex_entry))
				entry = showing_atom
			else if(istype(showing_atom))
				entry = get_codex_entry(showing_atom.get_codex_value())
			else
				entry = get_codex_entry(href_list["show_examined_info"])

			if(entry)
				present_codex_entry(showing_mob, entry)
				return TRUE
		else if (href_list["show_disambiguation"])
			var/search_string = href_list["show_disambiguation"]
			var/list/all_entries = SScodex.retrieve_entries_for_name(search_string)
			if(showing_mob && showing_mob.mind && !player_is_antag(showing_mob.mind))
				all_entries = all_entries.Copy() // So we aren't messing with the codex search cache.
				for(var/datum/codex_entry/entry in all_entries)
					if(entry.antag_text && !entry.mechanics_text && !entry.lore_text)
						all_entries -= entry
			switch(LAZYLEN(all_entries))
				if(0)
					to_chat(src, SPAN_NOTICE("The codex reports <b>no matches</b> for '[search_string]'. Please report this on Github, along with what link you clicked!"))
				if(1)
					SScodex.present_codex_entry(showing_mob, all_entries[1])
				else
					var/list/codex_data = list()
					var/datum/codex_entry/linked_entry = SScodex.get_entry_by_string("nexus")
					codex_data += "<a href='?src=\ref[SScodex];show_examined_info=\ref[linked_entry];show_to=\ref[showing_mob]'>Home</a>"
					codex_data += "<a href='?src=\ref[showing_mob.client];codex_search=1'>Search Codex</a>"
					codex_data += "<a href='?src=\ref[showing_mob.client];codex_index=1'>List All Entries</a>"
					codex_data += "<hr><h2>[search_string] (Disambiguation)</h2>"
					codex_data += "<table width = 100%>"
					for(var/i = 1 to all_entries.len)
						var/datum/codex_entry/entry = all_entries[i]
						codex_data += "<tr><td>[entry.name]</td><td><a href='?src=\ref[SScodex];show_examined_info=\ref[entry];show_to=\ref[showing_mob]'>View</a></td></tr>"
					codex_data += "</table>"
					var/datum/browser/popup = new(showing_mob, "codex-disambig", "Codex Disambiguation")
					popup.set_content(jointext(codex_data, null))
					popup.open()
// HEARTH MODIFICATION END