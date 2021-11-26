//DEFINES START
#define LANGUAGE_ENGLISH "English"
#define LANGUAGE_ARABIC "New Farsi"
#define LANGUAGE_SPANISH "Mexican National Standard"
#define LANGUAGE_RUSSIAN "Russian"
#define LANGUAGE_ASIAN "Pan-Asian Intermediate"
#define LANGUAGE_SPACER "Spacer"
#define LANGUAGE_FRENCH "French"

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
			/decl/cultural_info/culture/human/forumite,
			/decl/cultural_info/culture/human/vatgrown,
			/decl/cultural_info/culture/human/aaronite,
			/decl/cultural_info/culture/human/oort,
			/decl/cultural_info/culture/human/kuiper
		),
		TAG_HOMEWORLD = list(
			/decl/cultural_info/location/sol,
			/decl/cultural_info/location/proxima_centauri,
			/decl/cultural_info/location/forum,
			/decl/cultural_info/location/human_other
		),
		TAG_FACTION = list(
			/decl/cultural_info/faction/humanity,
			/decl/cultural_info/faction/humanity/iseo,
			/decl/cultural_info/faction/humanity/ec,
			/decl/cultural_info/faction/humanity/contractor,
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

/decl/cultural_info/faction/humanity/iseo
	name = "ISEO"
	description = "You are part of the International Stellar Exploration Organization, better known as the ISEO. It is a intergovernmental project established by the \
	various nations of Earth, and responsible for the governing of the colonial worlds of Mars and Jupiter. It is at the forefront of space exploration and colonisation. \
	Much of its history has been relatively cushy, until First Contact around a generation ago. Since then, the ISEO has been steadily expanded into all parts of life, with \
	a significant powerbase in Sol.	<br><br>Maybe you're a fresh recruit, promised adventure and a plot of land in the ISEO-owned Martian district of Arcadia. Maybe you're a \
	veteran of the pre-contact days who's seen the rise of the ISEO, leading up to perhaps its most important mission yet, the Endeavour Project. Optimism runs high within the ISEO \
	and its personnel are a varied, widely divergent collection of humans, unified in the aim of an interstellar humanity."

/decl/cultural_info/faction/humanity/ec
	name = "Espatier Corps"
	description = "You are part of the Espatier Corps, also known as the EC. It is comprised of various national military units from all the member states of the ISEO, \
	specially trained to handle low and zero-G missions. It serves two roles, one as a peacekeeping mission for the various colonies under direct ISEO control, and one \
	as military police for various exploration missions, such as the Endeavour. The EC have proven themselves capable of protecting both the ISEO, and Humanity's interests, \
	such as their intervention on the side of colonists against the corporations during the Jovian Riots of the mid-60s, or bringing an end to the Martian Cold War. \
	<br><br>As a member of the Espatier Corps, your loyalty is to the ISEO primarily, and your parent nation second. Members of the Espatier Corps volunteered to be \
	part of the EC, but might not have had any say in their deployment to the Endeavour. The legacy of the EC as Humanity's United Military has attracted many new recruits \
	who outnumber veteran members almost ten to one. Those that have remained in service to the EC have been rewarded with high ranking roles onboard the Endeavour project, \
	where their skills can be put to good use."

/decl/cultural_info/faction/humanity/contractor
	name = "ISEO Civilian Branch"
	description = "You are a civilian member of the ISEO, who serves onboard the Endeavour either as a specialist in your specific field, or as a low-priority worker. You \
	are considered a member of the crew, but not technically part of the ISEO. For the duration of the mission, they are responsible for your wages, your shifts, and your \
	living space. Being a civilian has its perks however, with a much laxer uniform code, and a generally more tolerent atmosphere. However, contractors that fail to recognise \
	the authority of the ISEO, either from Command staff, or from an enlisted member of their department, will often be quietly dropped off home at the next shoreleave. Your \
	position on the Endeavour is one to be proud of, and something to brag about with your friends and family back home. But never forget there are likely a hundred other people \
	applying for your role. Be unreplacable."

//FACTIONS END

//CULTURES START

/decl/cultural_info/culture/human/
	name = "Earthborn"
	description = "You are from Earth, the scarred and battered homeworld of Humanity. Earth remains just as divided as it has ever been, with \
	many new powers taking the place of the old ones. Your parents and grandparents speak of the horrors of the Climate Catastrophe of the 21st \
	Century, and the damage it has taken is very clear no matter where you are from. However, you are also the first Earthers in a long time to \
	feel optimistic about the future, as the damage caused in the past slowly starts to heal. Earth is effectively divided into two spheres of influence, \
	the ISEO, and the Non-ISEO States (NIS). The various states of Africa are the key leaders of the ISEO's sphere, being their primary nations and effectively \
	the dominant continent on the planet. Most states on Earth are part of the ISEO, either directly contributing, or as an Observer. Some states remain outside \
	the influence of the ISEO, and lack a presence onboard the Endeavour. However, migration into ISEO territory is not uncommon, with many people fleeing \
	both North America and Europe in search of a better life in the Cradle of Civilization. <br><br> Aging Earthers will remember a time of great suffering, \
	with high child mortality rates, instability, and radioactive fallout. As such, the modern Earther effectively lives on a cocktail of gene therapy and medication, \
	which allows them to live extremely healthy lives, well into their one hundreds."
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
	modern day through living fit and active lifestyles, combating the 'void-waste', as the effects of low gravity have been termed. Mars is a disunited planet, comprised \
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
	description = "You are from Europa, a child one of the first generations of colonists in the 21st century. The average Europan is extremely tolerant of genetic alterations, \
	cautious of corporate influence, and supportive of the ISEO. They have an affinity towards enclosed spaces, and are effectively comprised of countless different Earther cultures, \
	and ethnicities that migrated to Europe in search of a better life. The Jovian Riots of the 2160s are still heavily engrained in their culture, when the Europans rose up against \
	their corporate leaders after a failed anti-radiation genetherapy treatment resulted in the accidental mutation of a large number of people. The ISEO has spent a great deal of time and money \
	helping to treat these people, and many of them have since returned the favour by becoming part of the ISEO. <br><br>Europan culture is best described as reminiscent of 1960s West Germany, with \
	a widespread synthwave movement and a rejection of tradition. They wear bright colours, play strange music, and stay out all night partying. They are the first generation to live \
	without a Corporation breathing down their neck, and they live it to the fullest."

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

/decl/cultural_info/culture/human/forumite
	name = "Forumite"
	description = "You are a Forumite, from the alien world of Forum. Your family moved here some time after first contact, either as part of the Human ambassador mission,\
	or as an immigrant to the planet's growing Human District. Forum, also known as Fahzi to the Unathi, Qoloc’ux to the Skrell, and Ashragi to the Tajaran, is home to the \
	Galactic Community, where the many nations of the Milky Way have gathered to conduct diplomatic business. Some of these species do not yet have treaties with Humanity, \
	making Forum a unique sight to many Human visitors. The Humans on Forum have begun to slowly diverge from their original cultures, with some having adopted the traditions \
	of the various aliens they now rub shoulders with. Forum is a xenophilic melting pot, with new fashions, music, and cuisine invented almost every day."

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

/decl/cultural_info/location/forum
	name = "Forum"
	description = "Forum, also known as Fahzi to the Unathi, Qoloc’ux to the Skrell, and Ashragi to the Tajaran, is a colonised world around 32 light years from Earth. It was first colonised \
	by the Unathi roughly 150 years ago and has since grown to become the capital of the Galactic Community, home to many species that inhabit the Milky Way. Humans first arrived here some years \
	after first contact, and many decided to stay, finding its xenophilic and tolerant nature more welcoming than Sol. Its largest city, also called Forum, has a sizeable Human District, and is \
	the location of the ISEO's Embassy to the other members of the Galactic Community. It is here that its various ambassadors to the Skrell, Unathi, and Tajaran reside."
	distance = "32"
	capital = "Forum"
	economic_power = 1
	ruling_body = "Galactic Community"

/decl/cultural_info/location/human_other
	name = "Other"
	description = "Since the first generation ships were launched almost one hundred years ago, people have been born far out in the voids of space. Being almost entirely self-sustaining, the \
	people living out here often go entirely undetected, with their existence unknown by the greater Human community. With the advent of FTL travel a generation ago, some of these vessels have \
	been reintergrated into Humanity, having developed divergent and strange cultures while in extreme isolation."
	distance = "N/a"
	capital = "N/a"
	economic_power = 1
	ruling_body = "N/a"

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

/decl/language/human/french
	name = LANGUAGE_FRENCH
	desc = "The French language has existed for hundreds of years, becoming the Lingua Franca of much of Western Africa during the late 21st Century. It is considered the dominant language of \
	the ISEO, alongside English."
	colour = COLOR_BLUE
	key = "fr"
	shorthand = "FR"
	space_chance = 20
	partial_understanding = list(
		LANGUAGE_ENGLISH = 20
	)
	syllables = list(
		"al", "an", "ar", "as", "at", "ea", "ed", "en", "et", "es", "ha", "he", "hi", "in", "is", "it",
		"le", "me", "nd", "ne", "ng", "nt", "on", "or", "ou", "re", "se", "st", "te", "th", "ti", "to",
		"ve", "wa", "all", "and", "cou", "but", "ent", "era", "fou", "eve", "for", "had", "zou", "hen", "her", "hin",
		"ch", "de", "ge", "be", "vous", "abe", "ich", "ein", "die", "gnou", "pou", "tout", "ber", "che", "ent", "que",
		"ait", "les", "lle", "men", "ais", "ans", "mou", "ave", "con", "com", "des", "tre", "eta", "eur", "est",
		"ing", "the", "ver", "was", "ith", "nous"
	)

// LANGUAGES END