*TraitClasses-Core
instanceVariableStringFrom: instanceVariables and: className and: changes

	| instanceVars |
	changes do: #assertIncludedVariablesExistInTrait.

	instanceVars := (instanceVariables subStrings: ' ') asOrderedCollection.
	changes do: [ :inclusionDiff | instanceVars removeAllFoundIn: inclusionDiff removedVariables ].
	self assertVariablesToInclude: (changes collect: #addedVariables) flatten dontAlreadyExistIn: className or: instanceVars.
	changes do: [ :inclusionDiff | instanceVars addAll: inclusionDiff addedVariables ].
	
	^ self variableNamesStringFor: instanceVars