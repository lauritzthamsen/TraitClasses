tests
testTraitInclusionChangesRemovedMethodRenamings

	| inclusionChanges |
	inclusionChanges := TraitInclusionChanges 
		between: self currentInclusion 
		and: self newInclusion.
	
	self assert: (inclusionChanges removedMethodRenamings includesKey: #receiver).