as yet unclassified
createErroneousTestClassAddingSelectors: additionalSelectors
	[ self createTestClassIncludingSelectors: ({#name} , additionalSelectors) ]
		on: Error
		do: [ "nothing" ]