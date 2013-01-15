*TraitClasses-Core
assertVariablesToIncludeFrom: traitInclusions dontAlreadyExistIn: className or: variablesString

	| variablesToInclude |
	variablesToInclude := traitInclusions flatCollect: #variables.
	((self allInstVarNames includesAnyOf: variablesToInclude) or:
	[variablesToInclude anySatisfy: [:each | variablesString includesSubString: each]])
		ifTrue: [self error: 'a variable to include is already present in ', className]. 