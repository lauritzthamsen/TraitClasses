tests
test03testInclusionDiffsAddedMethods

	| testClass newInclusion diffs |
	testClass := self classWithMethodAndVariable.
	newInclusion := self traitInclusionWithTwoOtherMethodsAndNoVariable.
	diffs := InclusionRegistry current inclusionDiffsForClass: self class defaultClassName with: {newInclusion}.
	
	self assert: ((diffs collect: #addedMethods) flatten includesAllOf: {#exampleMethod2. #exampleMethod3}).