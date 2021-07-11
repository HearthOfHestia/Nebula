/decl/topic_command/tgs
	base_type = /decl/topic_command/tgs
#ifdef TGS_V3_AI
/decl/topic_command/tgs/three
	name = SERVICE_CMD_PARAM_COMMAND
#endif
/decl/topic_command/tgs/four
	name = TGS4_PARAMETER_COMMAND
/decl/topic_command/tgs/five
	name = DMAPI5_TOPIC_DATA
/// Bypasses can_use for TGS' internal handling.
/decl/topic_command/tgs/try_use(var/T, var/addr, var/master, var/key)
	TGS_TOPIC