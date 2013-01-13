as yet unclassified
createErroneousTestClassAddingSelectors: additionalSelectors
	
	| selectors |
	selectors := {#name} , additionalSelectors.
	[ self createTestClassIncluding: {(#TraitClassesExampleTraitClass selectors: selectors )} ]
		on: Error
		do: [ "nothing" ]