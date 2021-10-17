//DEFINES START
#define LANGUAGE_SSALLANT "Ssallant"
#define LANGUAGE_KRIPEN "Kri Pen"

//DEFINES END

//SPECIES OVERWRITES START

/decl/species/lizard
	available_cultural_info = list(
		TAG_CULTURE = list(
			/decl/cultural_info/culture/unathi,
			/decl/cultural_info/culture/unathi/ahat,
			/decl/cultural_info/culture/unathi/hrad,
			/decl/cultural_info/culture/unathi/tzeg,
			/decl/cultural_info/culture/unathi/lessik,
			/decl/cultural_info/culture/unathi/sundar,
			/decl/cultural_info/culture/unathi/yeosa
		),
		TAG_HOMEWORLD = list(
			/decl/cultural_info/location/moghes,
			/decl/cultural_info/location/offworld
		),
		TAG_FACTION = list(
			/decl/cultural_info/faction/unathi,
			/decl/cultural_info/faction/unathi/sstrak,
			/decl/cultural_info/faction/unathi/kruz,
			/decl/cultural_info/faction/unathi/other
		),
		TAG_RELIGION = list(
			/decl/cultural_info/religion/other,
			/decl/cultural_info/religion/basaan,
			/decl/cultural_info/religion/oldhrek,
			/decl/cultural_info/religion/agnostic,
			/decl/cultural_info/religion/newhrek,
			/decl/cultural_info/religion/gozi,
			/decl/cultural_info/religion/atheist
		)
	)

//SPECIES OVERWRITES END

//FACTIONS START

/decl/cultural_info/faction/unathi
	name = "Vasakkad"
	description = "You are from the Vasakkad, the Unathi Coalition. It is a decentralised planetary union that represents the countless independent states, clans, and polities of \
	Moghes and its colonies. The Coalition is largely a defensive, economic, and technologic pact, sharing resources, technology, and manpower. As such, it is widely considered \
	the face of Unathi Civilization by the Galactic Council, though this is a massive simplification of its realities. The Coalition has become part of the wider galactic community, \
	and are proactive in their relations with other species. They have their own federal workers, many of whom have been 'loaned' to the ISEO, and it is they who are the most likely \
	to end up working alongside humans on-board the Endeavour."

/decl/cultural_info/faction/unathi/sstrak
	name = "Sstrak-Yuk'har-V'vrenskan"
	description = "You are part of the Sstrak-Yuk’har-V’vrenskan, the interstellar navy of the Coalition. They are the only branch of the military to have never fought in a single war, \
	and many Unathi consider their role to be purely ceremonial, or serving as ‘space police’. This lack of interstellar combat is a testament to the Unathi’s determination for mutual peace, \
	but a concern to its military staff. Many members of the Sstrak are considered reserves, and have recently found themselves loaned out to civilian branches of the Coalition, serving as \
	security attachments, such as onboard the Endeavour, protecting the Unathi personnel and their human counterparts."

/decl/cultural_info/faction/unathi/kruz
	name = "Kruz Institute"
	description = "You are from the Kruz Institute, the scientific powerhouse of Moghes. Either from the Institute itself, with its home in the Tizegi Mountains, or from its colonial holdings \
	on Oe’erg, you are likely dedicated to the pursuit of science. The Kruz Institute maintains a significant presence in Unathi space, dedicating resources to interstellar exploration and research. \
	While they have ties to the Vasakkad, they are a largely independent body, and have negotiated separate contracts to work alongside the Human ISEO. They are extremely picky when it comes to students, \
	and those that graduate from the Kruz Institute are considered some of the Unathi’s brightest minds."

/decl/cultural_info/faction/unathi/other
	name = "Other Faction"
	description = "You do not consider yourself a part of any of the major factions of the Unathi. Wherever you are from, there are many reasons for an unaligned Unathi to travel to space, \
	either for trade, employment, or adventure.  It's likely you were born on Moghes, or Off-World as part of the new Spacer generation of Unathi, and you decided to leave the Vasakkad in search \
	of something new. It is not unheard of for Unathi to seek employment in Human space, in a wide variety of roles and places, mostly serving contractor and civilian niches."

//FACTIONS END

//CULTURES START

/decl/cultural_info/culture/unathi
	name = "Sinta'Unathi"
	description = "You are a Sinta’Unathi, the dominant Unathi ethnic group on Moghes, and in space. Sinta are considered the baseline of the species, from which all others have diverged. \
	They are at their peak in warm conditions, with most of their prosperous states being found in the sub-tropical regions above and below the equator. They can be found all across Moghes,\
	and among the various colonies. While the most powerful state on Moghes, the Szikian Hegemony, is largely Sinta, this does not mean that all Sinta are part of this society, and many are part \
	of the larger Vasakkad."
	default_language = /decl/language/unathi/ssallant
	secondary_langs = list(
		/decl/language/unathi/kripen
	)

/decl/cultural_info/culture/unathi/ahat
	name = "Ahat'Unathi"
	description = "You are an Ahat'Unathi, the small, energy efficient Unathi ethnic group from Ahat’Rashan, the great north island. Averaging around 4 foot, the Ahat are the smallest \
	Unathi. They are hard-wired to work smarter, taught from a young age to use their limited energy reserves only when they need to. They are often hungry, and are known for their \
	fond appreciation of energy drinks. Despite their shortcomings, the Ahat are just as capable as other Unathi groups, though they tend to require frequent naps to recharge after \
	overexertion. Despite their size being a limiting factor on Unathi, it has been an advantage in space, with many Ahat colonies established across the Esa System."

/decl/cultural_info/culture/unathi/hrad
	name = "Hrad'Unathi"
	description = "You are one of the crocodillian Hrad'Unathi. You are taller and wider than other groups, coming in at an average of around nine foot. Without a doubt, you are definitely \
	the most intimidating, especially to humans, with those crocodile features prompting a fight-or-flight in certain people. Their homeland is the Ssarina, a land of marshes, deltas, \
	and bayous. You are most likely a practitioner of the Gozi faith, as its aspects permeate most of Hrad life, even secular. Despite your intimidating presence, the Hrad are a tolerant \
	and welcoming people. But do not let people mistake your friendliness for weakness. The Szikan Hegemony found this out the hard way when your parents and grandparents resisted their \
	occupation. Though their stories are probably exaggerated, this has created a growing sense of national pride, something extremely rare among the Unathi. For most Hrad, the nation of \
	Hekhun’Hrad is your home, and you are proud of its continued survival. For those Hrad born away from the homeland, it's considered important to at least make a pilgrimage back there \
	once in a lifetime."

/decl/cultural_info/culture/unathi/tzeg
	name = "Tzeg'Unathi"
	description = "You are a Tzeg'Unathi, one of the most divergent ethnic groups on Moghes. Your kind originates from the Tzegi, a land comparable to the Tibetan Plateau of Earth. Despite \
	the Unathi being unsuited to these conditions, your kind have evolved to thrive here. Your blood has become decidedly less cold-blooded, and tufts of feathers now adorn your wrists, ankles, \
	chest, and head. Tzeg plumage runs from the top of the neck to the base of the tail. While naturally, these feathers are grey or white, these can be dyed as simply as one would dye their hair. \
	The Tzeg are a proud and determined people, who have come together in the face of a harsh and unforgiving climate. While most Tzeg are from the Tzegi, they can now be found across Moghes and its \
	colonies, much like all other Unathi."

/decl/cultural_info/culture/unathi/lessik
	name = "Lessik'Unathi"
	description = "You are a Lessik'Unathi, adapted to the dry climate of the Ktash Desert. Your kind have adapted to the deserts by being covered in protective keratin scales, from head to tail. \
	This allows your kind to curl into a ball, akin to an Armadillo. This ball has been defenseless since the advent of the pointed stick, and now is mostly an involuntary reaction to \
	high stress situations. The descendants of ancient Sinta migrations, what the Lessik lack in defence, they have made up for in their smarts, part of the most wealthy Unathi states."

/decl/cultural_info/culture/unathi/sundar
	name = "Sundar'Unathi"
	description = "You are a Sundar'Unathi, once the most dominant ethnic group of Moghes, now largely isolated to what remains of the Moghsian jungles. You were once an ambush predator, lithe and \
	athletic, second only to the Yeosa. Your saliva contains a minor toxin, known as Sundar'Sint. It is typically harmless to large creatures, like humans or other Unathi, but can cause 'trips' in \
	high doses. Your people were once considered the wise medicinefolk of the jungles, able to brew all manner of concoctions. This changed when your jungles were destroyed to make way for endless \
	grazing cattle. You defended these jungles until the founding of the Vasakkad, at the end of the Climate Catastrophe. With what remains of the jungles considered protected land, there is nowhere \
	for the Sundar to go but up, having the most colonies in the Esa System than any other Unathi."

/decl/cultural_info/culture/unathi/yeosa
	name = "Yeosa'Unathi"
	description = "You are a Yeosa'Unathi, adapted for life in and around the tropical inland sea of the Yeosa'rashan. You are typically taller than the average Sinta, but far more lithe and athletic. \
	You are built for navigating the waters, with adapted eyesight and gills. Yeosa are typically born with backwards facing teeth, akin to a shark. When the Moghsian Climate Catastrophe hit, they \
	were in an extremely advantagous position, moving in to 'colonise' much of the lowlands flooded via sea level rise. As such, they have a presence all across Moghes now, which has put them at \
	some odds with the former residents of this land, forced to migrate to higher lands."


// CULTURES END

// LOCATIONS START

/decl/cultural_info/location/moghes
	name = "Moghes"
	description = "You are from Moghes, the Unathi homeworld. Originally a lush tropical world, historic Unathi-driven climate change has rendered the most of the world a hot savanna. \
	Some jungles still survive, largely in its southern hemisphere. It is a pangaea-like world, slowly tearing itself apart. As such it is largely divided into the Sarrahat (Northern Moghes) \
	and the Kssinder (Southern Moghes), with the Ktash Desert dividing the two. A year on Moghes is the same as 463 Earth Days. It has two moons, Statt'att and Zek'rah, both of which are heavily \
	colonised. It is home to many individual states, clans, and polities, the vast majority of which are part of the united Unathi Coalition, known as the Vasakkad."
	distance = "0"
	capital = "Earth"
	economic_power = 1
	ruling_body = "Vasakkad"

/decl/cultural_info/location/offworld
	name = "Off-World"
	description = "You are part of a growing number of Unathi that have never called Moghes their home, and are Unathi of all kinds, cultures, thoughts, and faiths. Either from the \
	planetary colonies spread across the Esa System, or from the void itself, born on a colony ship, or a humble vessel travelling from planet to planet.  You likely have a different \
	outlook on life than most Moghes-born Unathi, and are generally totally fine with working in zero-g, low-light, or other conditions that the nature of your birth often puts you in."
	distance = "1"
	capital = "N/A"
	economic_power = 1
	ruling_body = "N/A"

// LOCATIONS END

// LANGUAGES START

/decl/language/unathi/ssallant
	name = LANGUAGE_SSALLANT
	desc = "The common language of Northern Moghes."
	colour = COLOR_TAN
	key = "ss"
	shorthand = "SN"
	space_chance = 30
	partial_understanding = list(
		LANGUAGE_KRIPEN = 30
	)
	syllables = list(
		"za", "az", "ze", "ez", "zi", "iz", "zo", "oz", "zu", "uz", "zs", "sz",
		"ha", "ah", "he", "eh", "hi", "ih", "ho", "oh", "hu", "uh", "hs", "sh",
		"la", "al", "le", "el", "li", "il", "lo", "ol", "lu", "ul", "ls", "sl",
		"ka", "ak", "ke", "ek", "ki", "ik", "ko", "ok", "ku", "uk", "ks", "sk",
		"sa", "as", "se", "es", "si", "is", "so", "os", "su", "us", "ss", "ss",
		"ra", "ar", "re", "er", "ri", "ir", "ro", "or", "ru", "ur", "rs", "sr",
		"a",  "a",  "e",  "e",  "i",  "i",  "o",  "o",  "u",  "u",  "s",  "s"
	)

/decl/language/unathi/kripen
	name = LANGUAGE_KRIPEN
	desc = "The common language of Southern Moghes."
	colour = COLOR_GREEN
	key = "kr"
	shorthand = "KR"
	space_chance = 40
	partial_understanding = list(
		LANGUAGE_SSALLANT = 30
	)
	syllables = list(
		"azs","zis","zau","azua","skiu","zuakz","izo","aei","ki","kut","zo",
		"za", "az", "ze", "ez", "zi", "iz", "zo", "oz", "zu", "uz", "zs", "sz",
		"ha", "ah", "he", "eh", "hi", "ih", "ho", "oh", "hu", "uh", "hs", "sh",
		"la", "al", "le", "el", "li", "il", "lo", "ol", "lu", "ul", "ls", "sl",
		"ka", "ak", "ke", "ek", "ki", "ik", "ko", "ok", "ku", "uk", "ks", "sk",
		"sa", "as", "se", "es", "si", "is", "so", "os", "su", "us", "ss", "ss",
		"ra", "ar", "re", "er", "ri", "ir", "ro", "or", "ru", "ur", "rs", "sr",
		"a",  "a",  "e",  "e",  "i",  "i",  "o",  "o",  "u",  "u",  "s",  "s"
	)

// LANGUAGES END

// RELIGIONS BEGIN

/decl/cultural_info/religion/basaan
	name = "Basaan"
	description = "Baa."

/decl/cultural_info/religion/oldhrek
	name = "Old Hrek'ann"
	description = "Baa."

/decl/cultural_info/religion/newhrek
	name = "New Hrek'ann"
	description = "Baa."

/decl/cultural_info/religion/gozi
	name = "Gozi"
	description = "Baa."

// RELIGIONS END