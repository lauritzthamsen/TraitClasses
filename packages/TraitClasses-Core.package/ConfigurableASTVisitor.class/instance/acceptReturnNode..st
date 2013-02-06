visitor-double dispatching
acceptReturnNode: node
	
	(self invokeClient: #ReturnNode with: node)
		ifTrue: [ super acceptReturnNode: node ].