visitor-double dispatching
acceptPatternWrapperBlockNode: node
	
	(self invokeClient: #PatternWrapperBlockNode with: node)
		ifTrue: [ super acceptPatternWrapperBlockNode: node ].