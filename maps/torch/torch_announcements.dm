/datum/map/torch
	emergency_shuttle_docked_message = "Attention all hands: the escape pods are now unlocked. You have %ETD% to board the escape pods."
	emergency_shuttle_leaving_dock = "Attention all hands: the escape pods have been launched, arriving at rendezvous point in %ETA%."

	emergency_shuttle_called_message = "Attention all hands: emergency evacuation procedures are now in effect. Escape pods will unlock in %ETA%"
	emergency_shuttle_called_sound = sound('mods/content/hearth_maps/sounds/abandonship.ogg', volume = 45)

	emergency_shuttle_recall_message = "Attention all hands: emergency evacuation sequence aborted. Return to normal operating conditions."

	command_report_sound = sound('mods/content/hearth_maps/sounds/commandreport.ogg', volume = 45)

	grid_check_message = "Abnormal activity detected in the %STATION_NAME%'s power network. As a precaution, the %STATION_NAME%'s power must be shut down for an indefinite duration."
	grid_check_sound = sound('mods/content/hearth_maps/sounds/poweroff.ogg', volume = 45)

	grid_restored_message = "Ship power to the %STATION_NAME% will be restored at this time"
	grid_restored_sound = sound('mods/content/hearth_maps/sounds/poweron.ogg', volume = 45)

	meteor_detected_sound = sound('mods/content/hearth_maps/sounds/meteors.ogg', volume = 45)

	radiation_detected_message = "High levels of radiation detected in proximity of the %STATION_NAME%. Please evacuate into one of the shielded maintenance tunnels."
	radiation_detected_sound = sound('mods/content/hearth_maps/sounds/radiation.ogg', volume = 45)

	space_time_anomaly_sound = sound('mods/content/hearth_maps/sounds/spanomalies.ogg', volume = 45)

	unknown_biological_entities_message = "Unknown biological entities have been detected near the %STATION_NAME%, please stand-by."

	unidentified_lifesigns_message = "Unidentified lifesigns detected. Please lock down all exterior access points."
	unidentified_lifesigns_sound = sound('mods/content/hearth_maps/sounds/aliens.ogg', volume = 45)

	lifesign_spawn_sound = sound('mods/content/hearth_maps/sounds/aliens.ogg', volume = 45)

	electrical_storm_moderate_sound = sound('mods/content/hearth_maps/sounds/electricalstormmoderate.ogg', volume = 45)
	electrical_storm_major_sound = sound('mods/content/hearth_maps/sounds/electricalstormmajor.ogg', volume = 45)

/datum/map/torch/level_x_biohazard_sound(var/bio_level)
	switch(bio_level)
		if(7)
			return sound('mods/content/hearth_maps/sounds/outbreak7.ogg', volume = 45)
		else
			return sound('mods/content/hearth_maps/sounds/outbreak5.ogg', volume = 45)
