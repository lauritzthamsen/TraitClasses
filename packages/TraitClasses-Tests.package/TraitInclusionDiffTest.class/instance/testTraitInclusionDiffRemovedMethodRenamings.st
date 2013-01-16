tests
testTraitInclusionDiffRemovedMethodRenamings

	| inclusionDiff |
	inclusionDiff := TraitInclusionDiff between: self originalInclusion and: self currentInclusion.
	
	self assert: (inclusionDiff removedMethodRenamings includesKey: #receiver).