/datum/map/torch/setup_map()
	..()
	system_name = generate_system_name()
	minor_announcement = new(new_sound = sound('maps/torch/sounds/commandreport.ogg', volume = 45))

/datum/map/torch/get_map_info()
	. = list()
	. +=  "You're aboard the " + replacetext("<b>[station_name]</b>", "\improper", "") + ", an ISEO Starship. Its primary mission is looking for undiscovered sapient alien species, and general exploration along the way."
	. +=  "The vessel is staffed with a mix of ISEO Personnel, and military personnel under the command of the ISEO."
	. +=  "This area of space is uncharted, far, far away from Sol. You might encounter remote outposts or drifting hulks, but no recognized government holds claim on this sector."
	. +=  "Out here, it is just you and the rest of the crew - tensions may flare, old rivalries might come up. The Endeavour is a test for Humanity in more than one sense."
	return jointext(., "<br>")

/datum/map/torch/send_welcome()
	var/obj/effect/overmap/visitable/ship/torch = SSshuttle.ship_by_type(/obj/effect/overmap/visitable/ship/torch)

	var/welcome_text = "<center><img src = 'iseo.png'><br /><font size = 3><b>ISEO Endeavour</b> Sensor Readings:</font><br>"
	welcome_text += "Report generated on [stationdate2text()] at [stationtime2text()]</center><br /><br />"
	welcome_text += "<hr>Current system:<br /><b>[torch ? system_name() : "Unknown"]</b><br /><br>"

	if (torch) //If the overmap is disabled, it's possible for there to be no torch.
		var/list/space_things = list()
		welcome_text += "Current Coordinates:<br /><b>[torch.x]:[torch.y]</b><br /><br>"
		welcome_text += "Next system targeted for jump:<br /><b>[generate_system_name()]</b><br /><br>"
		welcome_text += "Travel time to Sol:<br /><b>[rand(65,78)] days</b><br /><br>"
		welcome_text += "Time since last port visit:<br /><b>[rand(60,180)] days</b><br /><hr>"
		welcome_text += "Scan results show the following points of interest:<br />"

		for(var/zlevel in global.overmap_sectors)
			var/obj/effect/overmap/visitable/O = global.overmap_sectors[zlevel]
			if(O.name == torch.name)
				continue
			if(istype(O, /obj/effect/overmap/visitable/ship/landable)) //Don't show shuttles
				continue
			if (O.hide_from_reports)
				continue
			space_things |= O

		var/list/distress_calls
		for(var/obj/effect/overmap/visitable/O in space_things)
			var/location_desc = " at present co-ordinates."
			if(O.loc != torch.loc)
				var/bearing = round(90 - Atan2(O.x - torch.x, O.y - torch.y),5) //fucking triangles how do they work
				if(bearing < 0)
					bearing += 360
				location_desc = ", bearing [bearing]."
			if(O.has_distress_beacon)
				LAZYADD(distress_calls, "[O.has_distress_beacon][location_desc]")
			welcome_text += "<li>\A <b>[O.name]</b>[location_desc]</li>"

		if(LAZYLEN(distress_calls))
			welcome_text += "<br><b>Distress calls logged:</b><br>[jointext(distress_calls, "<br>")]<br>"
		else
			welcome_text += "<br>No distress calls logged.<br />"
		welcome_text += "<hr>"

	post_comm_message("ISEO Endeavour Sensor Readings", welcome_text)
	minor_announcement.Announce(message = "New [global.using_map.company_name] Update available at all communication consoles.")
