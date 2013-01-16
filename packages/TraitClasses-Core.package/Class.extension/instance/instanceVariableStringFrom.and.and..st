*TraitClasses-Core
instanceVariableStringFrom: instanceVariables and: className and: diffs

	| instanceVars |
	diffs do: #assertIncludedVariablesExistInTrait.

	instanceVars := (instanceVariables subStrings: ' ') asOrderedCollection.
	diffs do: [ :inclusionDiff | instanceVars removeAllFoundIn: inclusionDiff removedVariables ].
	self assertVariablesToInclude: (diffs collect: #addedVariables) flatten dontAlreadyExistIn: className or: instanceVars.
	diffs do: [ :inclusionDiff | instanceVars addAll: inclusionDiff addedVariables ].
	
	^ self variableNamesStringFor: instanceVars