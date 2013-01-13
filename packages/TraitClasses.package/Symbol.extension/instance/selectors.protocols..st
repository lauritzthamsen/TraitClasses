*TraitClasses
selectors: anArrayOfSelectors protocols: anArrayOfProtocolNames

	^ self selectors: (anArrayOfSelectors , (self methodsInProtocols: anArrayOfProtocolNames))