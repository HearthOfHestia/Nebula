var/global/list/tail_styles_list = list()	//stores /decl/sprite_accessory/ indexed by name
var/global/list/ear_styles_list = list()	//stores /decl/sprite_accessory/ears indexed by name

/hook/startup/proc/init_ears_tails_datums()
	//Tails.
	global.tail_styles_list = decls_repository.get_decls_of_subtype(/decl/sprite_accessory/tail)
	//Ears.
	global.ear_styles_list = decls_repository.get_decls_of_subtype(/decl/sprite_accessory/ears)
	return TRUE