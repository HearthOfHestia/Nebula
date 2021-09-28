/datum/codex_entry/rawcutlet
	associated_paths = list(/obj/item/chems/food/rawcutlet)

/datum/codex_entry/rawcutlet/New(_display_name, list/_associated_paths, list/_associated_strings, _lore_text, _mechanics_text, _antag_text)
	. = ..()
	var/obj/item/chems/food/rawcutlet/example
	lore_text = initial(example.desc)
	mechanics_text = "Three raw cutlets can be made by slicing a piece of raw meat with any sharp object. It can be cooked to make a <l>cutlet</l>."

/datum/codex_entry/rawbacon
	associated_paths = list(/obj/item/chems/food/rawbacon)

/datum/codex_entry/rawbacon/New(_display_name, list/_associated_paths, list/_associated_strings, _lore_text, _mechanics_text, _antag_text)
	. = ..()
	var/obj/item/chems/food/rawbacon/example
	lore_text = initial(example.desc)
	mechanics_text = "Three strips of raw bacon can be made by slicing a raw cutlet with any sharp object. It can be cooked to make <l>bacon</l>."

/datum/codex_entry/doughslice
	associated_paths = list(/obj/item/chems/food/doughslice)

/datum/codex_entry/doughslice/New(_display_name, list/_associated_paths, list/_associated_strings, _lore_text, _mechanics_text, _antag_text)
	. = ..()
	var/obj/item/chems/food/doughslice/example
	lore_text = initial(example.desc)
	mechanics_text = "A dough slice can be made by slicing a piece of <l>flatdough</l> with any sharp object."

/datum/codex_entry/flatdough
	associated_paths = list(/obj/item/chems/food/sliceable/flatdough)

/datum/codex_entry/flatdough/New(_display_name, list/_associated_paths, list/_associated_strings, _lore_text, _mechanics_text, _antag_text)
	. = ..()
	var/obj/item/chems/food/sliceable/flatdough/example
	lore_text = initial(example.desc)
	mechanics_text = "A flatdough can be made by flattening <l>dough</l> with a rolling pin."
