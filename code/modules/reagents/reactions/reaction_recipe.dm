/datum/chemical_reaction/recipe/soysauce
	name = "Vinegar Soy Sauce"
	result = /decl/material/liquid/nutriment/soysauce
	required_reagents = list(/decl/material/liquid/drink/milk/soymilk = 5, /decl/material/liquid/nutriment/vinegar = 5)
	result_amount = 10
	mix_message = "The solution settles into a glossy black sauce."

/datum/chemical_reaction/recipe/soysauce_acid
	name = "Acid Soy Sauce"
	result = /decl/material/liquid/nutriment/soysauce
	required_reagents = list(/decl/material/liquid/drink/milk/soymilk = 4, /decl/material/liquid/acid = 1)
	result_amount = 5
	mix_message = "The solution settles into a glossy black sauce."

/datum/chemical_reaction/recipe/ketchup
	name = "Ketchup"
	result = /decl/material/liquid/nutriment/ketchup
	required_reagents = list(/decl/material/liquid/drink/juice/tomato = 2, /decl/material/liquid/water = 1, /decl/material/liquid/nutriment/sugar = 1)
	result_amount = 4
	mix_message = "The solution thickens into a sweet-smelling red sauce."

/datum/chemical_reaction/recipe/banana_cream
	name = "Banana Cream"
	result = /decl/material/liquid/nutriment/banana_cream
	catalysts = list(/decl/material/liquid/enzyme = 5)
	required_reagents = list(/decl/material/liquid/drink/juice/banana = 2, /decl/material/liquid/drink/milk/cream = 1)
	result_amount = 3
	mix_message = "The solution thickens into a creamy banana-scented substance."

/datum/chemical_reaction/recipe/barbecue
	name = "Barbecue Sauce"
	result = /decl/material/liquid/nutriment/barbecue
	required_reagents = list(/decl/material/liquid/nutriment/ketchup = 2, /decl/material/solid/blackpepper = 1, /decl/material/solid/mineral/sodiumchloride = 1)
	result_amount = 4
	mix_message = "The solution thickens into a sweet-smelling brown sauce."

/datum/chemical_reaction/recipe/garlicsauce
	name = "Garlic Sauce"
	result = /decl/material/liquid/nutriment/garlicsauce
	required_reagents = list(/decl/material/liquid/drink/juice/garlic = 1, /decl/material/liquid/nutriment/cornoil = 1)
	result_amount = 2
	mix_message = "The solution thickens into a creamy white oil."

//batter reaction as food precursor, for things that don't use pliable dough precursor.
/datum/chemical_reaction/recipe/batter
	name = "Batter"
	result = /decl/material/liquid/nutriment/batter
	required_reagents = list(/decl/material/liquid/nutriment/protein/egg = 3, /decl/material/liquid/nutriment/flour = 5, /decl/material/liquid/drink/milk = 5)
	result_amount = 10
	mix_message = "The solution thickens into a glossy batter."

/datum/chemical_reaction/recipe/cakebatter
	name = "Cake Batter"
	result = /decl/material/liquid/nutriment/batter/cakebatter
	required_reagents = list(/decl/material/liquid/nutriment/sugar = 1, /decl/material/liquid/nutriment/batter = 2)
	result_amount = 3
	mix_message = "The sugar lightens the batter and gives it a sweet smell."

/datum/chemical_reaction/recipe/soybatter
	name = "Vegan Batter"
	result = /decl/material/liquid/nutriment/batter
	required_reagents = list(/decl/material/liquid/nutriment/plant_protein = 3, /decl/material/liquid/nutriment/flour = 5, /decl/material/liquid/drink/milk = 5)
	result_amount = 10
	mix_message = "The solution thickens into a glossy batter."

/datum/chemical_reaction/recipe/vinegar
	name = "Apple Vinegar"
	result = /decl/material/liquid/nutriment/vinegar
	required_reagents = list(/decl/material/liquid/drink/juice/apple = 10)
	catalysts = list(/decl/material/liquid/enzyme = 5)
	result_amount = 10
	mix_message = "The solution roils as it rapidly ferments into a sharp-smelling liquid."

/datum/chemical_reaction/recipe/vinegar2
	name = "Clear Vinegar"
	result = /decl/material/liquid/nutriment/vinegar
	required_reagents = list(/decl/material/liquid/ethanol = 10)
	catalysts = list(/decl/material/liquid/enzyme = 5)
	result_amount = 10
	mix_message = "The solution roils as it rapidly ferments into a sharp-smelling liquid."

/datum/chemical_reaction/recipe/mayo
	name = "Vinegar Mayo"
	result = /decl/material/liquid/nutriment/mayo
	required_reagents = list(/decl/material/liquid/nutriment/vinegar = 5, /decl/material/liquid/nutriment/protein/egg = 5)
	result_amount = 10
	mix_message = "The solution thickens into a glossy, creamy substance."

/datum/chemical_reaction/recipe/mayo2
	name = "Lemon Mayo"
	result = /decl/material/liquid/nutriment/mayo
	required_reagents = list(/decl/material/liquid/drink/juice/lemon = 5, /decl/material/liquid/nutriment/protein/egg = 5)
	result_amount = 10
	mix_message = "The solution thickens into a glossy, creamy substance."

/datum/chemical_reaction/recipe/hot_ramen
	name = "Hot Ramen"
	result = /decl/material/liquid/drink/hot_ramen
	required_reagents = list(/decl/material/liquid/water = 1, /decl/material/liquid/drink/dry_ramen = 3)
	result_amount = 3
	mix_message = "The noodles soften in the hot water, releasing savoury steam."
	hidden_from_codex = TRUE

/datum/chemical_reaction/recipe/hell_ramen
	name = "Hell Ramen"
	result = /decl/material/liquid/drink/hell_ramen
	required_reagents = list(/decl/material/liquid/capsaicin = 1, /decl/material/liquid/drink/hot_ramen = 6)
	result_amount = 6
	mix_message = "The broth of the noodles takes on a hellish red gleam."
	hidden_from_codex = TRUE

/datum/chemical_reaction/recipe/chazuke
	name = "Chazuke"
	result = /decl/material/liquid/nutriment/rice/chazuke
	required_reagents = list(/decl/material/liquid/nutriment/rice = 10, /decl/material/liquid/drink/tea/green = 1)
	result_amount = 10
	mix_message = "The tea mingles with the rice."

/datum/chemical_reaction/recipe/caramelisation
	name = "Caramelised Sugar"
	result = /decl/material/liquid/nutriment/caramelsugar
	required_reagents = list(/decl/material/liquid/nutriment/sugar = 1)
	result_amount = 1
	minimum_temperature = T0C + 82
	// no maximum! i mean technically it should burn at some point but ehh
	mix_message = "The sugar melts into a sticky, brown liquid."

/datum/chemical_reaction/recipe/caramelsauce
	name = "Caramel Sauce"
	result = /decl/material/liquid/nutriment/caramelsauce
	required_reagents = list(/decl/material/liquid/nutriment/caramelsugar = 2, /decl/material/liquid/drink/milk/cream = 1, /decl/material/liquid/drink/syrup_base = 2)
	result_amount = 5
	mix_message = "The solution thickens into a glossy, brown sauce."
	maximum_temperature = T0C + 82 // You don't want the syrup to crystallise/caramelise; that'd just make more caramel...

/datum/chemical_reaction/recipe/simplesyrup
	name = "Simple Syrup"
	result = /decl/material/liquid/drink/syrup_base
	required_reagents = list(/decl/material/liquid/nutriment/sugar = 2, /decl/material/liquid/water = 1) // rich simple syrup, technically, but still
	result_amount = 3
	minimum_temperature = T20C + 10
	maximum_temperature = T0C + 82 // Sugar caramelises after this point.
	mix_message = "The sugar dissolves into the solution."

/datum/chemical_reaction/recipe/caramelsyrup
	name = "Caramel Syrup"
	result = /decl/material/liquid/drink/syrup/caramel
	required_reagents = list(/decl/material/liquid/nutriment/caramelsugar = 2, /decl/material/liquid/drink/syrup_base = 3)
	result_amount = 5
	mix_message = "The solution takes on a light brown hue and the aroma of caramel."

/datum/chemical_reaction/recipe/chocosyrup
	name = "Chocolate Syrup"
	result = /decl/material/liquid/drink/syrup/chocolate
	required_reagents = list(/decl/material/liquid/nutriment/coco = 2, /decl/material/liquid/drink/syrup_base = 3)
	result_amount = 5
	mix_message = "The solution takes on a brown hue and the aroma of chocolate."

/datum/chemical_reaction/recipe/pumpkinsyrup
	name = "Pumpkin Spice Syrup"
	result = /decl/material/liquid/drink/syrup/pumpkin
	required_reagents = list(/decl/material/liquid/drink/juice/pumpkinpulp = 2, /decl/material/liquid/drink/syrup_base = 3)
	result_amount = 5
	mix_message = "The solution takes on an orange hue and the aroma of pumpkin spice."