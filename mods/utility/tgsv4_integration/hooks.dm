/hook/startup/proc/tgs_on_world_start()
	world.TgsNew()
	return TRUE

/hook/global_init/proc/tgs_on_init()
	world.TgsInitializationComplete()
	return TRUE

/hook/shutdown/proc/tgs_on_shutdown()
	world.TgsReboot()
	return TRUE
