/datum/unit_test/valid_uids
	name = "DECL: UIDs shall be unique and valid"
	var/static/list/mandatory_uid_types = list(
		/decl/material
	)

/datum/unit_test/valid_uids/start_test()

	var/list/failures = list()

	// Check text uid values for mandatory types
	for(var/mandatory_type in mandatory_uid_types)
		for(var/decl_type in typesof(mandatory_type))
			var/decl/decl = GET_DECL(decl_type)
			if(decl.is_abstract())
				continue
			if(!istext(decl.uid))
				failures += "[decl_type] - non-text UID '[decl.uid || "NULL"]' on mandatory type"

	// Check uid uniqueness.
	var/list/seen_uids = list()
	for(var/decl_type in typesof(/decl))
		var/decl/initial_decl = decl_type
		if(initial(initial_decl.abstract_type) == decl_type)
			continue
		var/decl/decl = GET_DECL(decl_type)
		if(decl.uid && seen_uids[decl.uid])
			failures += "[decl_type] - non-unique UID '[decl.uid || "NULL"]' (first seen on [seen_uids[decl.uid]])"
		else
			seen_uids[decl.uid] = decl_type

	// Report failures.
	if(length(failures))
		fail("[length(failures)] /decl\s failed UID validation:\n[jointext(failures, "\n")]")
	else
		pass("All /decl UIDs were validated successfully.")
	return 1