/decl/language/skrell
	name = "Common Skrellian"
	desc = "A melodic and complex language spoken by the Skrell of the Oligarchy. Some of the notes are inaudible to humans."
	speech_verb = "warbles"
	ask_verb = "warbles"
	exclaim_verb = "warbles"
	colour = "selenian"
	key = "k"
	flags = WHITELISTED
	syllables = list("qr","qrr","xuq","qil","quum","xuqm","vol","xrim","zaoo","qu-uu","qix","qoo","zix","*","!")
	shorthand = "SK"
	partial_understanding = list(
		/decl/language/skrell/casteless = 90
	)

/decl/language/skrell/casteless
	name = "Ue-Katish Pidgin"
	desc = "A flat and emotionless language spoken mainly by Ue-Katish pirates."
	speech_verb = "croaks"
	ask_verb = "croaks"
	exclaim_verb = "chirps"
	colour = "selenian"
	key = "h"
	flags = WHITELISTED
	syllables = list("qr","qrr","xuq","qil","quum","xuqm","vol","xrim","zaoo","qu-uu","qix","qoo","zix")
	shorthand = "UK"
	partial_understanding = list(
		/decl/language/skrell = 90
	)