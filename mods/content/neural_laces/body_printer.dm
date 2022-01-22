#define MAX_PRINTING_PASSES 5
#define COST_PER_PRINT 15000 //in cm3
#define BIOPRINTER_MAX_MATERIALS 30000
#define MATERIAL_LOW 1
#define MATERIAL_VERY_LOW 2
#define MATERIAL_FULL 3

/obj/machinery/bioprinter
	name = "bioprinter"
	desc = "An enormous machine designed to additively manufacture living things. You wouldn't download a person."
	icon = 'mods/content/neural_laces/new_printer.dmi'
	icon_state = "base"
	density = TRUE
	anchored = TRUE
	idle_power_usage = 200
	active_power_usage = 15 KILOWATTS
	stat_immune = 0

	var/printing = FALSE
	var/needs_attention = FALSE
	var/errored = FALSE
	var/print_finished = FALSE
	var/removing_clone = FALSE
	var/cleaning = FALSE
	var/cleaning_interrupted = FALSE

	var/printing_time = 6 MINUTES
	var/printing_end_time //What time we will finish printing.

	var/width = 2
	var/height = 2

	var/tool_pixel_y_offset
	var/mob_mask_y_offset

	var/total_interactions = 0
	var/max_interaction_requests = 4
	var/next_interaction_request = 0
	var/last_warning_sound = 0 //we have a delay on playing our warning sounds.
	var/next_interact_request_delay = 10 SECONDS
	var/cleaning_delay = 5 MINUTES

	var/interaction_timer_id
	var/cleaning_timer_id

	var/increment_delay //The time between y increments for the alpha masking of the mob icon and the print head. This is based on the printing time, hence why it is configurable.
	var/next_increment = 0
	var/total_passes = 0
	var/obj/item/disk/dna/diskette
	var/datum/sound_token/sound_token
	var/sound_id

	var/list/materials = list(/decl/material/solid/meat = 0, /decl/material/solid/bone = 0)

	var/list/technobabble_systems = list(
		"microservo positioning system",
		"flash-sterilization subsystem",
		"flash-differentiation feed system",
		"print laser power regulation system",
		"biomass circulation subsystem",
		"neural stimulation subsystem"
		)
	var/list/technobabble_used = list()

	var/static/list/cached_choices = null

	var/last_used_technobabble

	var/obj/structure/clone_pod_lid/lid
	var/obj/structure/print_head/ph

	var/list/clone_mobs = list()
	var/mob/living/carbon/human/clonemob
	var/lid_open = FALSE

/obj/machinery/bioprinter/filled/Initialize()
	. = ..()
	materials[/decl/material/solid/meat] = BIOPRINTER_MAX_MATERIALS
	materials[/decl/material/solid/bone] = BIOPRINTER_MAX_MATERIALS

/obj/machinery/bioprinter/Initialize()
	. = ..()
	ph = new(src)
	ph.layer += 0.06
	lid = new(src)
	lid.layer += 0.08
	vis_contents += lid
	open_pod_start()
	prepare_choices()
	make_fake_mobs()
	var/delay = get_printing_increment()
	next_interact_request_delay = (delay - delay/2)
	SetBounds()
	if(!sound_id)
		sound_id = "[type]_[sequential_id(/obj/machinery/bioprinter)]"

/obj/machinery/bioprinter/Destroy()
	. = ..()
	remove_fake_mobs()
	if(clonemob)
		qdel(clonemob)
		clonemob = null
	qdel(ph)
	ph = null
	qdel(lid)
	lid = null
	clone_mobs.Cut()
	sound_token = null

/obj/machinery/bioprinter/examine(mob/user)
	. = ..()
	for(var/S in materials)
		var/decl/material/exam_material = GET_DECL(S)
		var/mat_amt = 0
		mat_amt = materials[S]
		if(mat_amt > 0)
			mat_amt = round((materials[S]/SHEET_MATERIAL_AMOUNT))
		to_chat(user, SPAN_NOTICE("\The [src] has [mat_amt] sheets of [exam_material.name] out of [BIOPRINTER_MAX_MATERIALS/SHEET_MATERIAL_AMOUNT] in it!"))

/obj/machinery/bioprinter/proc/SetBounds()
	bound_width = width * world.icon_size
	bound_height = height * world.icon_size

/obj/machinery/bioprinter/proc/prepare_choices()
	if(!LAZYLEN(cached_choices))
		cached_choices = list()

		var/image/radial_button

		radial_button = image(icon = 'icons/obj/items/device/diskette.dmi', icon_state = ICON_STATE_WORLD)
		radial_button.name = "Eject \the DNA disk"
		cached_choices["disk_eject"] = radial_button

		radial_button = image('icons/screen/radial.dmi', "radial_eject")
		radial_button.name = "Eject \the [clonemob]"
		cached_choices["eject_clone"] = radial_button

		radial_button = image('icons/screen/radial.dmi', "radial_use")
		radial_button.name = "Start print"
		cached_choices["start_print"] = radial_button

		radial_button = image('icons/screen/radial.dmi', "radial_next")
		radial_button.name = "Interact"
		cached_choices["interact"] = radial_button

/obj/machinery/bioprinter/attackby(obj/item/I, mob/user)
	. = ..()
	if(istype(I, /obj/item/disk/dna) && !diskette)
		var/obj/item/disk/dna/D = I
		if(user.unEquip(D))
			D.forceMove(src)
			diskette = D
			to_chat(user, SPAN_NOTICE("You insert \the [D] into \the [src]."))
		return TRUE
	if(isitem(I) && LAZYLEN(I.matter) && (I.matter[1] in materials))
		accept_materials(I, user)

/obj/machinery/bioprinter/proc/accept_materials(var/obj/item/S, var/user)
	// by this point, we assume that the stack is indeed a material we need.
	// this code is all really cringe and does not give a shit beyond the first entry in matter because it shouldn't be accepting anything else.
	// this is bad, yes!
	// too bad!

	if(materials[S.matter[1]] == BIOPRINTER_MAX_MATERIALS)
		to_chat(user, SPAN_WARNING("\The [src] is full of [S]!"))
		return
	if(isstack(S))
		var/obj/item/stack/ST = S
		var/sheets_input = input(user, "How many sheets do you wish to input?", "Sheet Input", 0) as num|null

		if(sheets_input == 0)
			return

		sheets_input = clamp(sheets_input, 1, ST.amount)

		var/free_space = BIOPRINTER_MAX_MATERIALS - materials[ST.matter[1]]
		var/max_input = round((free_space / SHEET_MATERIAL_AMOUNT))
		if(max_input == 0)
			to_chat(user, SPAN_WARNING("\The [src] is too full to add \the [ST]!"))
			return

		sheets_input = min(sheets_input, max_input)

		var/input_amt = sheets_input * SHEET_MATERIAL_AMOUNT

		if((materials[ST.matter[1]] + input_amt) >= BIOPRINTER_MAX_MATERIALS) //doublecheck sanity
			return

		materials[ST.matter[1]] += input_amt
		ST.use(sheets_input)
		to_chat(user, SPAN_NOTICE("You insert [sheets_input] sheets of [S] into \the [src]."))
	else
		var/mat = S.matter[1]
		if(materials[mat] += S.matter[mat] > BIOPRINTER_MAX_MATERIALS)
			return
		qdel(S)
		materials[S.matter[1]] += S.matter[mat]

/obj/machinery/bioprinter/proc/check_materials()
	var/mats_low
	var/mats_very_low
	for(var/S in materials)
		if(materials[S] <= 15000 && materials[S] > 5000)
			mats_low++
		if(materials[S] <= 5000)
			mats_very_low++
	if(mats_very_low)
		return MATERIAL_VERY_LOW
	if(mats_low)
		return MATERIAL_LOW
	else
		return MATERIAL_FULL

/obj/machinery/bioprinter/proc/use_materials(var/material1, var/material2, var/mat1amt, var/mat2amt)
	if(materials[material1] < mat1amt || materials[material2] < mat2amt) //if either material is too low, return.
		return FALSE
	materials[material1] -= mat1amt
	materials[material2] -= mat2amt
	return TRUE

/obj/machinery/bioprinter/proc/open_pod_start()
	animate(lid, pixel_y = 38, time = 3 SECONDS, easing = SINE_EASING)
	addtimer(CALLBACK(src, .proc/open_pod_finish), 3 SECONDS)
	playsound(get_turf(src), 'sound/machines/podopen.ogg', 75)

/obj/machinery/bioprinter/proc/open_pod_finish()
	lid_open = TRUE

/obj/machinery/bioprinter/proc/close_pod_start()
	animate(lid, pixel_y = 0, time = 3 SECONDS, easing = SINE_EASING)
	addtimer(CALLBACK(src, .proc/close_pod_finish), 3 SECONDS)
	playsound(get_turf(src), 'sound/machines/podclose.ogg', 75)

/obj/machinery/bioprinter/proc/close_pod_finish()
	lid_open = FALSE

/obj/machinery/bioprinter/on_update_icon()
	. = ..()
	cut_overlays()
	lid.cut_overlays()

	if(stat & (NOPOWER|BROKEN))
		add_overlay(image(icon, "keyboard_off"))
		if(stat & BROKEN)
			if(!lid.lid_rotated)
				var/matrix/M = new()
				M.Turn(rand(-50, 50))
				lid.transform = M
				lid.lid_rotated = TRUE
				lid.icon_state = "lid_broken"
			add_overlay(image(icon, "screen_broken"))
		return

	lid.lid_rotated = FALSE
	lid.transform = null

	add_overlay(image(icon, "keyboard"))
	if(diskette)
		add_overlay(image(icon, "dna_indicator_sample"))
	if(!diskette)
		add_overlay(image(icon, "dna_indicator_none"))

	var/mat_status = check_materials()
	switch(mat_status)
		if(MATERIAL_LOW)
			add_overlay(image(icon, "reactor_medium"))
		if(MATERIAL_VERY_LOW)
			add_overlay(image(icon, "reactor_low"))
		if(MATERIAL_FULL)
			add_overlay(image(icon, "reactor_full"))

	if(!printing && !cleaning)
		add_overlay(image(icon, "computer_standby"))
	if(printing && !needs_attention)
		add_overlay(image(icon, "computer_working"))
		var/image/I = image(icon, icon_state = "status_indicator_good")
		I.color = COLOR_GREEN
		add_overlay(I)
	if(printing && needs_attention && !errored)
		add_overlay(image(icon, "computer_warning"))
		var/image/I = image(icon, icon_state = "status_indicator_bad")
		I.color = COLOR_YELLOW_GRAY
		add_overlay(I)
	if(printing && needs_attention && errored)
		var/image/I = image(icon, icon_state = "status_indicator_bad")
		I.color = COLOR_RED_GRAY
		add_overlay(I)
		add_overlay(image(icon, "computer_fail"))
	if(print_finished)
		add_overlay(image(icon, "computer_finished"))
	if(cleaning)
		add_overlay(image(icon, "computer_cleaning"))
		add_lid_overlay(COLOR_PURPLE, "lid_cleaning")
		var/image/I = image(icon, icon_state = "status_indicator_good")
		I.color = COLOR_PURPLE
		add_overlay(I)

/obj/machinery/bioprinter/physical_attack_hand(var/mob/living/carbon/human/user)
	. = ..()
	if(stat & (NOPOWER|BROKEN)) //shitters clogged
		return
	var/list/choices = radial_choices()
	var/choice = RADIAL_INPUT(user, choices)
	if(choice == "start_print" && !printing && !clonemob)
		start_print()
	if(choice == "interact" && needs_attention)
		fulfill_interaction(user, TRUE)
	if(choice == "eject_clone" && clonemob && print_finished && !removing_clone)
		removing_clone = TRUE
		if(do_after(user, 5 SECONDS, src))
			clonemob.forceMove(get_turf(user))
			clonemob = null
			do_fakemob_animation("fakemob5", "layer5", "stage5", fade_out = TRUE)
			print_finished = FALSE
			removing_clone = FALSE
			ping("Print removal detected. Engaging cleaning cycle!")
			start_cleaning()
		else
			removing_clone = FALSE
	if(choice == "disk_eject" && diskette)
		user.put_in_hands(diskette)
		to_chat(user, SPAN_NOTICE("You eject the diskette."))
		diskette = null

/obj/machinery/bioprinter/proc/radial_choices()
	. = list()
	if(diskette && !printing)
		.["disk_eject"] = cached_choices["disk_eject"]
	if(clonemob && print_finished)
		.["eject_clone"] = cached_choices["eject_clone"]
	if(!printing)
		.["start_print"] = cached_choices["start_print"]
	if(needs_attention)
		.["interact"] = cached_choices["interact"]


/obj/machinery/bioprinter/proc/get_printing_increment()
	. = round((printing_time / MAX_PRINTING_PASSES))

/obj/machinery/bioprinter/proc/start_print()
	if(stat & (NOPOWER|BROKEN)) //shitters clogged
		return
	if(cleaning)
		visible_message(SPAN_WARNING("\the [src] buzzes, 'Error! Self-cleaning in progress."))
	if(printing)
		visible_message(SPAN_WARNING("\the [src] buzzes, 'Error! Printer busy."))
		return
	if(clonemob) //can't clone someone while there's still someone inside.
		visible_message(SPAN_WARNING("\the [src] buzzes, 'Error! Printer occupied."))
		return
	if(!diskette || !diskette.stored_gene)
		visible_message(SPAN_WARNING("\the [src] buzzes, 'Error! No DNA sample detected."))
		return
	if(!use_materials(/decl/material/solid/meat, /decl/material/solid/bone, COST_PER_PRINT, COST_PER_PRINT/2))
		visible_message(SPAN_WARNING("\the [src] buzzes, 'Error! Insufficent materials."))
		return
	if(lid_open)
		close_pod_start()
	printing = TRUE
	print_finished = FALSE
	next_increment = world.time + 4 SECONDS + get_printing_increment()
	playsound(get_turf(src), pick(global.keyboard_sound))
	addtimer(CALLBACK(src, .proc/start_print_next), 4 SECONDS)

/obj/machinery/bioprinter/proc/start_print_next()
	clonemob = new(null)
	clonemob.dna = diskette.stored_gene.Clone()
	clonemob.UpdateAppearance()
	clonemob.real_name = clonemob.dna.real_name
	clonemob.sync_organ_dna()
	clonemob.update_icon()
	update_fake_mob()
	vis_contents += ph

/obj/machinery/bioprinter/Process()
	update_icon()
	if(stat & (NOPOWER|BROKEN))
		if(cleaning_timer_id)
			deltimer(cleaning_timer_id)
			cleaning_interrupted = TRUE
		if(printing) //Printer is broken or loses power during printing - gotta start from scratch.
			cancel_print()
		return
	if(!cleaning && cleaning_interrupted) //restart the cleaning cycle if we were interrupted by power loss or breaking.cleaning_interrupted
		start_cleaning()
	if(sound_token && !printing)
		QDEL_NULL(sound_token)
	if(printing)
		update_use_power(POWER_USE_ACTIVE)
		if((errored || needs_attention) && (last_warning_sound + 10 SECONDS > world.time))
			last_warning_sound = world.time
			playsound(src, 'sound/machines/warning-buzzer.ogg', 50)
		if(!sound_token)
			sound_token = play_looping_sound(src, sound_id, 'sound/machines/fabricator_loop.ogg', volume = 30, range = 3, falloff = 2)
		if((total_interactions < max_interaction_requests) && total_passes >= 1 && !needs_attention && (world.time > next_increment) && (world.time > next_interaction_request))
			needs_attention = TRUE
			total_interactions++
			interact_request(prob(15))
		if(total_passes >= MAX_PRINTING_PASSES)
			printing = FALSE
			print_finished = TRUE
			update_fake_mob()
			finish_print()
			return
		if(needs_attention) //delay the next increment constantly.
			next_increment = world.time + get_printing_increment()
		if(world.time > next_increment && !needs_attention)
			next_increment = world.time + get_printing_increment() + 0.1 SECOND
			total_passes++
			update_fake_mob()
	if(!printing)
		update_use_power(POWER_USE_IDLE)

/obj/machinery/bioprinter/proc/make_fake_mobs()
	clone_mobs["fakemob1"] = new /obj/structure/fake_clone_mob(src)
	clone_mobs["fakemob2"] = new /obj/structure/fake_clone_mob(src)
	clone_mobs["fakemob3"] = new /obj/structure/fake_clone_mob(src)
	clone_mobs["fakemob4"] = new /obj/structure/fake_clone_mob(src)
	clone_mobs["fakemob5"] = new /obj/structure/fake_clone_mob(src)

/obj/machinery/bioprinter/proc/remove_fake_mobs()
	qdel(clone_mobs["fakemob1"])
	qdel(clone_mobs["fakemob2"])
	qdel(clone_mobs["fakemob3"])
	qdel(clone_mobs["fakemob4"])
	qdel(clone_mobs["fakemob5"])

/obj/machinery/bioprinter/proc/update_fake_mob()
	switch(total_passes)
		if(0)
			do_fakemob_animation("fakemob1", "layer1", "stage1", 0.01, FALSE)
			addtimer(CALLBACK(src, .proc/animate_printhead), 2 SECONDS)
		if(1)
			animate(ph, pixel_y = 0, time = 2 SECONDS)
			do_fakemob_animation("fakemob2", "layer2", "stage2", 0.02, FALSE)
			addtimer(CALLBACK(src, .proc/animate_printhead), 2 SECONDS)
		if(2)
			animate(ph, pixel_y = 0, time = 2 SECONDS)
			do_fakemob_animation("fakemob3", "layer3", "stage3", 0.03, FALSE)
			addtimer(CALLBACK(src, .proc/animate_printhead), 2 SECONDS)
		if(3)
			animate(ph, pixel_y = 0, time = 2 SECONDS)
			do_fakemob_animation("fakemob4", "layer4", "stage4", 0.04, FALSE)
			addtimer(CALLBACK(src, .proc/animate_printhead), 2 SECONDS)
		if(4) //By this point we can get rid of the three earlier mobs from vis_contents.
			animate(ph, pixel_y = 0, time = 2 SECONDS)
			do_fakemob_animation("fakemob1", "layer1", "stage1", fade_out = TRUE)
			do_fakemob_animation("fakemob2", "layer2", "stage2", fade_out = TRUE)
			do_fakemob_animation("fakemob3", "layer3", "stage3", fade_out = TRUE)
			//we don't use do_fakemob_animation here because we do some custom stuff to make the final fakemob look like the person being printed.
			var/obj/structure/fake_clone_mob/fakemob = clone_mobs["fakemob5"]
			fakemob.appearance = clonemob.appearance
			fakemob.appearance_flags = RESET_TRANSFORM
			fakemob.pixel_x += 1 //appearance means the x and y are completely wonky, so set offsets to make sure it renders properly.
			fakemob.pixel_y += 17
			fakemob.layer = STRUCTURE_LAYER + 0.05
			fakemob.add_filter("layer5",1 ,list(type = "alpha", y = -32, icon = icon('icons/mob/human.dmi', "body_m_s")))
			fakemob.animate_filter("layer5", list(y = 0, time = get_printing_increment()))
			vis_contents += fakemob
			addtimer(CALLBACK(src, .proc/animate_printhead), 2 SECONDS)

/obj/machinery/bioprinter/proc/do_fakemob_animation(var/fakemob_name, var/filter_name, var/stage_name, var/fakemob_layer_increment, var/fade_out = FALSE)
	var/obj/structure/fake_clone_mob/fakemob = clone_mobs[fakemob_name]

	if(!fakemob)
		return

	if(fade_out)
		fakemob.icon_state = null //reset the icon state, cuz we're gonna re-use these eventually.
		fakemob.remove_filter(filter_name)
		vis_contents -= fakemob
		return

	fakemob.add_filter(filter_name,1 ,list(type = "alpha", y = -32, icon = icon(icon, stage_name)))
	fakemob.animate_filter(filter_name, list(y = 0, time = get_printing_increment()))
	fakemob.icon_state = stage_name
	fakemob.layer = STRUCTURE_LAYER + fakemob_layer_increment
	vis_contents += fakemob

/obj/machinery/bioprinter/proc/animate_printhead()
	animate(ph, pixel_y = 26, time = get_printing_increment(), easing = SINE_EASING)

/obj/machinery/bioprinter/proc/cancel_print()
	total_passes = 0
	vis_contents -= ph
	ph.pixel_z = 0
	do_fakemob_animation("fakemob1", "layer1", fade_out = TRUE)
	do_fakemob_animation("fakemob2", "layer2", fade_out = TRUE)
	do_fakemob_animation("fakemob3", "layer3", fade_out = TRUE)
	do_fakemob_animation("fakemob4", "layer4", fade_out = TRUE)
	do_fakemob_animation("fakemob5", "layer5", fade_out = TRUE)
	printing = FALSE
	errored = FALSE
	needs_attention = FALSE
	qdel(clonemob)
	clonemob = null

/obj/machinery/bioprinter/proc/finish_print()
	vis_contents -= ph
	ph.pixel_y = 0
	do_fakemob_animation("fakemob4", "layer4", "stage4", fade_out = TRUE)
	total_passes = 0
	print_finished = TRUE
	technobabble_used.Cut()
	open_pod_start()
	total_interactions = 0

/obj/machinery/bioprinter/proc/interact_request(var/is_error)
	var/obj/item/radio/announcer = get_global_announcer()
	var/list/usuable_babble = list()
	for(var/I in technobabble_systems)
		if(I in technobabble_used)
			continue
		usuable_babble += I
	var/technobabble = pick(usuable_babble)
	last_used_technobabble = technobabble
	technobabble_used += technobabble
	if(!is_error) //if not a critical error, auto-resolve in ~30s
		interaction_timer_id = addtimer(CALLBACK(src, .proc/fulfill_interaction), 50 SECONDS, TIMER_STOPPABLE)
		announcer.autosay("Error in [technobabble] - auto-recovery under way...", "Bioprinter Monitoring System", "Medical")
		visible_message(SPAN_WARNING("[html_icon(src)] \The [src] buzzes, 'Error in [technobabble] - auto-recovery under way...'"))
	if(is_error)
		errored = TRUE
		announcer.autosay("Unrecoverable error in [technobabble] - manual intervention required!", "Bioprinter Monitoring System", "Medical")
		visible_message(SPAN_WARNING("[html_icon(src)] \The [src] buzzes, 'Unrecoverable error in [technobabble] - manual intervention required!'"))
	playsound(src, 'sound/machines/warning-buzzer.ogg', 50)
	update_icon()

/obj/machinery/bioprinter/proc/fulfill_interaction(var/mob/living/carbon/human/user, var/manual = FALSE)
	if(user && !user.skill_check(SKILL_MEDICAL, SKILL_ADEPT))
		to_chat(user, SPAN_WARNING("You don't have the skill required to reset the bioprinter!"))
		return
	if(manual)
		deltimer(interaction_timer_id)
		interaction_timer_id = null
		announcer.autosay("Manual recovery of error in [last_used_technobabble] completed.", "Bioprinter Monitoring System", "Medical")
	needs_attention = FALSE
	if(errored)
		errored = FALSE
	next_interaction_request = world.time + next_interact_request_delay
	next_increment = world.time
	update_icon()
	if(!manual)
		announcer.autosay("Automatic recovery of error in [last_used_technobabble] completed.", "Bioprinter Monitoring System", "Medical")
	if(user)
		to_chat(user, SPAN_INFO("You [pick("recalibrate", "reconfigure", "reset", "reboot")] the [last_used_technobabble]."))

/obj/machinery/bioprinter/proc/start_cleaning()
	cleaning = TRUE
	close_pod_start()
	cleaning_timer_id = addtimer(CALLBACK(src, .proc/finish_cleaning), cleaning_delay, TIMER_STOPPABLE)
	update_icon()

/obj/machinery/bioprinter/proc/finish_cleaning()
	cleaning = FALSE
	cleaning_timer_id = FALSE
	cleaning_interrupted = FALSE
	open_pod_start()
	update_icon()

/obj/machinery/bioprinter/proc/add_lid_overlay(var/color, var/lid_state)
	var/image/I = image(icon, lid_state)
	I.color = color
	I.layer = STRUCTURE_LAYER + 0.07
	lid.add_overlay(I)

/obj/structure/clone_pod_lid
	icon = 'mods/content/neural_laces/new_printer.dmi'
	icon_state = "lid"
	vis_flags = VIS_INHERIT_ID
	var/lid_rotated = FALSE

/obj/structure/print_head
	icon = 'mods/content/neural_laces/new_printer.dmi'
	icon_state = "print_head"
	vis_flags = VIS_INHERIT_ID

/obj/structure/fake_clone_mob
	icon = 'mods/content/neural_laces/new_printer.dmi'
	icon_state = "stage1"
	vis_flags = VIS_INHERIT_ID