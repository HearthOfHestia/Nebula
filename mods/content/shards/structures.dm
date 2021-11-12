/obj/structure/aicore/deactivated
	var/core_type //used for shards, department decl used

/obj/structure/aicore/deactivated/Initialize()
	. = ..()
	empty_playable_ai_cores += src
