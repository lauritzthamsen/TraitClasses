*TraitClasses-Core
printVariablesOf: inclusion on: aStream

	aStream nextPutAll: ' variables: {'.
	inclusion variables 
		do: [:variable |
			aStream nextPutAll: '#', variable.
			(inclusion variableRenamings includesKey: variable)
				ifTrue: [aStream nextPutAll: ' -> #', (inclusion variableRenamings at: variable)]]
			separatedBy: [aStream nextPutAll:  '. '].
	inclusion existingVariables 
		do: [:variable |
			aStream nextPutAll: '(#', variable.
			(inclusion variableRenamings includesKey: variable)
				ifTrue: [aStream nextPutAll: ' -> #', (inclusion variableRenamings at: variable)]]
			separatedBy: [aStream nextPutAll:  ') useExisting. '].
	aStream nextPutAll: '}'.    