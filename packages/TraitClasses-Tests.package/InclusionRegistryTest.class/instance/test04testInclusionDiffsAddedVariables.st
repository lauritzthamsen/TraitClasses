tests
test04testInclusionDiffsAddedVariables
	
	| testClass newInclusion diffs |
	testClass := self classWithMethodAndVariable.
	newInclusion := self traitInclusionWithTwoOtherMethodsAndNoVariable.
	diffs := InclusionRegistry current inclusionDiffsForClass: self class defaultClassName with: {newInclusion}.
	
	self assert: (diffs collect: #addedVariables) flatten isEmpty.