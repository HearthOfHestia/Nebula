/obj/item/book/manual/solgov_law
	name = "Sol Central Government Law"
	desc = "A brief overview of SolGov Law."
	icon_state = "bookSolGovLaw"
	author = "The Sol Central Government"
	title = "Sol Central Government Law"

/obj/item/book/manual/solgov_law/Initialize()
	. = ..()
	dat = {"

		<html><head>
		</head>

		<body>
		<iframe width='100%' height='97%' src="[config.wikiurl]Sol_Central_Government_Law&printable=yes&remove_links=1" frameborder="0" id="main_frame"></iframe>
		</body>

		</html>

		"}


/obj/item/book/manual/military_law
	name = "The Sol Code of Military Justice"
	desc = "A brief overview of military law."
	icon_state = "bookSolGovLaw"
	author = "The Sol Central Government"
	title = "The Sol Code of Military Justice"

/obj/item/book/manual/military_law/Initialize()
	. = ..()
	dat = {"

		<html><head>
		</head>

		<body>
		<iframe width='100%' height='97%' src="[config.wikiurl]Sol_Gov_Military_Justice&printable=yes&remove_links=1" frameborder="0" id="main_frame"></iframe>
		</body>

		</html>

		"}

/obj/item/book/manual/sol_sop
	name = "Standard Operating Procedure"
	desc = "SOP aboard the ISEO Endeavour."
	icon_state = "booksolregs"
	author = "The Sol Central Government"
	title = "Standard Operating Procedure"

/obj/item/book/manual/sol_sop/Initialize()
	. = ..()
	dat = {"

		<html><head>
		</head>

		<body>
		<iframe width='100%' height='97%' src="[config.wikiurl]Standard_Operating_Procedure&printable=yes&remove_links=1" frameborder="0" id="main_frame"></iframe>
		</body>

		</html>

		"}

/obj/item/folder/nt/rd

/obj/item/folder/envelope/captain
	desc = "A thick envelope. The ISEO crest is stamped in the corner, along with 'TOP SECRET - ISEO PROTOCOLS'."

/obj/item/folder/envelope/captain/Initialize()
	..()
	return INITIALIZE_HINT_LATELOAD

/obj/item/folder/envelope/captain/LateInitialize()
	..()
	var/obj/effect/overmap/visitable/torch = global.overmap_sectors["[z]"]
	var/memo = {"
	<tt><center><b><font color='red'>SECRET - CODE WORDS: ENDEAVOUR</font></b>
	<h3>INTERNATIONAL STELLAR EXPLORATION ORGANIZATION NATIONAL COUNCIL</h3>
	<img src = 'iseo.png'>
	</center>
	<b>FROM:</b> National Council Chairman Andriana Blake<br>
	<b>TO:</b> Commanding Officer of ISEO Endeavour <br>
	<b>SUBJECT:</b> Standing Orders<br>
	<hr>
	Captain.<br>
	Your orders are to visit the following star systems. Keep in mind that your supplies are limited; ration exploration time accordingly.
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<li>[global.using_map.system_name]</li>
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<li>[generate_system_name()]</li>
	<br>
	Priority targets are artifacts of uncontacted alien species and signal sources of unknown origin.<br>
	None of these systems are claimed by any entity recognized by the ISEO, so you have full salvage rights on any derelicts discovered.<br>
	Investigate and mark any prospective colony worlds as per usual procedures.<br>
	There is no ISEO presence in that area. In case of distress calls, you will be the only vessel available; our position in the eyes of the galaxy is tenuous at best.<br>
	The current docking code is: [torch.docking_codes]<br>
	Report all findings via superluminal comm buoys during inter-system jumps.<br>

	<i>ADM Lau.</i></tt>
	<i>This paper has been stamped with the stamp of ISEO National Council.</i>
	"}
	new/obj/item/paper(src, memo, "Standing Orders")
	new/obj/item/paper/umbra(src)

/obj/item/folder/envelope/rep
	desc = "A thick envelope. The ISEO crest is stamped in the corner, along with 'TOP SECRET - ENDEAVOUR PROTOCOLS'."

/obj/item/folder/envelope/rep/Initialize()
	. = ..()
	new/obj/item/paper/umbra(src)

/obj/item/paper/umbra
	name = "Emergency Protocols"
	info = {"
	<tt><center><b><font color='red'>TOP SECRET - CODE WORDS</font></b>
	<h3>OFFICE OF THE SECRETARY GENERAL OF THE ISEO NATIONAL COUNCIL</h3>
	<img src = 'iseo.png'>
	</center>
	<b>FROM:</b> Johnathan Smitherson, Special Aide of the Secretary General<br>
	<b>TO:</b> Commanding Officer of the ISEO Endeavour<br>
	<b>CC:</b> National Representative aboard the ISEO Endeavour<br>
	<b>SUBJECT:</b> Emergency protocols<br>
	<hr>
	This is a small addendum to the usual operating procedures. Unlike the rest of SOP, this is not left to the Commanding Officer's discretion and is mandatory. As unconventional as this is, we felt it is essential for smooth operation of this mission.<br>
	These procedures can be initiated only by transmission from ISEO Expeditionary Command via secure channel. The sender may not introduce themselves, but you shouldn't have trouble confirming the transmission source, I believe.<br>
	<br>
	The following codewords will either be transmitted to your vessel, or be transmitted by your vessel to indicate a course of action taken.
	You, Captain, may initiate some of these protocols in certain events.

	<li>HERA MOURNING: You may execute this protocol. In the event that the ISEO Endeavour faces destruction in a manner which allows transmission of this protocol, you are to enact this protocol. Transmit all scientific and navigation data along with final crew roster.</li>

	<li>ICARUS DARKNESS: You may execute this protocol. In the event that the ISEO Endeavour is at risk of capture by hostile alien forces, you are to ensure the destruction of the FTL drive and all sensitive navigational data, up to and including scuttling the ship via self-destruct if required.</li>

	<li>APOLLO WITHERING: You may execute this protocol. In the event that a xenolife outbreak of of any form - viral, bacteria, or fauna-derived - develops and can not be contained, this protocol is to be enacted. If feasible, evacuate the ship. Otherwise, set scuttling charges and transmit final crew roster.

	<li>HERMES EXPEDIENT: This protocol may only be enacted by Expeditionary Command. The ISEO Endeavour is to immediately recall all deployed personnel and immediately set course for Sol under full communications blackout. Minimize resupply stops and prevent any crew from leaving the vessel. On entering the Sol system, park in Pluto orbit. You will be contacted.</li>

	<li>ARES RISING: In the event of an act of war, this protocol may only be enacted by Expeditionary Command and will contain a following identifier. The ISEO Endeavour is to immediately escalate to blue alert and actively avoid all entities associated with the given identifier, and any members of the identifier's species or faction are to be arrested immediately. The ISEO Endeavour is to wrap up current exploration operations and recall to Sol if no threat is present.</li>

	<li>APOLLYON ASCENDANT: In the event of a end-of-humanity scenario - genocidal invasion, all-out-interstellar war, xenolife infestation, or other event that will meaningfully reduce the human population by a significant degree, this protocol will be enacted by command. The ISEO Endeavour is to set course for the nearest known allied system and make port until contacted by the system's controlling government. In the event that this is not possible, the ISEO Endeavour is to locate the nearest habitable planet and remain in orbit, conducting expeditions to assess suitability for a new colony. </li>

	While drastic, these protocols are designed for usage in situations that may face the Endeavour or Humanity within the next decades. It is unlikely any of them will ever be activated, but we must be prepared for all eventualities.
	<br>
	While drastic, I assure you this is a simple precaution, lest any issues. Just keep the option open, and carry on with your normal duties.
	<i>Regards, John.</i></tt>
	<i>This paper has been stamped with the stamp of Office of the General Secretary of the National Council</i>
	"}