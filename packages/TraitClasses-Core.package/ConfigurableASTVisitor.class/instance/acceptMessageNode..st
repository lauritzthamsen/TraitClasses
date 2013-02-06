visitor-double dispatching
acceptMessageNode: node
	
	(self invokeClient: #MessageNode with: node)
		ifTrue: [ super acceptMessageNode: node ].