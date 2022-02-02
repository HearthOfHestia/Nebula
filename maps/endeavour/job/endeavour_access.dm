/************
* ISEO Endeavour *
************/
/var/global/const/access_hangar = "ACCESS_ENDEAVOUR_HANGAR"
/datum/access/hangar
	id = access_hangar
	desc = "Hangar Deck"
	region = ACCESS_REGION_GENERAL

/var/global/const/access_iseo_crew = "ACCESS_ENDEAVOUR_CREW"
/datum/access/iseo_crew
	id = access_iseo_crew
	desc = "ISEO Crew"
	region = ACCESS_REGION_GENERAL

/var/global/const/access_corporate = "ACCESS_ENDEAVOUR_CORP"
/datum/access/corporate
	id = access_corporate
	desc = "Corporate Personnel"
	region = ACCESS_REGION_RESEARCH

/var/global/const/access_emergency_armory = "ACCESS_ENDEAVOUR_ARMORY"
/datum/access/emergency_armory
	id = access_emergency_armory
	desc = "Emergency Armory"
	region = ACCESS_REGION_COMMAND

/var/global/const/access_liaison = "ACCESS_ENDEAVOUR_CORPORATE_LIAISON"
/datum/access/liaison
	id = access_liaison
	desc = "Corporate Liaison"
	region = ACCESS_REGION_COMMAND
	access_type = ACCESS_TYPE_NONE //Ruler of their own domain, CO and RD cannot enter

/var/global/const/access_representative = "ACCESS_ENDEAVOUR_REPRESENTATIVE"
/datum/access/representative
	id = access_representative
	desc = "National Council Representative"
	region = ACCESS_REGION_COMMAND
	access_type = ACCESS_TYPE_NONE //Ruler of their own domain, CO cannot enter

/var/global/const/access_sec_guard = "ACCESS_ENDEAVOUR_SECURITY_GUARD"
/datum/access/sec_guard
	id = access_sec_guard
	desc = "Security Guard"
	region = ACCESS_REGION_RESEARCH

/var/global/const/access_expedition_shuttle = "ACCESS_ENDEAVOUR_EXPLO"
/datum/access/exploration_shuttle
	id = access_expedition_shuttle
	desc = "Curiosity"
	region = ACCESS_REGION_GENERAL


/var/global/const/access_expedition_shuttle_helm = "ACCESS_EXPLO_HELM"
/datum/access/exploration_shuttle_helm
	id = access_expedition_shuttle_helm
	desc = "Curiosity Helm"
	region = ACCESS_REGION_GENERAL


/var/global/const/access_perseverance = "ACCESS_MINING_SHUTTLE"
/datum/access/opportunity
	id = access_perseverance
	desc = "Opportunity"
	region = ACCESS_REGION_GENERAL

/var/global/const/access_seneng = "ACCESS_ENDEAVOUR_SENIOR_ENG"
/datum/access/seneng
	id = access_seneng
	desc = "Senior Engineer"
	region = ACCESS_REGION_ENGINEERING

/var/global/const/access_senmed = "ACCESS_ENDEAVOUR_SENIOR_MED"
/datum/access/senmed
	id = access_senmed
	desc = "Physician"
	region = ACCESS_REGION_MEDBAY

/var/global/const/access_senadv = "ACCESS_ENDEAVOUR_SENIOR_ADVISOR"
/datum/access/senadv
	id = access_senadv
	desc = "Senior Enlisted Advisor"
	region = ACCESS_REGION_COMMAND

/var/global/const/access_explorer = "ACCESS_ENDEAVOUR_EXPLORER"
/datum/access/explorer
	id = access_explorer
	desc = "Explorer"
	region = ACCESS_REGION_GENERAL

/var/global/const/access_pathfinder = "ACCESS_ENDEAVOUR_PATHFINDER"
/datum/access/pathfinder
	id = access_pathfinder
	desc = "Pathfinder"
	region = ACCESS_REGION_GENERAL

/var/global/const/access_pilot = "ACCESS_ENDEAVOUR_PILOT"
/datum/access/pilot
	id = access_pilot
	desc = "Pilot"
	region = ACCESS_REGION_GENERAL

/var/global/const/access_endeavour_helm = "ACCESS_ENDEAVOUR_HELM"
/datum/access/endeavour_helm
	id = access_endeavour_helm
	desc = "Endeavour Helm"
	region = ACCESS_REGION_COMMAND

/datum/access/psychiatrist
	desc = "Mental Health"

/datum/access/hos
	desc = "Chief of Security"

/datum/access/hop
	desc = "Executive Officer"

/datum/access/qm
	desc = "Deck Chief"

/datum/access/robotics
	region = ACCESS_REGION_ENGINEERING

/datum/access/network
	region = ACCESS_REGION_COMMAND

// Endeavour Radio Access

/var/global/const/access_radio_comm = "ACCESS_RADIO_COMM"
/datum/access/access_radio_comm
	id = access_radio_comm
	desc = "Command Radio"
	region = ACCESS_REGION_COMMAND

/var/global/const/access_radio_eng = "ACCESS_RADIO_ENG"
/datum/access/access_radio_eng
	id = access_radio_eng
	desc = "Engineering Radio"
	region = ACCESS_REGION_ENGINEERING

/var/global/const/access_radio_med = "ACCESS_RADIO_MED"
/datum/access/access_radio_med
	id = access_radio_med
	desc = "Medical Radio"
	region = ACCESS_REGION_MEDBAY

/var/global/const/access_radio_sec = "ACCESS_RADIO_SEC"
/datum/access/access_radio_sec
	id = access_radio_sec
	desc = "Security Radio"
	region = ACCESS_REGION_SECURITY

/var/global/const/access_radio_sci = "ACCESS_RADIO_SCI"
/datum/access/access_radio_sic
	id = access_radio_sci
	desc = "Science Radio"
	region = ACCESS_REGION_NT

/var/global/const/access_radio_sup = "ACCESS_RADIO_SUP"
/datum/access/access_radio_sup
	id = access_radio_sup
	desc = "Supply Radio"
	region = ACCESS_REGION_GENERAL

/var/global/const/access_radio_serv = "ACCESS_RADIO_SERV"
/datum/access/access_radio_serv
	id = access_radio_serv
	desc = "Service Radio"
	region = ACCESS_REGION_GENERAL

/var/global/const/access_radio_exp = "ACCESS_RADIO_EXP"
/datum/access/access_radio_exp
	id = access_radio_exp
	desc = "Exploration Radio"
	region = ACCESS_REGION_GENERAL