/area/ship/endeavour
	name = "\improper Generic Ship"
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambigen12.ogg')
	icon = 'maps/endeavour/icons/areas.dmi'

//Engineering

/area/ship/endeavour/engineering
	name = "\improper Engineering Bay"
	icon_state = "enghall"
	req_access = list(access_engine)

/area/ship/endeavour/engineering/secure_storage
	name = "\improper Secure Storage"
	icon_state = "secstore"
	req_access = list(access_engine)

/area/ship/endeavour/engineering/engine_room
	name = "\improper Engine Monitoring Room"
	icon_state = "engineroom"
	req_access = list(access_engine, access_engine_equip)

/area/ship/endeavour/engineering/smes
	name = "\improper Primary Power Storage"
	icon_state = "smes"
	req_access = list(access_engine, access_engine_equip)

/area/ship/endeavour/engineering/fuel_bay
	icon_state = "fuelbay"

/area/ship/endeavour/engineering/fuel_bay/co2
	name = "\improper Propellant Storage Bay"

/area/ship/endeavour/engineering/hallway
	icon_state = "enghall"
	name = "\improper Engineering Hallway"
	req_access = list(access_engine)

/area/ship/endeavour/engineering/hallway/upper
	name = "\improper Upper Engineering Hallway"
	req_access = list(access_engine)

/area/ship/endeavour/engineering/utility_shaft
	name = "\improper Utility Shaft"
	icon_state = "utilityshaft"

/area/ship/endeavour/engineering/solars
	name = "\improper Bridge Solar Array"
	icon_state = "solars"

/area/ship/endeavour/engineering/shield_generator
	name = "\improper Primary Shield Generator"
	icon_state = "shieldgen"

/area/ship/endeavour/engineering/reactor
	name = "\improper Primary Reactor Core"
	icon_state = "reactor"
	req_access = list(access_engine, access_engine_equip)

/area/ship/endeavour/engineering/atmospherics
	icon_state = "atmos"
	name = "\improper Atmospherics"
	req_access = list(access_engine, access_atmospherics)

/area/ship/endeavour/engineering/atmospherics/pump_room
	name = "\improper Coolant Pump Bay"
	req_access = list(access_engine, access_engine_equip)

/area/ship/endeavour/engineering/atmospherics/monitoring_room
	name = "\improper Atmospherics Monitoring Room"

/area/ship/endeavour/engineering/EVA
	name = "\improper EVA Bay"
	icon_state = "EVA"
	req_access = list(access_engine)

/area/ship/endeavour/engineering/substation
	icon_state = "substation"

/area/ship/endeavour/engineering/substation/one
	name = "\improper First Deck Substation"

/area/ship/endeavour/engineering/substation/two
	name = "\improper Second Deck Substation"

/area/ship/endeavour/engineering/substation/three
	name = "\improper Third Deck Substation"

/area/ship/endeavour/engineering/substation/four
	name = "\improper Bridge Deck Substation"

/area/ship/endeavour/engineering/thruster_bay
	icon_state = "thrustbay"

/area/ship/endeavour/engineering/thruster_bay/one
	name = "\improper First Deck Thruster Bay"

/area/ship/endeavour/engineering/thruster_bay/two
	name = "\improper Third Deck Thruster Bay"

/area/ship/endeavour/engineering/inertial_damper
	name = "\improper Inertial Damper Bay"
	icon_state = "damper"

//Habitation

/area/ship/endeavour/habitation
	icon_state = "habitation"

/area/ship/endeavour/habitation/gentool
	icon_state = "gentool"
	name = "\improper General Tool Storage"

/area/ship/endeavour/habitation/bar
	icon_state = "bar"
	name = "\improper Mess Hall"

/area/ship/endeavour/habitation/bar/backroom
	icon_state = "barback"
	name = "\improper Bar Backroom"
	req_access = list(access_bar)

/area/ship/endeavour/habitation/kitchen
	icon_state = "kitchen"
	name = "\improper Kitchen"
	req_access = list(access_kitchen)

/area/ship/endeavour/habitation/bathroom
	icon_state = "bathroom"

/area/ship/endeavour/habitation/bathroom/one
	name = "\improper Third Deck Bathroom"

/area/ship/endeavour/habitation/bathroom/two
	name = "\improper Second Deck Bathroom"

/area/ship/endeavour/habitation/hydroponics
	icon_state = "hydroponic"
	name = "\improper Hydroponics Bay"
	req_access = list(access_hydroponics)

/area/ship/endeavour/habitation/cabins
	icon_state = "cabin"

/area/ship/endeavour/habitation/cabins/one
	name = "\improper Cabin One"

/area/ship/endeavour/habitation/cabins/two
	name = "\improper Cabin Two"

/area/ship/endeavour/habitation/cabins/three
	name = "\improper Cabin Three"

/area/ship/endeavour/habitation/cabins/four
	name = "\improper Cabin Four"

/area/ship/endeavour/habitation/cryo
	icon_state = "cryo"

/area/ship/endeavour/habitation/cryo/one
	name = "\improper Cryo Bay One"

/area/ship/endeavour/habitation/cryo/two
	name = "\improper Cryo Bay Two"

/area/ship/endeavour/habitation/observation
	name = "\improper Observation Lounge"
	icon_state = "observation"

/area/ship/endeavour/habitation/garden
	name = "\improper Garden"
	icon_state = "garden"

//Security

/area/ship/endeavour/security
	icon_state = "sec"
	name = "\improper Security"
	req_access = list(access_sec_doors)

/area/ship/endeavour/security/lockers
	name = "\improper Locker Room"
	icon_state = "lockers"
	req_access = list(access_sec_doors)

/area/ship/endeavour/security/brig
	name = "\improper Brig"
	req_access = list(access_sec_doors, access_brig)
	secure = TRUE // so prisoners can't escape their cells

/area/ship/endeavour/security/maa_office
	icon_state = "maa"
	name = "\improper Brig Chief's Office"
	req_access = list(access_armory, access_sec_doors)

/area/ship/endeavour/security/armory
	icon_state = "armory"
	name = "\improper Armory"
	req_access = list(access_armory)

/area/ship/endeavour/security/weapons_bay
	icon_state = "weaponsbay"
	req_access = list(access_security)

/area/ship/endeavour/security/weapons_bay/two
	name = "\improper Torpedo Bay One"

/area/ship/endeavour/security/weapons_bay/three
	name = "\improper Main Weapons Bay"

/area/ship/endeavour/security/hallway/weapons_bay/port
	name = "\improper Port Weapons Bay Access"

/area/ship/endeavour/security/hallway/weapons_bay/starboard
	name = "\improper Starboard Weapons Bay Access"

//Medical

/area/ship/endeavour/medical
	icon_state = "medbay"
	name = "\improper Medbay"
	req_access = list(access_medical)

/area/ship/endeavour/medical/public
	icon_state = "medbay"
	name = "\improper Public Medbay Annex"
	req_access = null

/area/ship/endeavour/medical/treatment
	icon_state = "etc"
	name = "\improper Treatment Center"

/area/ship/endeavour/medical/operating
	icon_state = "or"

/area/ship/endeavour/medical/operating/one
	name = "\improper Operating Room One"

/area/ship/endeavour/medical/operating/two
	name = "\improper Operating Room Two"

/area/ship/endeavour/medical/chemistry
	icon_state = "chem"
	name = "\improper Chemistry Lab"
	req_access = list(access_chemistry, access_medical)
	secure = TRUE

/area/ship/endeavour/medical/storage
	name = "\improper Medical Storage"
	icon_state = "medstore"
	req_access = list(access_medical, access_medical_equip)

/area/ship/endeavour/medical/morgue
	name = "\improper Morgue"
	icon_state = "morgue"
	req_access = list(access_morgue)

/area/ship/endeavour/medical/morgue/viewing
	name = "\improper Burial Observation"
	icon_state = "morgueview"

/area/ship/endeavour/medical/medtech
	name = "\improper Medical Technician Bay"
	icon_state = "medtech"

/area/ship/endeavour/medical/medtech
	name = "\improper Medical Technician Bay"
	icon_state = "medtech"

/area/ship/endeavour/medical/counselor
	name = "\improper Counselor's Office"
	ambience = list('sound/ambience/signal.ogg')
	req_access = list(access_psychiatrist)
	sound_env = SMALL_SOFTFLOOR

/area/ship/endeavour/medical/relacelab
	name = "\improper Relacing Lab"
	icon_state = "locker"
	req_access = list(access_medical_equip)

//Command

/area/ship/endeavour/command
	icon_state = "comhall"
	req_access = list(access_heads)

/area/ship/endeavour/command/bridge
	icon_state = "bridge"
	name = "\improper Bridge"
	req_access = list(access_bridge)

/area/ship/endeavour/command/bridge/cic
	icon_state = "cic"
	name = "\improper Combat Information Center"
	req_access = list(access_bridge)
	secure = TRUE

/area/ship/endeavour/command/hallway
	name = "\improper Bridge Hallway"
	req_access = null

/area/ship/endeavour/command/hallway/cic
	name = "\improper CIC Hallway"
	req_access = null

/area/ship/endeavour/command/office
	icon_state = "comoffice"

/area/ship/endeavour/command/office/captain
	name = "\improper Captain's Office"
	req_access = list(access_heads, access_captain)

/area/ship/endeavour/command/office/captain/bedroom
	name = "\improper Captain's Quarters"
	icon_state = "combed"

/area/ship/endeavour/command/office/xo
	name = "\improper First Officer's Office"
	req_access = list(access_heads, access_hop)

/area/ship/endeavour/command/office/ce
	name = "\improper Chief Engineer's Office"
	req_access = list(access_heads, access_ce)

/area/ship/endeavour/command/office/ce/bedroom
	name = "\improper Chief Engineer's Quarters"
	icon_state = "combed"

/area/ship/endeavour/command/office/cmo
	name = "\improper Chief Medical Officer's Office"
	req_access = list(access_heads, access_cmo)

/area/ship/endeavour/command/office/cmo/bedroom
	name = "\improper Chief Medical Officer's Quarters"
	icon_state = "combed"

/area/ship/endeavour/command/office/maa
	name = "\improper Chief of Security's Office"
	req_access = list(access_heads, access_hos)

/area/ship/endeavour/command/office/maa/bedroom
	name = "\improper Chief of Security's Quarters"
	icon_state = "combed"

/area/ship/endeavour/command/office/xo/bedroom
	name = "\improper Executive Officer's Quarters"
	icon_state = "combed"

/area/ship/endeavour/command/office/bosun
	name = "\improper Quartermaster's Office"
	icon_state = "bosunoffice"
	req_access = list(access_heads, access_qm)

/area/ship/endeavour/command/office/bosun/bed
	name = "\improper Quartermaster's Quarters"
	icon_state = "bosunbed"

/area/ship/endeavour/command/office/rd
	name = "\improper Chief Science Officer's Office"
	icon_state = "rdoffice"
	req_access = list(access_heads, access_rd)

/area/ship/endeavour/command/office/rd/bed
	name = "\improper Chief Science Officer's Quarters"
	icon_state = "rdoffice"

/area/ship/endeavour/command/bathroom
	name = "\improper Officer Bathroom"
	icon_state = "headbath"
	req_access = list(access_heads)

/area/ship/endeavour/command/meetingroom
	name = "\improper Meeting Room"
	icon_state = "meetingroom"
	req_access = list(access_bridge)

/area/ship/endeavour/command/vault
	name = "\improper Vault"
	icon_state = "vault"
	req_access = list(access_heads_vault)
	secure = TRUE

/area/ship/endeavour/command/sensitive_storage
	name = "\improper Sensitive Storage"
	icon_state = "selfdestruct"
	req_access = list(access_heads_vault)
	secure = TRUE

/area/ship/endeavour/command/ofd
	name = "\improper OFD Bay"
	icon_state = "ofd"
	req_access = list(access_bridge)
	secure = TRUE

/area/ship/endeavour/command/ofdstorage
	name = "\improper OFD Charge Storage"
	icon_state = "ofdammo"
	req_access = list(access_bridge)
	secure = TRUE



//Cargo

/area/ship/endeavour/cargo
	icon_state = "cargo"
	req_access = list(access_cargo)

/area/ship/endeavour/cargo/general
	name = "\improper Cargo Bay"

/area/ship/endeavour/cargo/lobby
	name = "\improper Cargo Lobby"
	icon_state = "cargolobby"
	req_access = null

/area/ship/endeavour/cargo/disposals
	name = "\improper Disposals Bay"
	icon_state = "disposal"

/area/ship/endeavour/cargo/salvage
	name = "\improper Salvage Technician Bay"
	icon_state = "salvageprep"
	req_access = list(access_mining, access_cargo)

/area/ship/endeavour/cargo/lockers
	name = "\improper Cargo Locker Room"
	icon_state = "cargolocker"

/area/ship/endeavour/cargo/comissary
	name = "\improper Comissary"
	icon_state = "commiss"

//Science

/area/ship/endeavour/science
	icon_state = "science"
	req_access = list(access_research)

/area/ship/endeavour/science/robotics
	icon_state = "robotics"
	name = "\improper Robotics Bay"
	req_access = list(access_robotics, access_research)

/area/ship/endeavour/science/robotics/public
	icon_state = "robotics"
	name = "\improper Public Robotics Annex"
	req_access = null

/area/ship/endeavour/science/science_hall
	name = "\improper Science Hallway"
	icon_state = "sciencehall"

/area/ship/endeavour/science/materials_lab
	name = "\improper Materials Laboratory"
	icon_state = "matlab"

/area/ship/endeavour/science/circuit_lab
	name = "\improper Electrical Engineering"
	icon_state = "science"

/area/ship/endeavour/science/xenobio
	name = "\improper Xenobioflora Laboratory"
	icon_state = "science"
	req_access = list(access_xenobiology)
	secure = TRUE // so slimes can't escape their cells

/area/ship/endeavour/science/xenoarch
	name = "\improper Xenoarcheology"
	icon_state = "science"
	req_access = list(access_research, access_xenoarch)

/area/ship/endeavour/science/xenoarch/storage
	name = "\improper Xenoarcheology Storage"
	icon_state = "science"

/area/ship/endeavour/science/xenoarch/lab
	name = "\improper Xenoarcheology Lab"
	icon_state = "science"

/area/ship/endeavour/science/server_room
	name = "\improper Server Room"
	icon_state = "server"
	req_access = list(access_tcomsat)

/area/ship/endeavour/science/network_closet
	req_access = list(access_tcomsat)
	icon_state = "netcloset"

/area/ship/endeavour/science/network_closet/third_deck
	name = "\improper Third Deck Network Node"

/area/ship/endeavour/science/network_closet/bridge_deck
	name = "\improper Bridge Deck Network Node"

//Hallways.

/area/ship/endeavour/hallway
	icon_state = "hallway"

/area/ship/endeavour/hallway/first_deck
	name = "\improper First Deck Hallway"

/area/ship/endeavour/hallway/second_deck
	name = "\improper Second Deck Hallway"

/area/ship/endeavour/hallway/third_deck/fore
	name = "\improper Third Deck Hallway"

//Escape pod bays

/area/ship/endeavour/escape_pod
	icon_state = "escpod"

/area/ship/endeavour/escape_pod/one
	name = "\improper Escape Pod Bay One"

/area/ship/endeavour/escape_pod/two
	name = "\improper Escape Pod Bay Two"

/area/ship/endeavour/escape_pod/three
	name = "\improper Escape Pod Bay Three"

/area/ship/endeavour/escape_pod/four
	name = "\improper Escape Pod Bay Four"

//Maintenance

/area/ship/endeavour/maintenance
	icon_state = "maint"
	area_flags = AREA_FLAG_RAD_SHIELDED
	turf_initializer = /decl/turf_initializer/maintenance
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambimo1.ogg','sound/ambience/ambimo2.ogg')
	req_access = list(access_maint_tunnels)

/area/ship/endeavour/maintenance/deckone/aft
	name = "\improper First Deck Aft Maintenance"

/area/ship/endeavour/maintenance/deckone/aft/port
	name = "\improper First Deck Aft Port Maintenance"

/area/ship/endeavour/maintenance/deckone/aft/starboard
	name = "\improper First Deck Aft Starboard Maintenance"

/area/ship/endeavour/maintenance/deckone/fore/starboard
	name = "\improper First Deck Fore Starboard Maintenance"

/area/ship/endeavour/maintenance/deckone/fore/port
	name = "\improper First Deck Fore Port Maintenance"

/area/ship/endeavour/maintenance/deckone/amidships/port
	name = "\improper First Deck Amidships Port Maintenance"

//Second Deck Maint

/area/ship/endeavour/maintenance/decktwo/fore/port
	name = "\improper Second Deck Fore Port Maintenance"

/area/ship/endeavour/maintenance/decktwo/fore/starboard
	name = "\improper Second Deck Fore Starboard Maintenance"

/area/ship/endeavour/maintenance/decktwo/amidship/starboard
	name = "\improper Second Deck Amidships Starboard Maintenance"

/area/ship/endeavour/maintenance/decktwo/aft/port
	name = "\improper Second Deck Aft Port Maintenance"

/area/ship/endeavour/maintenance/decktwo/aft/starboard
	name = "\improper Second Deck Aft Starboard Maintenance"

//Third Deck Maint

/area/ship/endeavour/maintenance/deckthree/aft
	name = "\improper Third Deck Aft Maintenance"

/area/ship/endeavour/maintenance/deckthree/aftport
	name = "\improper Third Deck Aft Port Maintenance"

/area/ship/endeavour/maintenance/deckthree/foreport
	name = "\improper Third Deck Fore Port Maintenance"

/area/ship/endeavour/maintenance/deckthree/fore/starboard
	name = "\improper Third Deck Fore Starboard Maintenance"

/area/ship/endeavour/maintenance/deckthree/aft/starboard
	name = "\improper Third Deck Aft Starboard Maintenance"

//Misc areas

/area/ship/endeavour/eva
	name = "\improper General EVA Bay"
	icon_state = "gen_eva"
	req_access = list(access_eva)

/area/ship/endeavour/hangar
	name = "\improper Hangar Bay"
	icon_state = "hangar"
	req_access = list(access_hangar)

/area/ship/endeavour/ladderwell
	name = "\improper Ladderwell"
	icon_state = "ladder"

/area/ship/endeavour/janitorial
	name = "\improper Janitorial Closet"
	icon_state = "janitor"
	req_access = list(access_janitor)

//Shuttles

/area/ship/endeavour/shuttle/perseverance
	area_flags = AREA_FLAG_RAD_SHIELDED
	req_access = list(access_perseverance)

/area/ship/endeavour/shuttle/perseverance/cockpit
	name = "\improper Perseverance - Cockpit"
	icon_state = "perseverancepilot"

/area/ship/endeavour/shuttle/perseverance/passenger
	name = "\improper Perseverance - Passenger Bay"
	icon_state = "perseverancepass"

/area/ship/endeavour/shuttle/perseverance/cargo
	name = "\improper Perseverance - Cargo Bay"
	icon_state = "perseverancecargo"

/area/ship/endeavour/shuttle/perseverance/maint
	name = "\improper Perseverance - Atmos Compartment"
	icon_state = "perseverancemaint"

//Supply station stuff.
/area/supply
	name = "\improper Supply Lift"
	requires_power = FALSE
	dynamic_lighting = TRUE

/area/supply_station
	name = "\improper Supply Station"
	icon_state = "supplystation"
