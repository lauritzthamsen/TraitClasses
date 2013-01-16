*TraitClasses-Core
assertVariablesToInclude: variablesToInclude dontAlreadyExistIn: className or: variables

	((self allInstVarNames includesAnyOf: variablesToInclude) or:
	[variablesToInclude includesAnyOf: variables])
		ifTrue: [self error: 'a variable to include is already present in ', className]. 