as yet unclassified
addedVariables

	^ (self newInclusion nonRenamedVariables copyWithoutAll: self currentInclusion nonRenamedVariables),
		(self addedVariableRenamings values copyWithoutAll: self newInclusion existingVariables),
		(self changedVariableRenamings values copyWithoutAll: self newInclusion existingVariables)