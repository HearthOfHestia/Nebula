/obj/structure/aicore/deactivated
	var/core_type //used for shards, department decl used

/obj/structure/aicore/deactivated/Initialize()
	. = ..()
	empty_playable_ai_cores += src

/obj/structure/aicore/deactivated/command
	core_type = /decl/department/command

/obj/structure/aicore/deactivated/security
	core_type = /decl/department/security

/obj/structure/aicore/deactivated/engineering
	core_type = /decl/department/engineering

/obj/structure/aicore/deactivated/medical
	core_type = /decl/department/medical

/obj/structure/aicore/deactivated/research
	core_type = /decl/department/science
