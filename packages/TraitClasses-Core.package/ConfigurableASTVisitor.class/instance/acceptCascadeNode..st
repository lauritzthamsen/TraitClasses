visitor-double dispatching
acceptCascadeNode: node
	
	(self invokeClient: #CascadeNode with: node)
		ifTrue: [ super acceptCascadeNode: node ].