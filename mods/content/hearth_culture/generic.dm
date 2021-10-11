//LANGUAGES START
/decl/language/generic/standard
	name = "Galactic Trade Standard"
	desc = "Galactic Trade Standard is the working language of the larger galaxy - consisting of sounds that most species can produce. The language is periodically updated as new species are introduced to the galactic community."
	shorthand = "GTS"
	space_chance = 40
	syllables = list(
		"za", "az", "ze", "ez", "zi", "iz", "zo", "oz", "zu", "uz", "zs", "sz",
		"ha", "ah", "he", "eh", "hi", "ih", "ho", "oh", "hu", "uh", "hs", "sh",
		"la", "al", "le", "el", "li", "il", "lo", "ol", "lu", "ul", "ls", "sl",
		"qr","qrr","xuq","qil","quum","xuqm","vol","xrim","zaoo","qu-uu","qix",
		"qoo","zix","hs","zt","kr","st","sh","mrr","rr","tajr","kir","raj","kii",
		"mir","kra","ahk","nal","vah","khaz","jri","ran","darr","mi","jri","dynh",
		"manq","rhe","zar","rrhaz","kal","chur","eech","thaa","dra","jurl","mah",
		"sanu","dra","ii'r"
	)

/decl/language/generic/standard/can_be_spoken_properly_by(var/mob/living/speaker)
	if(istype(speaker) && speaker.isSynthetic())
		return TRUE
	else if(ishuman(speaker))
		var/mob/living/carbon/human/H = speaker
		if(H.species.name == SPECIES_HUMAN)
			for(var/obj/item/organ/external/E in H.organs)
				if(locate(/obj/item/implant/galactic_standard) in E.implants)
					return TRUE
		else
			return TRUE
	return FALSE

/decl/language/generic/standard/muddle(var/message)
	return stars_no_html(message, 70)
	
//LANGUAGES END