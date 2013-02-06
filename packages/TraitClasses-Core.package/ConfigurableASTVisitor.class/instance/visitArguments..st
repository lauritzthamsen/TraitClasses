visiting
visitArguments: node
	"Note -- we invoke accept* on the client, instead of visit*"
	
	(self invokeClient: #Arguments with: node)
		ifTrue: [ super visitArguments: node ].