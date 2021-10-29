/decl/chemical_reaction/arithrazine
	name = "Arithrazine"
	result = /decl/material/liquid/antirads/arithrazine
	required_reagents = list(/decl/material/liquid/antirads = 1, /decl/material/liquid/fuel/hydrazine = 1)
	result_amount = 2

/decl/chemical_reaction/dermaline
	name = "Dermaline"
	result = /decl/material/liquid/burn_meds/dermaline
	required_reagents = list(/decl/material/liquid/acetone = 1, /decl/material/solid/phosphorus = 1, /decl/material/liquid/burn_meds = 1)
	result_amount = 3
	minimum_temperature = -150 CELSIUS
	maximum_temperature = -50 CELSIUS

/decl/chemical_reaction/oxy_meds
	result_amount = 1
	required_reagents = list(/decl/material/liquid/acetone = 1, /decl/material/liquid/acid = 0.1)
	catalysts = list(/decl/material/solid/metal/tungsten = 5)

/decl/chemical_reaction/dexalinp
	name = "Dexalin Plus"
	result = /decl/material/liquid/oxy_meds/dexalinp
	required_reagents = list(/decl/material/liquid/oxy_meds = 1, /decl/material/solid/carbon = 1, /decl/material/solid/metal/iron = 1)
	result_amount = 3

/decl/chemical_reaction/paracetamol
	name = "Paracetamol"
	result = /decl/material/liquid/painkillers/paracetamol
	required_reagents = list(/decl/material/liquid/painkillers = 1, /decl/material/liquid/nutriment/sugar = 1, /decl/material/liquid/water = 1)
	result_amount = 3

/decl/chemical_reaction/oxycodone
	name = "Oxycodone"
	result = /decl/material/liquid/painkillers/oxycodone
	required_reagents = list(/decl/material/liquid/ethanol = 1, /decl/material/liquid/painkillers = 1)
	catalysts = list(/decl/material/solid/metal/tungsten = 5)
	result_amount = 1

/decl/chemical_reaction/paroxetine
	name = "Paroxetine"
	result = /decl/material/liquid/antidepressants/paroxetine
	required_reagents = list(/decl/material/liquid/hallucinogenics = 1, /decl/material/liquid/acetone = 1, /decl/material/liquid/stabilizer = 1)
	result_amount = 3