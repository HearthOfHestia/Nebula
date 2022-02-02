/************
* ISEO Endeavour *
************/
/var/global/const/access_hangar = "ACCESS_ENDEAVOUR_HANGAR" //73
/datum/access/hangar
	id = access_hangar
	desc = "Hangar Deck"
	region = ACCESS_REGION_GENERAL

/var/global/const/access_opportunity_helm = "ACCESS_ENDEAVOUR_GUP_HELM" //76
/datum/access/opportunity_helm
	id = access_opportunity_helm
	desc = "General Utility Pod Helm"
	region = ACCESS_REGION_GENERAL

/var/global/const/access_expedition_shuttle_helm = "ACCESS_EXPLO_HELM" //77
/datum/access/exploration_shuttle_helm
	id = access_expedition_shuttle_helm
	desc = "Spirit Helm"
	region = ACCESS_REGION_GENERAL

/var/global/const/access_perseverance = "ACCESS_ENDEAVOUR_PERSEVERANCE" //78
/datum/access/perseverance
	id = access_perseverance
	desc = "Perseverance"
	region = ACCESS_REGION_GENERAL

/var/global/const/access_perseverance_helm = "ACCESS_ENDEAVOUR_PERSEVERANCE_HELM" //79
/datum/access/perseverance_helm
	id = access_perseverance_helm
	desc = "Perseverance Helm"
	region = ACCESS_REGION_GENERAL

/var/global/const/access_solgov_crew = "ACCESS_ENDEAVOUR_CREW" //80
/datum/access/solgov_crew
	id = access_solgov_crew
	desc = "SolGov Crew"
	region = ACCESS_REGION_GENERAL

/var/global/const/access_nanotrasen = "ACCESS_ENDEAVOUR_CORP" //81
/datum/access/nanotrasen
	id = access_nanotrasen
	desc = "Corporate Personnel"
	region = ACCESS_REGION_RESEARCH

/var/global/const/access_emergency_armory = "ACCESS_ENDEAVOUR_ARMORY" //83
/datum/access/emergency_armory
	id = access_emergency_armory
	desc = "Emergency Armory"
	region = ACCESS_REGION_COMMAND

/var/global/const/access_liaison = "ACCESS_ENDEAVOUR_CORPORATE_LIAISON" //84
/datum/access/liaison
	id = access_liaison
	desc = "Corporate Liaison"
	region = ACCESS_REGION_COMMAND
	access_type = ACCESS_TYPE_NONE //Ruler of their own domain, CO and RD cannot enter

/var/global/const/access_representative = "ACCESS_ENDEAVOUR_REPRESENTATIVE" //85
/datum/access/representative
	id = access_representative
	desc = "SolGov Representative"
	region = ACCESS_REGION_COMMAND
	access_type = ACCESS_TYPE_NONE //Ruler of their own domain, CO cannot enter

/var/global/const/access_sec_guard = "ACCESS_ENDEAVOUR_SECURITY_GUARD" //86
/datum/access/sec_guard
	id = access_sec_guard
	desc = "Security Guard"
	region = ACCESS_REGION_RESEARCH

/var/global/const/access_gun = "ACCESS_ENDEAVOUR_CANNON" //87
/datum/access/gun
	id = access_gun
	desc = "Gunnery"
	region = ACCESS_REGION_COMMAND

/var/global/const/access_expedition_shuttle = "ACCESS_ENDEAVOUR_EXPLO" //88
/datum/access/exploration_shuttle
	id = access_expedition_shuttle
	desc = "Spirit"
	region = ACCESS_REGION_GENERAL

/var/global/const/access_opportunity = "ACCESS_ENDEAVOUR_GUP" //89
/datum/access/opportunity
	id = access_opportunity
	desc = "General Utility Pod"
	region = ACCESS_REGION_GENERAL

/var/global/const/access_seneng = "ACCESS_ENDEAVOUR_SENIOR_ENG" //90
/datum/access/seneng
	id = access_seneng
	desc = "Senior Engineer"
	region = ACCESS_REGION_ENGINEERING

/var/global/const/access_senmed = "ACCESS_ENDEAVOUR_SENIOR_MED" //91
/datum/access/senmed
	id = access_senmed
	desc = "Physician"
	region = ACCESS_REGION_MEDBAY

/var/global/const/access_senadv = "ACCESS_ENDEAVOUR_SENIOR_ADVISOR" //92
/datum/access/senadv
	id = access_senadv
	desc = "Senior Enlisted Advisor"
	region = ACCESS_REGION_COMMAND

/var/global/const/access_explorer = "ACCESS_ENDEAVOUR_EXPLORER" //93
/datum/access/explorer
	id = access_explorer
	desc = "Explorer"
	region = ACCESS_REGION_GENERAL

/var/global/const/access_pathfinder = "ACCESS_ENDEAVOUR_PATHFINDER" //94
/datum/access/pathfinder
	id = access_pathfinder
	desc = "Pathfinder"
	region = ACCESS_REGION_GENERAL

/var/global/const/access_pilot = "ACCESS_ENDEAVOUR_PILOT" //95
/datum/access/pilot
	id = access_pilot
	desc = "Pilot"
	region = ACCESS_REGION_GENERAL

/var/global/const/access_commissary = "ACCESS_ENDEAVOUR_SHOP" //96
/datum/access/commissary
	id = access_commissary
	desc = "Commissary"
	region = ACCESS_REGION_GENERAL

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

/*************
* NRV Curiosity *
*************/
/var/global/const/access_curiosity = "ACCESS_ENDEAVOUR_CURIOSITY" //200
/datum/access/curiosity
	id = access_curiosity
	desc = "Curiosity"
	region = ACCESS_REGION_NT

/var/global/const/access_curiosity_helm = "ACCESS_ENDEAVOUR_CURIOSITY_HELM" //201
/datum/access/curiosity_helm
	id = access_curiosity_helm
	desc = "Curiosity Helm"
	region = ACCESS_REGION_NT

/var/global/const/access_curiosity_analysis = "ACCESS_ENDEAVOUR_CURIOSITY_ANALYSIS" //202
/datum/access/curiosity_analysis
	id = access_curiosity_analysis
	desc = "Curiosity Analysis Lab"
	region = ACCESS_REGION_NT

/var/global/const/access_curiosity_phoron = "ACCESS_ENDEAVOUR_CURIOSITY_PHORON" //203
/datum/access/curiosity_phoron
	id = access_curiosity_phoron
	desc = "Curiosity Phoron Sublimation Lab"
	region = ACCESS_REGION_NT

/var/global/const/access_curiosity_toxins = "ACCESS_ENDEAVOUR_CURIOSITY_TOXINS" //204
/datum/access/curiosity_toxins
	id = access_curiosity_toxins
	desc = "Curiosity Toxins Lab"
	region = ACCESS_REGION_NT

/var/global/const/access_curiosity_chemistry = "ACCESS_ENDEAVOUR_CURIOSITY_CHEMISTRY" //205
/datum/access/curiosity_chemistry
	id = access_curiosity_chemistry
	desc = "Curiosity Chemistry Lab"
	region = ACCESS_REGION_NT

/var/global/const/access_curiosity_rd = "ACCESS_ENDEAVOUR_CURIOSITY_RD" //206
/datum/access/curiosity_rd
	id = access_curiosity_rd
	desc = "Curiosity Chief Science Officer's Office"
	region = ACCESS_REGION_NT

/var/global/const/access_curiosity_security = "ACCESS_ENDEAVOUR_CURIOSITY_SEC" //207
/datum/access/curiosity_security
	id = access_curiosity_security
	desc = "Curiosity Security Office"
	region = ACCESS_REGION_NT

/var/global/const/access_curiosity_maint = "ACCESS_ENDEAVOUR_CURIOSITY_MAINT" //208
/datum/access/curiosity_maint
	id = access_curiosity_maint
	desc = "Curiosity Maintenance"
	region = ACCESS_REGION_NT

/var/global/const/access_endeavour_helm = "ACCESS_ENDEAVOUR_HELM"
/datum/access/torch_helm
	id = access_endeavour_helm
	desc = "Endeavour Helm"
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