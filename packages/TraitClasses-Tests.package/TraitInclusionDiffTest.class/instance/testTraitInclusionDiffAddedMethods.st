tests
testTraitInclusionDiffAddedMethods
	| inclusionDiff |
	inclusionDiff := TraitInclusionDiff between: self originalInclusion and: self currentInclusion.
	
	self assert: (inclusionDiff addedMethods includes: #arguments)