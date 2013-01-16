tests
testTraitInclusionDiffAddedMethodRenamings

	| inclusionDiff |
	inclusionDiff := TraitInclusionDiff between: self originalInclusion and: self currentInclusion.
	
	self assert: (inclusionDiff addedMethodRenamings includesKey: #arguments).