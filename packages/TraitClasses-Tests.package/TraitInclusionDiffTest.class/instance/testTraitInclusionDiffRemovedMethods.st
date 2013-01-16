tests
testTraitInclusionDiffRemovedMethods

	| inclusionDiff |
	inclusionDiff := TraitInclusionDiff between: self originalInclusion and: self currentInclusion.
	
	self assert: (inclusionDiff removedMethods includes: #receiver).