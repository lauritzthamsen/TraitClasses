*TraitClasses-Core
instanceVariableStringFrom: instanceVariables and: className and: changes

	| instanceVars allInstanceVariableNames addedVariables |
	instanceVars := ((instanceVariables subStrings: ' ') asOrderedCollection
		copyWithoutAll: (changes flatCollect: #removedVariables)).
	
	changes do: #assertIncludedVariablesExistInTrait.
	
	allInstanceVariableNames := instanceVars, self allInstVarNames.
	
	(allInstanceVariableNames includesAllOf: (changes flatCollect: #existingVariables))
		ifFalse: [self error: 'some used variables do not exist in target class'].
	
	addedVariables := changes flatCollect: #addedVariables.
	
	(addedVariables size > addedVariables asSet size) ifTrue: 
		[self error: 'multiple traits can''t include the same variable'].
	
	self 
		assertVariablesToInclude: addedVariables
		dontAlreadyExistIn: className 
		or: instanceVars.
		
	changes do: [:inclusionDiff | 
		instanceVars addAll: inclusionDiff newInclusion addedVariables ].
	^ self variableNamesStringFor: instanceVars