as yet unclassified
changedVariableRenamings

	| commonRenamings |
	commonRenamings := self currentInclusion variableRenamings keys intersection:   
		self newInclusion variableRenamings keys.
	^ Dictionary newFrom: (commonRenamings 
		select: [:renamedVariable |
			(self currentInclusion variableRenamings at: renamedVariable) 
			~= (self newInclusion variableRenamings at: renamedVariable)]
		thenCollect: [:renamedVariable |
			(self currentInclusion variableRenamings at: renamedVariable) 
			-> (self newInclusion variableRenamings at: renamedVariable)]).