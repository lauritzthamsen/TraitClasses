accessing
setVariables: variables

	variables do: [:each |
		each isExistingVariableName 
			ifTrue: [self existingVariables add: each variableName]
			ifFalse: [self variables add: each]].