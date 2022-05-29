/obj/item/documents/exa
	name = "secret exploration documents"
	desc = "\"Top Secret\" government documents, filled with starcharts and information on the native lifeforms you've encountered. It seems like they're going to sell your discoveries to the highest bidder."
	description_antag = "A conglomerate of powerful corporations is vying to create an independent power free of government regulation, according to these papers and the money trail."
	icon_state = "docs_blue"

/obj/item/documents/research
	name = "secret research documents"
	desc = "\"Top Secret\" research documents, filled with complex diagrams, research procedures, and details on the ship's experimental faster-than-light drive. It appears to explain that the drive is based off an alien version."
	description_antag = "The ship's FTL drive is incredibly advanced, easily two decades beyond commercially avaliable technology. You could make a pretty penny with these."
	icon_state = "docs_generic"

/obj/item/documents/engineering
	name = "secret engineering blueprints"
	desc = "\"Top Secret\" engineering blueprints, filled with diagrams, design specifications, and material rosters used in the construction of the ISEO Endeavour."
	description_antag = "The blueprints for the ISEO Endeavour are extremely tightly kept and would sell for a considerable amount of money to the right person."
	icon_state = "docs_blue"

/obj/item/documents/mining
	name = "secret mineral assays"
	desc = "\"Top Secret\" mineral compositions and ore yield estimations for the planets the ship has visited so far. It appears that the ISEO is assigning a value to every planetary body."
	description_antag = "Private entities have made multiple claims on the planets in this sector, with multiple massive mineral congolmerates claiming huge portions of the sector."
	icon_state = "docs_blue"

/obj/random/documents/spawn_choices()
	return list(/obj/item/documents, /obj/item/documents/exa, /obj/item/documents/research, /obj/item/documents/engineering, /obj/item/documents/mining)
