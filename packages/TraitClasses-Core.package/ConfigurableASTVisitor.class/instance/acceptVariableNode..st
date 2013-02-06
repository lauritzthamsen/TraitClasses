visitor-double dispatching
acceptVariableNode: node
	
	(self invokeClient: #VariableNode with: node)
		ifTrue: [ super acceptVariableNode: node ].