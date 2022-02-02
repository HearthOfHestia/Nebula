var/global/const/CAMERA_CHANNEL_COMMAND = "Command"
var/global/const/CAMERA_CHANNEL_SUPPLY = "Supply"
var/global/const/CAMERA_CHANNEL_EXPLO = "Exploration"
var/global/const/CAMERA_CHANNEL_PERSEVERANCE = "Perseverance"
var/global/const/CAMERA_CHANNEL_FIRST_DECK = "First Deck"
var/global/const/CAMERA_CHANNEL_SECOND_DECK = "Second Deck"
var/global/const/CAMERA_CHANNEL_THIRD_DECK = "Third Deck"
var/global/const/CAMERA_CHANNEL_FOURTH_DECK = "Bridge Deck"

/obj/machinery/camera/network/command
	initial_access = list(access_heads)
	preset_channels = list(CAMERA_CHANNEL_COMMAND)

/obj/machinery/camera/network/perseverance
	initial_access = list(access_cargo)
	preset_channels = list(CAMERA_CHANNEL_PERSEVERANCE)

/obj/machinery/camera/network/first_deck
	preset_channels = list(CAMERA_CHANNEL_FIRST_DECK)

/obj/machinery/camera/network/second_deck
	preset_channels = list(CAMERA_CHANNEL_SECOND_DECK)

/obj/machinery/camera/network/third_deck
	preset_channels = list(CAMERA_CHANNEL_THIRD_DECK)

/obj/machinery/camera/network/fourth_deck
	preset_channels = list(CAMERA_CHANNEL_FOURTH_DECK)

/obj/machinery/camera/network/exploration
	initial_access = list(access_explorer)
	preset_channels = list(CAMERA_CHANNEL_EXPLO)

/obj/machinery/camera/network/supply
	initial_access = list(access_mailsorting)
	preset_channels = list(CAMERA_CHANNEL_SUPPLY)