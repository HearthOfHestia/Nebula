/decl/chemical_reaction/recipe/food/butter
	name = "Butter"
	result = null
	mix_message = "The solution thickens and curdles into a rich yellow substance."
	minimum_temperature = 30 CELSIUS
	maximum_temperature = 140 CELSIUS
	required_reagents = list(/decl/material/liquid/drink/milk/cream = 20, /decl/material/solid/sodiumchloride = 1)
	result_amount = 1

/decl/chemical_reaction/recipe/food/butter/on_reaction(var/datum/reagents/holder, var/created_volume)
	var/location = holder.my_atom.loc
	if(!location)
		return
	for(var/i in 1 to created_volume)
		var/obj/item/chems/food/spreads/butter/newbutter = new()
		newbutter.dropInto(location)
	return