as yet unclassified
sourceForSelector: aSelector

	| compiledMethod |
	compiledMethod := (Smalltalk classNamed: self traitClassName) >> aSelector.
	
	^ (self methodRenamings includesKey: aSelector) 
		ifTrue: [compiledMethod getSourceWithRenamedSelector: 
				(self methodRenamings at: aSelector)]  
		ifFalse: [compiledMethod getSource]