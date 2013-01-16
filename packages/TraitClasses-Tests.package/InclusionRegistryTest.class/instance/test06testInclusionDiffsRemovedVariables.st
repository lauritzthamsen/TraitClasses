tests
test06testInclusionDiffsRemovedVariables
	
	| testClass newInclusion diffs |
	testClass := self classWithMethodAndVariable.
	newInclusion := self traitInclusionWithTwoOtherMethodsAndNoVariable.
	diffs := InclusionRegistry current inclusionDiffsForClass: self class defaultClassName with: {newInclusion}.
	
	self assert: ((diffs collect: #removedVariables) flatten includesAllOf: {#exampleVariable}).