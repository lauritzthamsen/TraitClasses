visitor-double dispatching
acceptBlockNode: node
	
	(self invokeClient: #BlockNode with: node)
		ifTrue: [ super acceptBlockNode: node ].