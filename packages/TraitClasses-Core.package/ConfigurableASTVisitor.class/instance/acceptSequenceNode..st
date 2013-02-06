visitor-double dispatching
acceptSequenceNode: node
	
	(self invokeClient: #SequenceNode with: node)
		ifTrue: [ super acceptSequenceNode: node ].