visitor-double dispatching
acceptPatternBlockNode: node
	
	(self invokeClient: #PatternBlockNode with: node)
		ifTrue: [ super acceptPatternBlockNode: node ].