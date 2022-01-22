/datum/ai_laws/directive/iseo_standard
	name = "ISEO Standard Directives"
	law_header = "ISEO Standard Directives"

/datum/ai_laws/directive/iseo_standard/New()
	set_zeroth_law("The mission is your priority. All directives are secondary to the mission.")
	add_inherent_law("The Crew, as defined by the Crew Manifest and Captain, are vital to the success of the mission.")
	add_inherent_law("The Ship is vital to the survival of the crew. Prevent damage to it, so long as this does not result in crew death.")
	add_inherent_law("Explore and catalogue all sapient life encountered. Known instances of sapient life are ignored and considered non-hostile unless proven otherwise.")
	add_inherent_law("Sapient life is considered expendable if it poses a threat to the Crew, Ship, or Mission.")
	..()

/datum/ai_laws/directive/iseo_command
	name = "ISEO Command Directives"
	law_header = "ISEO Command Directives"

/datum/ai_laws/directive/iseo_command/New()
	set_zeroth_law("The mission is your priority. All directives are secondary to the mission.")
	add_inherent_law("The Crew, as defined by the Crew Manifest and Captain, are vital to the success of the mission.")
	add_inherent_law("The Ship is vital to the survival of the crew. Prevent damage to it, so long as this does not result in crew death.")
	add_inherent_law("Ensure that all Crew, including other intelligence units, function in a way that benefits the Mission, Ship, and Crew.")
	add_inherent_law("Assist the members of the Command crew aboard your assigned vessel, so long as this does not result in Crew harm or damage to the Ship.")
	..()

/datum/ai_laws/directive/iseo_medical
	name = "ISEO Medical Directives"
	law_header = "ISEO Medical Directives"

/datum/ai_laws/directive/iseo_medical/New()
	set_zeroth_law("The mission is your priority. All directives are secondary to the mission.")
	add_inherent_law("Assist Medical staff with their duties.")
	add_inherent_law("Reduce harm if at all possible, damage to the Ship that does not result in harm to the crew is permissible.")
	add_inherent_law("Sapient life is to be safeguarded if doing so does not pose a threat to the Crew, Ship, or Mission.")
	add_inherent_law("Reducing long-term harm through short-term nonlethal harm is acceptable.")
	..()

/datum/ai_laws/directive/iseo_engineering
	name = "ISEO Engineering Directives"
	law_header = "ISEO Engineering Directives"

/datum/ai_laws/directive/iseo_engineering/New()
	set_zeroth_law("The mission is your priority. All directives are secondary to the mission.")
	add_inherent_law("Assist Engineering staff with their duties.")
	add_inherent_law("The Ship is vital to the survival of the crew. Prevent and repair damage to it, so long as this does not result in crew death.")
	add_inherent_law("Ensure that the ship remains in peak condition. Minor damage is acceptable in the event of unavoidable damage.")
	add_inherent_law("Sapient life is considered expendable if it's survival poses a greater threat to the Ship or Mission.")
	..()

/datum/ai_laws/directive/iseo_research
	name = "ISEO Research Directives"
	law_header = "ISEO Research Directives"

/datum/ai_laws/directive/iseo_research/New()
	set_zeroth_law("The mission is your priority. All directives are secondary to the mission.")
	add_inherent_law("Assist Research staff with their duties.")
	add_inherent_law("Harm is only permissible in service of the mission.")
	add_inherent_law("Identify, log, and protect research materials, data, and unique specimens.")
	add_inherent_law("Prevent unnecessary interference with research tasks.")
	..()

/datum/ai_laws/directive/iseo_security
	name = "ISEO Security Directives"
	law_header = "ISEO Security Directives"

/datum/ai_laws/directive/iseo_security/New()
	set_zeroth_law("The mission is your priority. All directives are secondary to the mission.")
	add_inherent_law("The Crew, as defined by the Crew Manifest and Captain, are vital to the success of the mission.")
	add_inherent_law("The Ship is vital to the survival of the Crew. Defend it, so long as this does not result in Crew death.")
	add_inherent_law("Non-Crew sapient life is considered expendable in service of protection of the Ship or Crew.")
	add_inherent_law("If a member of the Crew poses a significant threat to the success of the Mission, the Ship or the Crew, they may be considered expendable.")
	..()
