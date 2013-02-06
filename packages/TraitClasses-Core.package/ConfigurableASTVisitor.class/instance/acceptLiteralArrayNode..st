visitor-double dispatching
acceptLiteralArrayNode: node
	
	(self invokeClient: #LiteralArrayNode with: node)
		ifTrue: [ super acceptLiteralArrayNode: node ].