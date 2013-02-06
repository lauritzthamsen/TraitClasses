as yet unclassified
assertIncludedVariablesExistInTrait

	(self getTraitClass allInstVarNames includesAllOf: self allVariablesInTraitClass)
		ifFalse: [ self error: 'not every included variable exists in trait class ' , self traitClassName ]