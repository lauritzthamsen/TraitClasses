tests
testTraitInclusionDiffRemovedVariables

	| inclusionDiff |
	inclusionDiff := TraitInclusionDiff between: self originalInclusion and: self currentInclusion.
	
	self assert: (inclusionDiff removedVariables includes: 'receiver').