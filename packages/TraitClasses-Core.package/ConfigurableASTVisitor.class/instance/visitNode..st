visiting
visitNode: node
	"Note -- we invoke accept* on the client, instead of visit*"
	
	(self invokeClient: #Node with: node)
		ifTrue: [ super visitNode: node ].