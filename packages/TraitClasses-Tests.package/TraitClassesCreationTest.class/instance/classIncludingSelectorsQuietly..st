as yet unclassified
classIncludingSelectorsQuietly: selectors 

	^ [self classIncluding: {(#TraitClassesExampleTraitClass selectors: selectors)}] 
		on: Error 
		do: ["nothing"]