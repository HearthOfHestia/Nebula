/decl/codex_category/species
	name = "Species"
	desc = "Sapient species encountered in known space."

/decl/codex_category/species/Populate()
	for(var/thing in get_all_species())
		var/decl/species/species = get_species_by_key(thing)
		if(!species.hidden_from_codex && !species.is_abstract())
			var/datum/codex_entry/entry = new(
				_display_name = "[species.name] (species)",
				_lore_text = species.codex_description,
				_mechanics_text = species.ooc_codex_information
			)
			items |= entry.name
	. = ..()
