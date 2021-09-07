/datum/chemical_reaction/recipe/food/butter
	name = "Butter"
	result = null
	mix_message = "The solution thickens and curdles into a rich yellow substance."
	minimum_temperature = 30 CELSIUS
	maximum_temperature = 140 CELSIUS
	required_reagents = list(/decl/material/liquid/drink/milk/cream = 20, /decl/material/solid/sodiumchloride = 1)
	obj_result = /obj/item/chems/food/spreads/butter
	result_amount = 1

/datum/chemical_reaction/recipe/caramelisation
	name = "Caramelised Sugar"
	result = /decl/material/liquid/nutriment/caramelsugar
	required_reagents = list(/decl/material/liquid/nutriment/sugar = 1)
	result_amount = 1
	minimum_temperature = T0C + 82
	// no maximum! i mean technically it should burn at some point but ehh
	mix_message = "The sugar melts into a sticky, brown liquid."

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