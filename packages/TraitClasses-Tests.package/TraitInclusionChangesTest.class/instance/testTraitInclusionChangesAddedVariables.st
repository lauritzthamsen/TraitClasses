tests
testTraitInclusionChangesAddedVariables

	| inclusionChanges |
	inclusionChanges := TraitInclusionChanges 
		between: self currentInclusion 
		and: self newInclusion.
	
	self assert: (inclusionChanges addedVariables includes: 'arguments').