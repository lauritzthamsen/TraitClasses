visiting
visitArgument: node
	"Note -- we invoke accept* on the client, instead of visit*"
	
	(self invokeClient: #Argument with: node)
		ifTrue: [ super visitArgument: node ].