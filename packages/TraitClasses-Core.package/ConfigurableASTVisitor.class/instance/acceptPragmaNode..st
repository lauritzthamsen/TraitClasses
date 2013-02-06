visitor-double dispatching
acceptPragmaNode: node
	
	(self invokeClient: #PragmaNode with: node)
		ifTrue: [ super acceptPragmaNode: node ].