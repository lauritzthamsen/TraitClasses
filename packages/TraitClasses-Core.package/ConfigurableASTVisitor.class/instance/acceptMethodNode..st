visitor-double dispatching
acceptMethodNode: node
	
	(self invokeClient: #MethodNode with: node)
		ifTrue: [ super acceptMethodNode: node ].