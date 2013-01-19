tests
testTraitInclusionChangesAddedMethods

	| inclusionChanges |
	inclusionChanges := TraitInclusionChanges 
		between: self currentInclusion 
		and: self newInclusion.
	
	self assert: (inclusionChanges addedMethods includes: #arguments)