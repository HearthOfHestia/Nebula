/decl/ai_type
	var/name //name of module
	var/drone_type //type of drone
	var/color //holopad color
	var/lawset //lawset
	var/department //this is a typepath
	var/list/access = list() //list of access this AI can have.

/decl/ai_type/proc/configure_ai(var/mob/living/silicon/ai/computer)
	computer.laws = new lawset
	computer.custom_color_tone = color
	computer.assigned_type = src
	computer.idcard.access = access.Copy()
