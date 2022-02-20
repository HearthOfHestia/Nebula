//Refreshes the icon and sets the luminosity
/obj/machinery/portable_atmospherics/hydroponics/on_update_icon()
	cut_overlays()
	var/new_overlays = list()
	// Updates the plant overlay.
	if(seed)
		if(dead)
			new_overlays |= SSplants.get_dead_overlay('icons/obj/hydroponics/hydroponics_growing.dmi', seed.get_trait(TRAIT_PLANT_ICON))
		else
			if(!seed.growth_stages)
				seed.update_growth_stages()
			if(!seed.growth_stages)
				log_error("<span class='danger'>Seed type [seed.get_trait(TRAIT_PLANT_ICON)] cannot find a growth stage value.</span>")
				return
			var/overlay_stage = get_overlay_stage()
			new_overlays |= seed.get_icon(overlay_stage)
			if(harvest && overlay_stage == seed.growth_stages)
				new_overlays |= SSplants.get_product_overlay('icons/obj/hydroponics/hydroponics_products.dmi', seed.get_trait(TRAIT_PRODUCT_ICON), seed.get_trait(TRAIT_PRODUCT_COLOUR))

	//Updated the various alert icons.
	if(mechanical)
		//Draw the cover.
		if(closed_system)
			new_overlays += "hydrocover2"
		if(seed && health <= (seed.get_trait(TRAIT_ENDURANCE) / 2))
			new_overlays += "over_lowhealth3"
		if(waterlevel <= 10)
			new_overlays += "over_lowwater3"
		if(nutrilevel <= 2)
			new_overlays += "over_lownutri3"
		if(weedlevel >= 5 || pestlevel >= 5 || toxins >= 40)
			new_overlays += "over_alert3"
		if(harvest)
			new_overlays += "over_harvest3"

	if((!density || !opacity) && seed && seed.get_trait(TRAIT_LARGE))
		if(!mechanical)
			set_density(1)
		set_opacity(1)
	else
		if(!mechanical)
			set_density(0)
		set_opacity(0)

	add_overlay(new_overlays)

	// Update bioluminescence.
	if(seed && seed.get_trait(TRAIT_BIOLUM))
		set_light(round(seed.get_trait(TRAIT_POTENCY)/10), l_color = seed.get_trait(TRAIT_BIOLUM_COLOUR))
	else
		set_light(0)

/obj/machinery/portable_atmospherics/hydroponics/proc/get_overlay_stage()
	. = 1
	var/seed_maturation = seed.get_trait(TRAIT_MATURATION)
	if(age >= seed_maturation)
		. = seed.growth_stages
	else
		var/maturation = max(seed_maturation/seed.growth_stages, 1)
		. = max(1, round(age/maturation))