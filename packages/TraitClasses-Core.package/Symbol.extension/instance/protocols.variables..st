*TraitClasses-Core
protocols: anArrayOfProtocolNames variables: anArrayOfVariableNames

	^ self 
		selectors: (self methodsInProtocols: anArrayOfProtocolNames)
		variables: anArrayOfVariableNames