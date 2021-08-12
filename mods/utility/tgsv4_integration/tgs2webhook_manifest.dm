/decl/webhook/crew_manifest
	id = WEBHOOK_CREW_MANIFEST

/decl/webhook/crew_manifest/get_message(var/list/data)
	. = ..()
	var/list/fields = list()
	for(var/department in data["manifest"])
		var/field_value = ""
		for(var/entry in data["manifest"][department])
			field_value += "[entry["name"]] - [entry["rank"]]\n"
		fields += list(list()"inline" = TRUE, "name" = department, "value" = field_value)
	.["embeds"] = list(list(
		"title" = "Crew Manifest",
		"fields" = fields,
		"color" = COLOR_WEBHOOK_DEFAULT
	))