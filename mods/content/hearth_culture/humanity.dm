//DEFINES START
#define LANGUAGE_ENGLISH "English"
#define LANGUAGE_ARABIC "New Farsi"
#define LANGUAGE_SPANISH "Mexican National Standard"
#define LANGUAGE_RUSSIAN "Russian"
#define LANGUAGE_ASIAN "Pan-Asian Intermediate"
#define LANGUAGE_SPACER "Spacer"

//DEFINES END

//SPECIES OVERWRITES START

/decl/species/human
	available_cultural_info = list(
		TAG_CULTURE = list(
			/decl/cultural_info/culture/human,
			/decl/cultural_info/culture/human/mars,
			/decl/cultural_info/culture/human/venus,
			/decl/cultural_info/culture/human/spacerborn,
			/decl/cultural_info/culture/human/colony,
			/decl/cultural_info/culture/human/extrasolar,
			/decl/cultural_info/culture/human/europa,
			/decl/cultural_info/culture/human/belter,
			/decl/cultural_info/culture/human/vatgrown
		),
		TAG_HOMEWORLD = list(
			/decl/cultural_info/location/sol,
			/decl/cultural_info/location/proxima_centauri
		),
		TAG_FACTION = list(
			/decl/cultural_info/faction/humanity,
			/decl/cultural_info/faction/humanity/dysonite
		),
		TAG_RELIGION = list(
			/decl/cultural_info/religion/other,
			/decl/cultural_info/religion/jewish,
			/decl/cultural_info/religion/hindu,
			/decl/cultural_info/religion/buddhist,
			/decl/cultural_info/religion/jain,
			/decl/cultural_info/religion/sikh,
			/decl/cultural_info/religion/muslim,
			/decl/cultural_info/religion/christian,
			/decl/cultural_info/religion/bahai,
			/decl/cultural_info/religion/agnostic,
			/decl/cultural_info/religion/deist,
			/decl/cultural_info/religion/atheist,
			/decl/cultural_info/religion/thelemite,
			/decl/cultural_info/religion/spiritualism,
			/decl/cultural_info/religion/shinto,
			/decl/cultural_info/religion/taoist
		)
	)

//SPECIES OVERWRITES END

//FACTIONS START

/decl/cultural_info/faction/humanity
	name = "Other Faction"
	description = "You belong to one of the many other factions that operate in the galaxy. Numerous, too numerous to list, these factions represent a variety of interests, purposes, intents and goals."
	subversive_potential = 25

/decl/cultural_info/faction/humanity/dysonite
	name = "Dysonite"
	description = "The Dyson Hub is a burgeoning megaproject located in orbit around the Sun. As its name suggests, it is an attempt to harness the incredible power of \
	the Sun, and has been funded by a number of nations and NGOs. The project has been running since the 2150s, but as it is such a gargantuan task, the project is \
	nowhere near completion. Many scientists and engineers live here for several years, getting valuable experience and contributing to humanity in some way. \
	Similarly, it is home to a growing number of artists and wanderers, choosing to live in the Hub's residential complex and contributing to it's finances. \
	As a multinational and multicultural project, it has developed its own political system, largely considered technocratic. Highly influential scientists \
	and academics hold considerable influence, often leading to minor conflicts of interest between the civilian and scientific residents of the Hub."

//FACTIONS END

//CULTURES START

/decl/cultural_info/culture/human/
	name = "Earthborn"
	description = "You are from Earth, the dying cradle of Humanity. You are among the precious few who have managed to make it off Humanity's dying homeworld. \
	You were potentially born into affluence, bought your way off the planet through corruption, or are one of the precious skilled laborers so desperately required \
	 for Humanity's continuing expansion into the stars. Individuals from Earth tend to be somewhat unhealthy due to pollution, lingering radiation from various conflicts\
	 and potential malnutrition during childhood."
	default_language = /decl/language/human/common // formerly /decl/language/human/common, repath if it stops being hardcoded everywhere
	secondary_langs = list(
		/decl/language/human/russian,
		/decl/language/human/pan_asian,
		/decl/language/human/spanish,
		/decl/language/human/arabic,
		/decl/language/human/spacer,
		/decl/language/standard
	)

/decl/cultural_info/culture/human/mars
	name = "Marsborn"
	description = " You are from Mars, a barren and inhospitable world that has become an important colony for humanity, first settled in the mid-to-late 21st Century. \
	The planet's surface remains as lifeless as it has for millennia, with any terraforming efforts only around fifty years into a centuries long project. Instead, \
	humanity lives under massive biodome structures that keeps the air in and the deadly Martian conditions out. Though these biodomes are fitted to earth atmosphere, \
	Martians tend to suffer from a various medical issues stemming from lower gravity and higher ambient radiation levels. Most of these issues have been solved in the \
	modern day through living fit and active lifestyles, combating the 'void-waste', as the effects of low gravity have been termed.Mars is a disunited planet, comprised \
	of districts and colonies, some loyal to their Earthly benefactor, others dismissive, some owned by corporations, and a lucky few governed by themselves.  \
	To prevent any sort of conflict between the colonies, the Martial Council convene every month, serving as an intranational organisation, similar to an old UN. The \
	Martian Council has its own Secretary-General, General Assembly, Security Council, and Trans-Martian Court of Justice."

/decl/cultural_info/culture/human/venus
	name = "Venusian"
	description = "You are from Venus, a child of the small but growing population living in various aerostat habitats within the planet's atmosphere. \
	Individuals from Venus tend to be born into families with distinct scientific pedigree, given the planet's status as a scientific curiosity first and viable world\
	second. Those from Venus do not suffer the medical maladies of their martian-borne cousins, due to Venus's near-Earth gravity and extensive engineered shielding."

/decl/cultural_info/culture/human/spacerborn
	name = "Spacerborn"
	description = "You are from one of the various long-travelling ships, a station, or perhaps an orbital habitat around Sol or a planetary body. Spacers tend to be a \
	no-nonsense, hardy, but friendly folk from many different cultures who carry some degree of superstition with them at all times. Living and growing in null-gravity results in general weakness and other\
	potential health issues, and a culture that demands regular, intense physical exercise to counter the effects result in spacers generally being athletic and strong, but taller\
	than those who were born and grown under the tug of gravity."

/decl/cultural_info/culture/human/colony
	name = "Colonyborn"
	description = "You are from one of the various, unnotable colonies on bodies that orbit Sol itself. Your background may vary wildly depending on the enviroment\
	that you grew up in, the conditions of your home, and other factors."

/decl/cultural_info/culture/human/extrasolar
	name = "Exosolar"
	description = "You are from one of Humanity's early extrasolar colonies - the first of a new generation of humans born outside of Sol, unexposed to the nuances and \
	greviances of wider humanity. Those from the exosolar colonies are the descendants of Mankind's best and brightest, and tend to follow in those footsteps with a drive.\
	Keen health programs and expert colony management mean that despite the conditions of your homeworld, you are probably in good health."

/decl/cultural_info/culture/human/europa
	name = "Europan"
	description = "You are from Europa, a child one of the first generations of colonists in the early 21st century. The average Europan usually has a cautious spirit \
	bolstered by their pragmatic attitudes, they also have an affinity towards enclosed spaces, a by-product of their time spent underneath the moon's ice sheets within \
	the expansive man-made underwater habitats. Europans are typically average when it comes to general intelligence, however they excel in the fields of agriculture and \
	engineering. Health-wise Europans are healthy for the most part with the exception of often suffering from severe vitamin-D deficiency, \
	leading to them acquiring a sickly pale look."

/decl/cultural_info/culture/human/belter
	name = "Belter"
	description = "You are from one of the first major industrial colonisation efforts of Earth. Over a hundred and fifty years ago, your ancestors bravely set out from \
	the conditions of Earth and into an unknown future. Most colonies across the asteroid belt lasted only a few decades, being mined swiftly into submission, \
	with most resources being shipped away. As such, a massive diasphora has grown across the largest, and oldest of the Belter colonies, Ceres, which has become home \
	to a far reaching local government, extending its influence across almost the entire Belt. Ceres has begun a far reaching project to acquire the former corporate-owned \
	asteroid colonies, with most of them now falling under Belter influence. With the arrival of local government, these asteroid colonies have found themselves with a \
	higher quality of life, though with perhaps less personal freedoms as they did under the uncaring, profit-driven corporations."

/decl/cultural_info/culture/human/vatgrown
	name = "Vatgrown"
	description = "You are a vatgrown human, artifically grown in a tube. Vatgrowns are grown for a variety of reasons in a variety of places, ranging from colonization \
	to filling a shortage of skilled labor. Vatgrown humans are typically grown from a genetic template with desirable traits with randomly generated memories implanted \
	during gestation. Purpose-grown vatgrowns tend to be somewhat inflexible and bad at thinking outside the box, but this disappears after they gain a considerable amount of 'real' experience.\
	Vatgrown humans are sapient, ergo, they are protected under various sapient rights declarations. Vatgrowns come from a variety of places, from \
	certain companies - with some, but not all, known to use strong 'employee retention' measures on the vatborn employees they grow - to insular cultures made up mostly of vatgrowns who continue to grow new individuals \
	as a means of continuing their way of life. Vatgrowns remain a subject of considerable moral and legal strife, mostly centered around aformentioned corporations and their \
	abhorrent practices. Corporate vatgrowns are typically grown without the innate knowledge of certain skills - like cooking - but are fully capable of learning these concepts."

/decl/cultural_info/culture/human/vatgrown/get_random_name(var/mob/M, var/gender)
	return capitalize(pick(gender==FEMALE ? global.first_names_female : global.first_names_male)) + "-" + "[rand(0,9999)]"

/decl/cultural_info/culture/human/vatgrown/sanitize_name(var/new_name)
	return sanitizeName(new_name, allow_numbers = TRUE)

/decl/cultural_info/culture/human/aaronite
	name = "Aaronite"
	description = "You are from New Aaron, a planet located in Proxima Centauri. New Aaron was colonized by a generation ship owned by a group of rich religious expats \
	called the Republic of the Humble Servants of God. Largely considered strange and eccentric, many considered the mission a suicide effort on a grand scale, but money and power \
	allowed them to set off on their mission. The culture of New Aaron is widely departed from their origins on Earth, having drifted over a hundred and nineteen years. Aaronite culture is \
	very protective of women, but in a highly reversed fashion - something inhibits the birth of women, and nobody is quite sure why. Women generally are held in higher regard than men, and often \
	hold office or other important positions. Marriages are typically polygamous as well - with multiple men and one woman. Despite the cultural drift, Aaronites are known as friendly and \
	hard working folks that like to keep to themselves. New Aaron is a somewhat hostile place, however, with higher than usual radiation and heavy metal content, but it appears that \
	the population has adapted to these adverse conditions rather well."

/decl/cultural_info/culture/human/oort
	name = "Cloud-Dwellers"
	description = "You are from the Oort Cloud, situated at the very edge of the Sol System, and considered the last stop before the endless void between stars. \
	The outposts here are as varied as humanity, though separated by unimaginable distances. Any nation with a presence in space has established at least one outpost \
	here, such as the long-term research stations constructed out here, observing far-away worlds with as little obstruction as possible. Or perhaps you grew up on one of \
	the many makeshift habitats sent out here by anyone with the funds and an idea. Far from any prying eyes, these locations offer their inhabitants the ability to \
	experiment with new societies, ones that could not be tried in the more developed areas of the system. While many may have fallen prey to the rigors of living in space, \
	many more have succeeded, though few know or care. The Cloud has often been regarded as a lawless frontier, the modern Wild West. Among people who grew up here, \
	an experimental spirit can be seen, and the pursuit of novelty held in high regard."

/decl/cultural_info/culture/human/kuiper
	name = "Brinker"
	description = "You are from the Kuiper Belt, a former inhabitant of one of the variety of stations and estates established there, billions of miles away \
	from the warm rays of Sol. An asteroid field far more massive than the main Belt, it's surprisingly light on mining facilities, with a greater emphasis \
	placed on the production of organic materials and fertilizers, especially around Pluto, to support artificial ecosystems in the outer system and beyond. \
	The Belt had been host to various habitats for the ultra-wealthy, but the population swelled when many from Earth, especially from Africa, established \
	settlements to fill this logistical niche. These endeavors often failed, and left many too destitute to return home, forced to live a life of subsistence. \
	Finding communication with other stations within the Belt difficult, many inhabitants looked inward, and developed a greater connection to their fellow colonists. \
	Even when leaving it all behind, most Brinkers continue to place great amounts of trust and care into those they work alongside."

// CULTURES END

// LOCATIONS START

/decl/cultural_info/location/sol
	name = "Sol"
	description = "The Sol System is the beating heart of Humanity, serving as the cradle for the newest race to enter the galactic stage. The Sol System is largely \
	populated by Humans spread among the eight planetary bodies which orbit around the central G-Class star. Earth holds one life-bearing world, Earth, where Humanity stems from.\
	A majority of the Sol System's infrastructure is still being developed as the native species continues it's expansion into space."
	distance = null // just don't list distance from Sol for Sol
	capital = "Earth"
	economic_power = 1
	ruling_body = "ISEO"

/decl/cultural_info/location/proxima_centauri
	name = "Proxima Centauri"
	description = "Proxima Centauri was one of the first near-Sol systems to be colonized. Colonized by the Republic of the Humble Servants of God - a very large and powerful religious cooperative -  \
	via a massive generation ship launched in 2086, Proxima Centauri has the largest extrasolar human population of any of the colonized systems. Relatively untouched by events in the intervening 119 years between the colony ship's departure \
	and the invention of FTL technology, the system has surprivingly thrived but seen much cultural drift from the origins of their colony. Regardless, the Aaronite government of Alpha Centauri gladly \
	joined the ISEO as a minor member when contact was re-established."
	distance = "12"
	capital = "New Aaron"
	economic_power = 1
	ruling_body = "ISEO"

// LOCATIONS END

// LANGUAGES START

/decl/language/human/arabic
	name = LANGUAGE_ARABIC
	desc = "New Farsi was created in an afternoon by two disgruntled students in the wake of pan-iranian unification. Neither they, nor the Government that endorsed them, expected it to be so popular across the semi-cosmopolitan cities of Central Asia, nor so divisive among local cultural preservationists."
	colour = COLOR_TAN
	key = "ar"
	shorthand = "NF"
	space_chance = 35
	partial_understanding = list(
		LANGUAGE_SPACER = 20
	)
	syllables = list(
		"af", "if", "ba", "ta", "tha", "id", "jem", "ha", "kha", "dal", "dhl", "ra", "zay",
		"sen", "um", "shn", "sid", "ad", "ta", "za", "ayn", "gha", "zir", "yn", "fa", "qaf",
		"iam", "mim", "al", "ja", "non", "ha", "waw", "ya", "hem", "zah", "hml", "ks", "ini",
		"da", "ks", "iga", "ih", "la", "ulf", "xe", "ayw", "'", "-"
	)

/decl/language/human/pan_asian
	name = LANGUAGE_ASIAN
	desc = "Pan-Asian Intermediate was created as an attempt to appease everyone - and appeases none. Regardless, it is the offical language of many Asiatic states, but suffers from poor adoption rates."
	colour = COLOR_GREEN
	key = "as"
	shorthand = "PAI"
	space_chance = 30
	partial_understanding = list(
		LANGUAGE_SPACER = 20
	)
	syllables = list(
		"a", "ai", "an", "ang", "ao", "ba", "bai", "ban", "bang", "bao", "bei", "ben", "beng", "bi", "bian", "biao",
		"bie", "bin", "bing", "bo", "bu", "ca", "cai", "can", "cang", "cao", "ce", "cei", "cen", "ceng", "cha", "chai",
		"chan", "chang", "chao", "che", "chen", "cheng", "chi", "chong", "chou", "chu", "chua", "chuai", "chuan", "chuang", "chui", "chun",
		"chuo", "ci", "cong", "cou", "cu", "cuan", "cui", "cun", "cuo", "da", "dai", "dan", "dang", "dao", "de", "dei",
		"den", "deng", "di", "dian", "diao", "die", "ding", "diu", "dong", "dou", "du", "duan", "dui", "dun", "duo", "e",
		"ei", "en", "er", "fa", "fan", "fang", "fei", "fen", "feng", "fo", "fou", "fu", "ga", "gai", "gan", "gang",
		"gao", "ge", "gei", "gen", "geng", "gong", "gou", "gu", "gua", "guai", "guan", "guang", "gui", "gun", "guo", "ha",
		"hai", "han", "hang", "hao", "he", "hei", "hen", "heng", "hm", "hng", "hong", "hou", "hu", "hua", "huai", "huan",
		"huang", "hui", "hun", "huo", "ji", "jia", "jian", "jiang", "jiao", "jie", "jin", "jing", "jiong", "jiu", "ju", "juan",
		"jue", "jun", "ka", "kai", "kan", "kang", "kao", "ke", "kei", "ken", "keng", "kong", "kou", "ku", "kua", "kuai",
		"kuan", "kuang", "kui", "kun", "kuo", "la", "lai", "lan", "lang", "lao", "le", "lei", "leng", "li", "lia", "lian",
		"liang", "liao", "lie", "lin", "ling", "liu", "long", "lou", "lu", "luan", "lun", "luo", "ma", "mai", "man", "mang",
		"mao", "me", "mei", "men", "meng", "mi", "mian", "miao", "mie", "min", "ming", "miu", "mo", "mou", "mu", "na",
		"nai", "nan", "nang", "nao", "ne", "nei", "nen", "neng", "ng", "ni", "nian", "niang", "niao", "nie", "nin", "ning",
		"niu", "nong", "nou", "nu", "nuan", "nuo", "o", "ou", "pa", "pai", "pan", "pang", "pao", "pei", "pen", "peng",
		"pi", "pian", "piao", "pie", "pin", "ping", "po", "pou", "pu", "qi", "qia", "qian", "qiang", "qiao", "qie", "qin",
		"qing", "qiong", "qiu", "qu", "quan", "que", "qun", "ran", "rang", "rao", "re", "ren", "reng", "ri", "rong", "rou",
		"ru", "rua", "ruan", "rui", "run", "ruo", "sa", "sai", "san", "sang", "sao", "se", "sei", "sen", "seng", "sha",
		"shai", "shan", "shang", "shao", "she", "shei", "shen", "sheng", "shi", "shou", "shu", "shua", "shuai", "shuan", "shuang", "shui",
		"shun", "shuo", "si", "song", "sou", "su", "suan", "sui", "sun", "suo", "ta", "tai", "tan", "tang", "tao", "te",
		"teng", "ti", "tian", "tiao", "tie", "ting", "tong", "tou", "tu", "tuan", "tui", "tun", "tuo", "wa", "wai", "wan",
		"wang", "wei", "wen", "weng", "wo", "wu", "xi", "xia", "xian", "xiang", "xiao", "xie", "xin", "xing", "xiong", "xiu",
		"xu", "xuan", "xue", "xun", "ya", "yan", "yang", "yao", "ye", "yi", "yin", "ying", "yong", "you", "yu", "yuan",
		"yue", "yun", "za", "zai", "zan", "zang", "zao", "ze", "zei", "zen", "zeng", "zha", "zhai", "zhan", "zhang", "zhao",
		"zhe", "zhei", "zhen", "zheng", "zhi", "zhong", "zhou", "zhu", "zhua", "zhuai", "zhuan", "zhuang", "zhui", "zhun", "zhuo", "zi",
		"zong", "zou", "zuan", "zui", "zun", "zuo", "zu"
	)

// formerly /decl/language/human/euro, but /decl/language/human/common is hardcoded everywhere atm
/decl/language/human/common
	name = LANGUAGE_ENGLISH
	desc = "English has remained the lingua franca for a considerable portion of the world for the greater portion of a few centuries, with no signs of going away."
	speech_verb = "says"
	whisper_verb = "whispers"
	colour = COLOR_NAVY_BLUE
	key = "3"
	shorthand = "EN"
	partial_understanding = list(
		LANGUAGE_SPACER = 20
	)
	syllables = list(
		"al", "an", "ar", "as", "at", "ea", "ed", "en", "er", "es", "ha", "he", "hi", "in", "is", "it",
		"le", "me", "nd", "ne", "ng", "nt", "on", "or", "ou", "re", "se", "st", "te", "th", "ti", "to",
		"ve", "wa", "all", "and", "are", "but", "ent", "era", "ere", "eve", "for", "had", "hat", "hen", "her", "hin",
		"ch", "de", "ge", "be", "ach", "abe", "ich", "ein", "die", "sch", "auf", "aus", "ber", "che", "ent", "que",
		"ait", "les", "lle", "men", "ais", "ans", "ait", "ave", "con", "com", "des", "tre", "eta", "eur", "est",
		"ing", "the", "ver", "was", "ith", "hin"
	)

/decl/language/human/russian
	name = LANGUAGE_RUSSIAN
	desc = "Russian has remained the lingua franca for a considerable portion of the Slavic states for the greater portion of a few hundred years, and attempts to displace it with con-langs have failed."
	colour = COLOR_RED_LIGHT
	key = "4"
	shorthand = "RS"
	partial_understanding = list(
		LANGUAGE_SPACER = 20
	)
	syllables = list(
		"rus", "zem", "ave", "groz", "ski", "ska", "ven", "konst", "pol", "lin", "svy",
		"danya", "da", "mied", "zan", "das", "krem", "myka", "to", "st", "no", "na", "ni",
		"ko", "ne", "en", "po", "ra", "li", "on", "byl", "cto", "eni", "ost", "ol", "ego",
		"ver", "stv", "pro"
	)

/decl/language/human/spanish
	name = LANGUAGE_SPANISH
	desc = "Mexican National Standard, a form of standardised Spanish most similar to the dialect formerly spoken in Mexico, originated from the relative neutrality of that dialect \
	as well as its omnipresence in media, resulting in younger generations gradually adopting aspects of Mexican Spanish until it was standardised and promoted \
	under a multinational program, inspired by the English standardisation programs of Singapore and supported by a number of corporate interests. \
	It now serves as a common language for most Hispanophone countries, though some regions still show remnants of their former dialects."
	colour = COLOR_WARM_YELLOW
	key = "5"
	shorthand = "INS"
	partial_understanding = list(
		LANGUAGE_SPACER = 20
	)
	syllables = list(
		"ad", "al", "an", "ar", "as", "ci", "co", "de", "do", "el", "en", "er", "es",
		"ie", "ue", "la", "ra", "os", "nt", "te", "ar", "qu", "el", "ta", "do", "co",
		"re", "as", "on", "aci", "ada", "ado", "ant", "ara", "cio", "com", "con", "des",
		"dos", "ent", "era", "ero", "que", "ent", "nte", "est", "ado", "par", "los", "ien",
		"sta", "una", "ion", "tra", "men", "ele", "nao", "uma", "ame", "dos", "uno", "mas",
		"ndo", "nha", "ver", "voc", "uma"
	)

/decl/language/human/spacer
	name = LANGUAGE_SPACER
	desc = "A rough, informal language used infrequently by humans as a last resort when attempts to establish dialogue in more proper languages fail and no autotranslators are available."
	key = "j"
	shorthand = "SPC"
	partial_understanding = list(
		LANGUAGE_ARABIC = 25,
		LANGUAGE_SPANISH = 25,
		LANGUAGE_ENGLISH = 25,
		LANGUAGE_RUSSIAN = 25,
		LANGUAGE_ASIAN = 25
	)
	syllables = list(
		"ada", "zir", "bian", "ach", "usk", "ado", "ich", "cuan", "iga", "qing", "le", "que", "ki", "qaf", "dei", "eta"
	)
	colour = COLOR_ORANGE

// LANGUAGES END