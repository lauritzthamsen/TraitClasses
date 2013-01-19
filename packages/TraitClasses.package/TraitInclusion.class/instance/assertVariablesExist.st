as yet unclassified
assertVariablesExist

	(self getTraitClass instVarNames includesAllOf: self variables)
		ifFalse: [self error: 'not every variable to include exists in class ' , self traitClassName].