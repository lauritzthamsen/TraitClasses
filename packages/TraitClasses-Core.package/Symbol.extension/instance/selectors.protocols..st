*TraitClasses-Core
selectors: anArrayOfSelectors protocols: anArrayOfProtocolNames

	^ self selectors: (anArrayOfSelectors , (self methodsInProtocols: anArrayOfProtocolNames))