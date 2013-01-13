as yet unclassified
assertVariablesExist

	((Smalltalk classNamed: self traitClassName) instVarNames includesAllOf: self variables) 
		ifFalse: [self error: 'not every variable to include exists in class ', self traitClassName].