as yet unclassified
assertIncludedVariablesExistInTrait

	(self getTraitClass instVarNames includesAllOf: self allVariables)
		ifFalse: [ self error: 'not every included variable exists in trait class ' , self traitClassName ]