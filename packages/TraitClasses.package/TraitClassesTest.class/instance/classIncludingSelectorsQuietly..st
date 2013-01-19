as yet unclassified
classIncludingSelectorsQuietly: selectors 

	^ [self classIncluding: {(self class exampleTraitClassName selectors: selectors)}] 
		on: Error 
		do: ["nothing"]