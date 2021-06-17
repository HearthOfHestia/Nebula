/area/ship/hearth
	name = "\improper Generic Ship"
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambigen12.ogg')
	icon = 'maps/hearth/icons/areas.dmi'

//Engineering

/area/ship/hearth/engineering
	name = "Engineering Bay"
	icon_state = "enghall"
	req_access = list(access_engine)

/area/ship/hearth/engineering/secure_storage
	name = "Secure Storage"
	icon_state = "secstore"
	req_access = list(access_engine)

/area/ship/hearth/engineering/engine_room
	name = "\improper Engine Monitoring Room"
	icon_state = "engineroom"
	req_access = list(access_engine, access_engine_equip)

/area/ship/hearth/engineering/smes
	name = "\improper Primary Power Storage"
	icon_state = "smes"
	req_access = list(access_engine, access_engine_equip)

/area/ship/hearth/engineering/fuel_bay
	icon_state = "fuelbay"

/area/ship/hearth/engineering/fuel_bay/co2
	name = "\improper Propellant Storage Bay"

/area/ship/hearth/engineering/hallway
	icon_state = "enghall"
	name = "\improper Engineering Hallway"
	req_access = list(access_engine)

/area/ship/hearth/engineering/hallway/upper
	name = "\improper Upper Engineering Hallway"
	req_access = list(access_engine)

/area/ship/hearth/engineering/utility_shaft
	name = "\improper Utility Shaft"
	icon_state = "utilityshaft"

/area/ship/hearth/engineering/solars
	name = "\improper Bridge Solar Array"
	icon_state = "solars"

/area/ship/hearth/engineering/shield_generator
	name = "\improper Primary Shield Generator"
	icon_state = "shieldgen"

/area/ship/hearth/engineering/reactor
	name = "\improper Primary Reactor Core"
	icon_state = "reactor"
	req_access = list(access_engine, access_engine_equip)

/area/ship/hearth/engineering/atmospherics
	icon_state = "atmos"
	name = "\improper Atmospherics"
	req_access = list(access_engine, access_atmospherics)

/area/ship/hearth/engineering/atmospherics/pump_room
	name = "Coolant Pump Bay"
	req_access = list(access_engine, access_engine_equip)

/area/ship/hearth/engineering/atmospherics/monitoring_room
	name = "Atmospherics Monitoring Room"

/area/ship/hearth/engineering/EVA
	name = "\improper EVA Bay"
	icon_state = "EVA"
	req_access = list(access_engine)

/area/ship/hearth/engineering/substation
	icon_state = "substation"

/area/ship/hearth/engineering/substation/one
	name = "\improper First Deck Substation"

/area/ship/hearth/engineering/substation/two
	name = "\improper Second Deck Substation"

/area/ship/hearth/engineering/substation/three
	name = "\improper Third Deck Substation"

/area/ship/hearth/engineering/substation/four
	name = "\improper Bridge Deck Substation"

/area/ship/hearth/engineering/thruster_bay
	icon_state = "thrustbay"

/area/ship/hearth/engineering/thruster_bay/one
	name = "\improper First Deck Thruster Bay"

/area/ship/hearth/engineering/thruster_bay/two
	name = "\improper Third Deck Thruster Bay"

/area/ship/hearth/engineering/inertial_damper
	name = "Inertial Damper Bay"
	icon_state = "damper"

//Habitation

/area/ship/hearth/habitation
	icon_state = "habitation"

/area/ship/hearth/habitation/gentool
	icon_state = "gentool"
	name = "General Tool Storage"

/area/ship/hearth/habitation/bar
	icon_state = "bar"
	name = "\improper Mess Hall"

/area/ship/hearth/habitation/bar/backroom
	icon_state = "barback"
	name = "Bar Backroom"
	req_access = list(access_bar)

/area/ship/hearth/habitation/kitchen
	icon_state = "kitchen"
	name = "\improper Kitchen"
	req_access = list(access_kitchen)

/area/ship/hearth/habitation/bathroom
	icon_state = "bathroom"

/area/ship/hearth/habitation/bathroom/one
	name = "\improper Third Deck Bathroom"

/area/ship/hearth/habitation/bathroom/two
	name = "\improper Second Deck Bathroom"

/area/ship/hearth/habitation/hydroponics
	icon_state = "hydroponic"
	name = "\improper Hydroponics Bay"
	req_access = list(access_hydroponics)

/area/ship/hearth/habitation/cabins
	icon_state = "cabin"

/area/ship/hearth/habitation/cabins/one
	name = "\improper Cabin One"

/area/ship/hearth/habitation/cabins/two
	name = "\improper Cabin Two"

/area/ship/hearth/habitation/cabins/three
	name = "\improper Cabin Three"

/area/ship/hearth/habitation/cabins/four
	name = "\improper Cabin Four"

/area/ship/hearth/habitation/cryo
	icon_state = "cryo"

/area/ship/hearth/habitation/cryo/one
	name = "Cryo Bay One"

/area/ship/hearth/habitation/cryo/two
	name = "Cryo Bay Two"

/area/ship/hearth/habitation/observation
	name = "Observation Lounge"
	icon_state = "observation"

/area/ship/hearth/habitation/garden
	name = "Garden"
	icon_state = "garden"

//Security

/area/ship/hearth/security
	icon_state = "sec"
	name = "Security"
	req_access = list(access_sec_doors)

/area/ship/hearth/security/lockers
	name = "Locker Room"
	icon_state = "lockers"
	req_access = list(access_sec_doors, access_brig)

/area/ship/hearth/security/bc_office
	icon_state = "maa"
	name = "\improper Brig Chief's Office"
	req_access = list(access_armory, access_brig, access_sec_doors)

/area/ship/hearth/security/armory
	icon_state = "armory"
	name = "\improper Armory"
	req_access = list(access_armory)

//Medical

/area/ship/hearth/medical
	icon_state = "medbay"
	name = "\improper Medbay"
	req_access = list(access_medical)

/area/ship/hearth/medical/treatment
	icon_state = "etc"
	name = "\improper Treatment Center"

/area/ship/hearth/medical/operating
	icon_state = "or"

/area/ship/hearth/medical/operating/one
	name = "\improper Operating Room One"

/area/ship/hearth/medical/operating/two
	name = "\improper Operating Room Two"

/area/ship/hearth/medical/chemistry
	icon_state = "chem"
	name = "\improper Chemistry Lab"
	req_access = list(access_chemistry, access_medical)

/area/ship/hearth/medical/storage
	name = "Medical Storage"
	icon_state = "medstore"
	req_access = list(access_medical, access_medical_equip)

/area/ship/hearth/medical/morgue
	name = "Morgue"
	icon_state = "morgue"

/area/ship/hearth/medical/morgue/viewing
	name = "Burial Observation"
	icon_state = "morgueview"

/area/ship/hearth/medical/medtech
	name = "Medical Technician Bay"
	icon_state = "medtech"

//Command

/area/ship/hearth/command
	icon_state = "comhall"
	req_access = list(access_heads)

/area/ship/hearth/command/bridge
	icon_state = "bridge"
	name = "\improper Bridge"
	req_access = list(access_bridge)

/area/ship/hearth/command/bridge/cic
	icon_state = "cic"
	name = "\improper Combat Information Center"
	req_access = list(access_bridge)

/area/ship/hearth/command/hallway
	name = "\improper Bridge Hallway"
	req_access = null

/area/ship/hearth/command/hallway/cic
	name = "\improper CIC Hallway"
	req_access = null

/area/ship/hearth/command/office
	icon_state = "comoffice"

/area/ship/hearth/command/office/captain
	name = "\improper Captain's Office"
	req_access = list(access_heads, access_captain)

/area/ship/hearth/command/office/captain/bedroom
	name = "Captain's Quarters"
	icon_state = "combed"

/area/ship/hearth/command/office/xo
	name = "\improper First Officer's Office"
	req_access = list(access_heads, access_hop)

/area/ship/hearth/command/office/ce
	name = "\improper Chief Engineer's Office"
	req_access = list(access_heads, access_ce)

/area/ship/hearth/command/office/ce/bedroom
	name = "\improper Chief Engineer's Quarters"
	icon_state = "combed"

/area/ship/hearth/command/office/cmo
	name = "\improper CMO's Office"
	req_access = list(access_heads, access_cmo)

/area/ship/hearth/command/office/cmo/bedroom
	name = "\improper CMO's Quarters"
	icon_state = "combed"

/area/ship/hearth/command/office/maa
	name = "\improper Ship Security Commander's Office"
	req_access = list(access_heads, access_hos)

/area/ship/hearth/command/office/maa/bedroom
	name = "\improper Ship Security Commander's Quarters"
	icon_state = "combed"

/area/ship/hearth/command/office/xo/bedroom
	name = "\improper First Officer's Quarters"
	icon_state = "combed"

/area/ship/hearth/command/office/bosun
	name = "Bosun's Office"
	icon_state = "bosunoffice"
	req_access = list(access_heads, access_qm)

/area/ship/hearth/command/office/bosun/bed
	name = "Bosun's Quarters"
	icon_state = "bosunbed"

/area/ship/hearth/command/office/rd
	name = "Technology Director's Office"
	icon_state = "rdoffice"
	req_access = list(access_heads, access_rd)

/area/ship/hearth/command/office/rd/bed
	name = "Technology Director's Quarters"
	icon_state = "rdoffice"

/area/ship/hearth/command/bathroom
	name = "Officer Bathroom"
	icon_state = "headbath"
	req_access = list(access_heads)

/area/ship/hearth/command/meetingroom
	name = "Meeting Room"
	icon_state = "meetingroom"
	req_access = list(access_bridge)

/area/ship/hearth/command/vault
	name = "Vault"
	icon_state = "vault"
	req_access = list(access_heads_vault)

/area/ship/hearth/command/sensitive_storage
	name = "Sensitive Storage"
	icon_state = "selfdestruct"
	req_access = list(access_heads_vault)

/area/ship/hearth/command/ofd
	name = "OFD Bay"
	icon_state = "ofd"
	req_access = list(access_bridge)

/area/ship/hearth/command/ofdstorage
	name = "OFD Charge Storage"
	icon_state = "ofdammo"
	req_access = list(access_bridge)



//Cargo

/area/ship/hearth/cargo
	icon_state = "cargo"
	req_access = list(access_cargo)

/area/ship/hearth/cargo/general
	name = "Cargo Bay"

/area/ship/hearth/cargo/lobby
	name = "Cargo Lobby"
	icon_state = "cargolobby"
	req_access = null

/area/ship/hearth/cargo/disposals
	name = "Disposals Bay"
	icon_state = "disposal"

/area/ship/hearth/cargo/salvage
	name = "Salvage Technician Bay"
	icon_state = "salvageprep"
	req_access = list(access_mining, access_cargo)

/area/ship/hearth/cargo/lockers
	name = "Cargo Locker Room"
	icon_state = "cargolocker"

/area/ship/hearth/cargo/comissary
	name = "Comissary"
	icon_state = "commiss"

//Science

/area/ship/hearth/science
	icon_state = "science"
	req_access = list(access_research)

/area/ship/hearth/science/robotics
	icon_state = "robotics"
	name = "Robotics Bay"
	req_access = list(access_robotics, access_research)

/area/ship/hearth/science/science_hall
	name = "Science Hallway"
	icon_state = "sciencehall"

/area/ship/hearth/science/materials_lab
	name = "Materials Laboratory"
	icon_state = "matlab"

/area/ship/hearth/science/circuit_lab
	name = "Electrical Engineering"
	icon_state = "science"

/area/ship/hearth/science/xenobio
	name = "Xenobioflora Laboratory"
	icon_state = "science"
	req_access = list(access_xenobiology)

/area/ship/hearth/science/xenoarch
	name = "Xenoarcheology"
	icon_state = "science"
	req_access = list(access_research, access_xenoarch)

/area/ship/hearth/science/xenoarch/storage
	name = "Xenoarcheology Storage"
	icon_state = "science"

/area/ship/hearth/science/xenoarch/lab
	name = "Xenoarcheology Lab"
	icon_state = "science"

/area/ship/hearth/science/server_room
	name = "Server Room"
	icon_state = "server"
	req_access = list(access_tcomsat)

/area/ship/hearth/science/network_closet
	req_access = list(access_tcomsat)
	icon_state = "netcloset"

/area/ship/hearth/science/network_closet/third_deck
	name = "Third Deck Network Node"

/area/ship/hearth/science/network_closet/bridge_deck
	name = "Bridge Deck Network Node"

//Hallways.

/area/ship/hearth/hallway
	icon_state = "hallway"

/area/ship/hearth/hallway/first_deck
	name = "First Deck Hallway"

/area/ship/hearth/hallway/second_deck
	name = "\improper Second Deck Hallway"

/area/ship/hearth/hallway/third_deck/fore
	name = "\improper Third Deck Hallway"

//Escape pod bays

/area/ship/hearth/escape_pod
	icon_state = "escpod"

/area/ship/hearth/escape_pod/one
	name = "Escape Pod Bay One"

/area/ship/hearth/escape_pod/two
	name = "Escape Pod Bay Two"

/area/ship/hearth/escape_pod/three
	name = "Escape Pod Bay Three"

/area/ship/hearth/escape_pod/four
	name = "Escape Pod Bay Four"

//Maintenance

/area/ship/hearth/maintenance
	icon_state = "maint"
	area_flags = AREA_FLAG_RAD_SHIELDED
	turf_initializer = /decl/turf_initializer/maintenance
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambimo1.ogg','sound/ambience/ambimo2.ogg')

/area/ship/hearth/maintenance/deckone/aft
	name = "First Deck Aft Maintenance"

/area/ship/hearth/maintenance/deckone/aft/port
	name = "First Deck Aft Port Maintenance"

/area/ship/hearth/maintenance/deckone/aft/starboard
	name = "First Deck Aft Starboard Maintenance"

/area/ship/hearth/maintenance/deckone/fore/starboard
	name = "First Deck Fore Starboard Maintenance"

/area/ship/hearth/maintenance/deckone/fore/port
	name = "First Deck Fore Port Maintenance"

/area/ship/hearth/maintenance/deckone/amidships/port
	name = "First Deck Amidships Port Maintenance"

//Second Deck Maint

/area/ship/hearth/maintenance/decktwo/fore/port
	name = "Second Deck Fore Port Maintenance"

/area/ship/hearth/maintenance/decktwo/fore/starboard
	name = "Second Deck Fore Starboard Maintenance"

/area/ship/hearth/maintenance/decktwo/amidship/starboard
	name = "Second Deck Amidships Starboard Maintenance"

/area/ship/hearth/maintenance/decktwo/aft/port
	name = "Second Deck Aft Port Maintenance"

/area/ship/hearth/maintenance/decktwo/aft/starboard
	name = "Second Deck Aft Starboard Maintenance"

//Third Deck Maint

/area/ship/hearth/maintenance/deckthree/aft
	name = "Third Deck Aft Maintenance"

/area/ship/hearth/maintenance/deckthree/aftport
	name = "Third Deck Aft Port Maintenance"

/area/ship/hearth/maintenance/deckthree/foreport
	name = "Third Deck Fore Port Maintenance"

/area/ship/hearth/maintenance/deckthree/fore/starboard
	name = "Third Deck Fore Starboard Maintenance"

/area/ship/hearth/maintenance/deckthree/aft/starboard
	name = "Third Deck Aft Starboard Maintenance"

//Misc areas

/area/ship/hearth/eva
	name = "General EVA Bay"
	icon_state = "gen_eva"
	req_access = list(access_eva)

/area/ship/hearth/hangar
	name = "Hangar Bay"
	icon_state = "hangar"

/area/ship/hearth/ladderwell
	name = "Ladderwell"
	icon_state = "ladder"

/area/ship/hearth/janitorial
	name = "Janitorial Closet"
	icon_state = "janitor"
	req_access = list(access_janitor)

//Shuttles

/area/ship/hearth/shuttle/gnat
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/ship/hearth/shuttle/gnat/cockpit
	name = "Gnat - Cockpit"
	icon_state = "gnatpilot"

/area/ship/hearth/shuttle/gnat/passenger
	name = "Gnat - Passenger Bay"
	icon_state = "gnatpass"

/area/ship/hearth/shuttle/gnat/cargo
	name = "Gnat - Cargo Bay"
	icon_state = "gnatcargo"

/area/ship/hearth/shuttle/gnat/maint
	name = "Gnat - Atmos Compartment"
	icon_state = "gnatmaint"