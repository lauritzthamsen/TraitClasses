*TraitClasses
assertVariablesToIncludeDontAlreadyExist: traitInclusions

	| variablesToInclude |
	variablesToInclude := traitInclusions flatCollect: #variables.
	
	self allInstVarNames includesAnyOf: variablesToInclude 

"	error: 'a variable to include is already present in ', t]."