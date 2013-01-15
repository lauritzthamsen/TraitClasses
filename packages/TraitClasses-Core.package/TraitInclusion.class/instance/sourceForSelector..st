as yet unclassified
sourceForSelector: aSelector

	| compiledMethod |
	compiledMethod := self getTraitClass >> aSelector.
	
	^ (self methodRenamings includesKey: aSelector) 
		ifTrue: [compiledMethod getSourceWithRenamedSelector: 
				(self methodRenamings at: aSelector)]  
		ifFalse: [compiledMethod getSource]