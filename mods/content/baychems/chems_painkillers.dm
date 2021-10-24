// RENAMED:
/decl/material/liquid/painkillers
	name = "tramadol"
	lore_text = "A simple, yet effective opioid painkiller. Don't mix with alcohol."

// NEW, NOT RENAMED:
/decl/material/liquid/painkillers/paracetamol
	name = "paracetamol"
	lore_text = "Most probably know this as Tylenol, but this chemical is a mild, simple painkiller."
	overdose = 60
	pain_power = 35
	narcotic = FALSE
	breathloss_severity = 0 //Not an opioid. Should not suppress breathing.

/decl/material/liquid/painkillers/nefopam
	name = "nefopam" //better in every way than paracetamol. Very minor side effects.
	lore_text = "A strong, effective non-opioid alternative to tramadol"
	color = "#cfe2f3"
	narcotic = FALSE
	sedation = 0.2
	breathloss_severity = 0 //Not an opioid. Should not suppress breathing.
	slowdown_severity = 0.5
	blurred_vision = 0.2
	stuttering_severity = 0.2
	slur_severity = 0.2
	confusion_severity = 0
	dizzyness_severity = 1

/decl/material/liquid/painkillers/morphine
	name = "morphine" //similar to tramadol, more effective but more expensive to prepare.
	lore_text = "An effective, strong opioid painkiller. Don't mix with alcohol."
	color = "#864794"
	overdose = 10
	metabolism = 0.02
	pain_power = 160
	effective_dose = 0.20
	sedation = 0.2
	breathloss_severity = 1
	slowdown_severity = 1
	blurred_vision = 0.5
	stuttering_severity = 0
	slur_severity = 1
	confusion_severity = 1
	dizzyness_severity = 1

/decl/material/liquid/painkillers/fentanyl
	name = "fentanyl" //similar to morphine, but should hit you like a truck and prevent pain shock at all costs
	lore_text = "An incredibly powerful opioid painkiller, often utilized as a surgical sedative. Don't mix with alcohol."
	color = "#cfe2f3"
	overdose = 5 //very easy to overdose on
	metabolism = 0.01 //but also lasts for a long time
	pain_power = 500
	effective_dose = 0.10
	sedation = 2 //Acts as a sedative, and also prevents antags from taking fentanyl and becoming invincible.
	breathloss_severity = 2
	slowdown_severity = 2
	blurred_vision = 1
	stuttering_severity = 0.5
	slur_severity = 1
	confusion_severity = 1
	dizzyness_severity = 2