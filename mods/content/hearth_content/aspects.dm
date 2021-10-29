/decl/aspect/cultural
	abstract_type = /decl/aspect/cultural
	var/avaliable_to_cultures = list()

/decl/aspect/cultural/is_available_to(datum/preferences/pref)
	. = ..()
	if(pref.cultural_info[TAG_CULTURE] in avaliable_to_cultures)
		return TRUE
	return FALSE

/decl/aspect/cultural/skrell
	category = "Skrellian Aspects"
	abstract_type = /decl/aspect/cultural/skrell
	aspect_flags = ASPECTS_MENTAL
	var/list/psi_operancy = list()

/decl/aspect/cultural/skrell/apply(mob/living/carbon/human/holder)
	for(var/psi in psi_operancy)
		addtimer(CALLBACK(holder, /mob/living/proc/set_psi_rank, psi, PSI_RANK_OPERANT), 1 SECOND)

/decl/aspect/cultural/skrell/qerr
	name = "Qerr-Katish Coerceion Operancy"
	desc = "Qerr-Katish have psionic operancy in the Coerceion field."
	psi_operancy = list(PSI_COERCION)
	avaliable_to_cultures = list(/decl/cultural_info/culture/skrell)

/decl/aspect/cultural/skrell/kanin
	name = "Kanin-Katish Psychokinetic Operancy"
	desc = "Kanin-Katish have psionic operancy in the Psychokinetics field."
	psi_operancy = list(PSI_PSYCHOKINESIS)
	avaliable_to_cultures = list(/decl/cultural_info/culture/skrell/caste_kanin)