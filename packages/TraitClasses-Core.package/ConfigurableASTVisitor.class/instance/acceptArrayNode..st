visitor-double dispatching
acceptArrayNode: node
	
	(self invokeClient: #ArrayNode with: node)
		ifTrue: [ super acceptArrayNode: node ].