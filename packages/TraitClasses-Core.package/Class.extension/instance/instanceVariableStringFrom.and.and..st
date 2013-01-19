*TraitClasses-Core
instanceVariableStringFrom: instanceVariables and: className and: changes

	| instanceVars addedVariables |
	instanceVars := (instanceVariables subStrings: ' ') asOrderedCollection.
	
	changes do: #assertIncludedVariablesExistInTrait.
	
	changes do: [:inclusionDiff | 
		instanceVars removeAllFoundIn: inclusionDiff removedVariables ].
	
	addedVariables := (changes collect: #addedVariables) flatten.
	
	(addedVariables size > addedVariables asSet size) ifTrue: 
		[self error: 'multiple traits can''t include the same variable'].
	
	self 
		assertVariablesToInclude: addedVariables
		dontAlreadyExistIn: className 
		or: instanceVars.
	changes do: [ :inclusionDiff | instanceVars addAll: inclusionDiff addedVariables ].
	
	^ self variableNamesStringFor: instanceVars