/decl/language/skrell
	name = "Skrellian"
	desc = "A melodic and complex language spoken by the Skrell of Qerrbalak. Some of the notes are inaudible to humans."
	speech_verb = "warbles"
	ask_verb = "warbles"
	exclaim_verb = "warbles"
	colour = "selenian"
	key = "k"
	flags = WHITELISTED
	syllables = list("qr","qrr","xuq","qil","quum","xuqm","vol","xrim","zaoo","qu-uu","qix","qoo","zix","'","!")
	shorthand = "SK"

/decl/language/skrell/get_random_name(var/gender)
	return capitalize(pick(global.first_name_skrell)) + capitalize(pick(global.last_name_skrell))