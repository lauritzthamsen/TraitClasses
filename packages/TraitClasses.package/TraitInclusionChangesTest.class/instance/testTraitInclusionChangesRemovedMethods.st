tests
testTraitInclusionChangesRemovedMethods

	| inclusionChanges |
	inclusionChanges := TraitInclusionChanges 
		between: self currentInclusion 
		and: self newInclusion.
	
	self assert: (inclusionChanges removedMethods includes: #receiver).