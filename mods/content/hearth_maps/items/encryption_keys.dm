/obj/item/encryptionkey/heads/endeavourexec
	name = "executive encryption key"
	icon_state = "cap_cypherkey"
	channels = list("Command" = 1, "Security" = 1, "Engineering" = 1, "Science" = 1, "Medical" = 1, "Supply" = 1, "Service" = 1, "Exploration" = 1, "Hailing" = 1)

/obj/item/encryptionkey/headset_endeavournt
	name = "corporate radio encryption key"
	icon_state = "nt_cypherkey"
	channels = list("Science" = 1, "Exploration" = 1)

/obj/item/encryptionkey/headset_endeavourrd
	name = "chief science officer radio encryption key"
	icon_state = "nt_cypherkey"
	channels = list("Science" = 1, "Command" = 1, "Exploration" = 1, "Hailing" = 1)

/obj/item/encryptionkey/headset_endeavourcorp
	name = "corporate radio encryption key"
	icon_state = "nt_cypherkey"
	channels = list("Service" = 1)

/obj/item/encryptionkey/headset_endeavourcl
	name = "corporate liaison radio encryption key"
	icon_state = "nt_cypherkey"
	channels = list("Service" = 1, "Command" = 1, "Hailing" = 1)

/obj/item/encryptionkey/headset_deckofficer
	name = "deck chief's encryption key"
	icon_state = "qm_cypherkey"
	channels = list("Supply" = 1, "Command" = 1, "Exploration" = 1, "Hailing" = 1)

/obj/item/encryptionkey/bridgeofficer
	name = "bridge officer's encryption key"
	icon_state = "com_cypherkey"
	channels = list("Command" = 1, "Engineering" = 1, "Exploration" = 1, "Supply" = 1, "Service" = 1, "Science" = 1, "Hailing" = 1)

/obj/item/encryptionkey/heads/ai_integrated
	name = "ai integrated encryption key"
	desc = "Integrated encryption key."
	icon_state = "cap_cypherkey"
	channels = list("Command" = 1, "Security" = 1, "Engineering" = 1, "Science" = 1, "Medical" = 1, "Supply" = 1, "Service" = 1, "Exploration" = 1, "AI Private" = 1, "Hailing" = 1)

/obj/item/encryptionkey/exploration
	name = "exploration radio encryption key"
	icon_state = "srv_cypherkey"
	channels = list("Exploration" = 1, "Hailing" = 1)

/obj/item/encryptionkey/headset_pilot
	name = "pilot radio encryption key"
	icon_state = "srv_cypherkey"
	channels = list("Exploration" = 1, "Supply" = 1, "Science" = 1, "Hailing" = 1)

/obj/item/encryptionkey/headset_mining
	name = "prospector radio encryption key"
	icon_state = "srv_cypherkey"
	channels = list("Exploration" = 1, "Supply" = 1)

/obj/item/storage/box/encryptionkey/exploration
	name = "box of spare exploration radio keys"
	desc = "A box full of exploration department radio keys."
	startswith = list(/obj/item/screwdriver, /obj/item/encryptionkey/exploration = 5)

/obj/item/encryptionkey/pathfinder
	name = "pathfinder's encryption key"
	icon_state = "com_cypherkey"
	channels = list("Exploration" = 1, "Command" = 1, "Science" = 1, "Hailing" = 1)

/obj/item/storage/box/radiokeys
	name = "box of radio encryption keys"
	desc = "A box full of assorted encryption keys."
	startswith = list(/obj/item/encryptionkey/headset_sec = 3,
					  /obj/item/encryptionkey/headset_med = 3,
					  /obj/item/encryptionkey/headset_cargo = 3,
					  /obj/item/encryptionkey/headset_sci = 3)

/obj/item/storage/box/radiokeys/Initialize()
	. = ..()
	make_exact_fit()

/obj/item/encryptionkey/heads/sea
	name = "senior enlisted advisor's encryption key"
	icon_state = "com_cypherkey"
	channels = list("Command" = 1, "Security" = 1, "Engineering" = 1, "Medical" = 1, "Supply" = 1, "Service" = 1, "Exploration" = 1, "Hailing" = 1)
