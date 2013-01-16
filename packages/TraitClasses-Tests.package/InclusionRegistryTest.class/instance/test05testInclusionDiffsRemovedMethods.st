tests
test05testInclusionDiffsRemovedMethods

	| testClass newInclusion diffs |
	testClass := self classWithMethodAndVariable.
	newInclusion := self traitInclusionWithTwoOtherMethodsAndNoVariable.
	diffs := InclusionRegistry current inclusionDiffsForClass: self class defaultClassName with: {newInclusion}.
	
	self assert: ((diffs collect: #removedMethods) flatten includesAllOf: {#exampleMethod}).