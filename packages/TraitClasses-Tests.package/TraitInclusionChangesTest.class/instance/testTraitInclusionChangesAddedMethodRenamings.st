tests
testTraitInclusionChangesAddedMethodRenamings

	| inclusionChanges |
	inclusionChanges := TraitInclusionChanges 
		between: self currentInclusion 
		and: self newInclusion.
	
	self assert: (inclusionChanges addedMethodRenamings includesKey: #arguments).