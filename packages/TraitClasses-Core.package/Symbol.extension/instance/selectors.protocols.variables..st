*TraitClasses-Core
selectors: anArrayOfSelectors protocols: anArrayOfProtocolNames variables: anArrayOfVariableNames

	^ self 
		selectors: (anArrayOfSelectors , (self methodsInProtocols: anArrayOfProtocolNames))
		variables: anArrayOfVariableNames