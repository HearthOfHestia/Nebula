//We don't really have enough space for a massive tcomms setup, so we just need five machines.
//HUB

/obj/machinery/telecomms/hub/preset/endeavour
	id = "Hub"
	network = "tcommsat"
	autolinkers = list("hub", "mainbus","receiverA", "broadcasterA")

//Buses

/obj/machinery/telecomms/bus/preset/endeavour
	id = "Main Bus"
	network = "tcommsat"
	freq_listening = list(SCI_FREQ, MED_FREQ, SUP_FREQ, SRV_FREQ, SEC_FREQ, COMM_FREQ, ENG_FREQ, AI_FREQ, PUB_FREQ, ENT_FREQ)
	autolinkers = list("mainprocessor", "mainbus", "hub")

/obj/machinery/telecomms/bus/endeavour/main/Initialize()
	. = ..()
	for(var/i = PUBLIC_LOW_FREQ, i < PUBLIC_HIGH_FREQ, i += 2)
		if(i == PUB_FREQ)
			continue
		freq_listening |= i

//Processors

/obj/machinery/telecomms/processor/preset/endeavour
	id = "Main Processor"
	network = "tcommsat"
	autolinkers = list("mainprocessor") // processors are sort of isolated; they don't need backward links

/obj/machinery/telecomms/server/preset/endeavour
	id = "Server"
	freq_listening = list(SCI_FREQ, MED_FREQ, SUP_FREQ, SRV_FREQ, SEC_FREQ, COMM_FREQ, ENG_FREQ, AI_FREQ, PUB_FREQ, ENT_FREQ)
	channel_tags = list(
		list(SCI_FREQ, "Science", COMMS_COLOR_SCIENCE),
		list(MED_FREQ, "Medical", COMMS_COLOR_MEDICAL),
		list(SUP_FREQ, "Supply", COMMS_COLOR_SUPPLY),
		list(SRV_FREQ, "Service", COMMS_COLOR_SERVICE),
		list(PUB_FREQ, "Common", COMMS_COLOR_COMMON),
		list(AI_FREQ, "AI Private", COMMS_COLOR_AI),
		list(ENT_FREQ, "Entertainment", COMMS_COLOR_ENTERTAIN),
		list(COMM_FREQ, "Command", COMMS_COLOR_COMMAND),
		list(ENG_FREQ, "Engineering", COMMS_COLOR_ENGINEER),
		list(SEC_FREQ, "Security", COMMS_COLOR_SECURITY)
		)
	autolinkers = list("server1","hub")
