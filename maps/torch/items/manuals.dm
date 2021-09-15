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
	desc = "A thick envelope. The ISEO crest is stamped in the corner, along with 'TOP SECRET - ISEO UMBRA'."

/obj/item/folder/envelope/captain/Initialize()
	..()
	return INITIALIZE_HINT_LATELOAD

/obj/item/folder/envelope/captain/LateInitialize()
	..()
	var/obj/effect/overmap/visitable/torch = map_sectors["[z]"]
	var/memo = {"
	<tt><center><b><font color='red'>SECRET - CODE WORDS: ENDEAVOUR</font></b>
	<h3>INTERNATIONAL STELLAR EXPLORATION ORGANIZATION NATIONAL COUNCIL</h3>
	<img src = iseologo.png>
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
	<li>[using_map.system_name]</li>
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
	desc = "A thick envelope. The ISEO crest is stamped in the corner, along with 'TOP SECRET - ENDEAVOUR UMBRA'."

/obj/item/folder/envelope/rep/Initialize()
	. = ..()
	new/obj/item/paper/umbra(src)

/obj/item/paper/umbra
	name = "UMBRA Protocol"
	info = {"
	<tt><center><b><font color='red'>TOP SECRET - CODE WORDS: ENDEAVOUR UMBRA</font></b>
	<h3>OFFICE OF THE SECRETARY GENERAL OF THE ISEO NATIONAL COUNCIL</h3>
	<img src = iseologo.png>
	</center>
	<b>FROM:</b> Johnathan Smitherson, Special Aide of the Secretary General<br>
	<b>TO:</b> Commanding Officer of the ISEO Endeavour<br>
	<b>CC:</b> National Representative aboard the ISEO Endeavour<br>
	<b>SUBJECT:</b> UMBRA protocol<br>
	<hr>
	This is a small addendum to the usual operating procedures. Unlike the rest of SOP, this is not left to the Commanding Officer's discretion and is mandatory. As unconventional as this is, we felt it is essential for smooth operation of this mission.<br>
	Procedure can be initiated only by transmission from ISEO Expeditionary Command via secure channel. The sender may not introduce themselves, but you shouldn't have trouble confirming the transmission source, I believe.<br>
	The signal to initiate the procedure are codewords 'GOOD NIGHT WORLD' used in this order as one phrase. You do not need to send acknowledgement.
	<li>Information about this expedition's findings is to be treated as secret and vital to the ISEO's operational security, and is protected under codeword UMBRA. Only National-Council affiliated ISEO employees the ISEO Endeavour are allowed access to this information on a need-to-know basis.</li>
	<li>The secrecy of this information is to be applied retroactively. Any non-cleared personnel who were exposed to such information are to be secured and transferred to DIA on arrival at home port.</li>
	<li>Any devices capable of transmitting or receiving data at interstellar range are to be confiscated from private possession.</li>
	<li>Disregard any systems remaining in your flight plan and set course for Sol, Neptune orbit. You will be contacted upon your arrival. Do not make stops in ports on the way unless absolutely necessary.</li>
	<br>
	While drastic, I assure you this is a simple precaution, lest any issues. Just keep the option open, and carry on with your normal duties.
	<i>Regards, John.</i></tt>
	<i>This paper has been stamped with the stamp of Office of the General Secretary of the National Council</i>
	"}