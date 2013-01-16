tests
testTraitInclusionChangesRemovedVariables

	| inclusionChanges |
	inclusionChanges := TraitInclusionChanges 
		between: self currentInclusion 
		and: self newInclusion.
	
	self assert: (inclusionChanges removedVariables includes: 'receiver').