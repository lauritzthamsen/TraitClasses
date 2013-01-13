*TraitClasses
selectors: anArrayOfSelectors protocols: anArrayOfProtocolNames

	^ self -> (anArrayOfSelectors , (self methodsInProtocols: anArrayOfProtocolNames))