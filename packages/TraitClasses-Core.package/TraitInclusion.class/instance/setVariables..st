accessing
setVariables: variables

	variables do: [:each |
		each isExistingVariableName
			ifTrue: [
				each isRenaming 
					ifTrue: [
						self variableRenamings at: each variableName put: each renamedVariableName.
						self existingVariables add: each renamedVariableName ]
					ifFalse: [
						self existingVariables add: each variableName ]]
			ifFalse: [
				 (each isKindOf: Association) 
					ifTrue: [
						self variables add: each key.
						self variableRenamings at: each key put: each value]
					ifFalse: [self variables add: each]]].