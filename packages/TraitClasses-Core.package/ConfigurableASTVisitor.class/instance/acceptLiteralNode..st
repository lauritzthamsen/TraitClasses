visitor-double dispatching
acceptLiteralNode: node
	
	(self invokeClient: #LiteralNode with: node)
		ifTrue: [ super acceptLiteralNode: node ].