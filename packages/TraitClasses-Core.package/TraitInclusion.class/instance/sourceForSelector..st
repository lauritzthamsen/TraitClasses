as yet unclassified
sourceForSelector: aSelector

	| compiledMethod parseTree |
	compiledMethod := self getTraitClass >> aSelector.
	parseTree := compiledMethod parseTree.
	
	(self methodRenamings includesKey: aSelector) 
		ifTrue: [self 
				renameSelectorOf: parseTree 
				to: (self methodRenamings at: aSelector)].
			
	self renameVariableReferencesOf: parseTree.
	
	^ parseTree newSource