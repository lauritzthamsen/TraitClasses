tests
testTraitInclusionDiffAddedVariables

	| inclusionDiff |
	inclusionDiff := TraitInclusionDiff between: self originalInclusion and: self currentInclusion.
	
	self assert: (inclusionDiff addedVariables includes: 'arguments').