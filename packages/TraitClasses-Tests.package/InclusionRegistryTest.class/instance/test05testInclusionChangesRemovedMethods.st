tests
test05testInclusionChangesRemovedMethods

	| testClass newInclusion changes |
	testClass := self classWithMethodAndVariable.
	newInclusion := self traitInclusionWithTwoOtherMethodsAndNoVariable.
	changes := InclusionRegistry current inclusionChangesForClass: self class defaultClassName with: {newInclusion}.
	
	self assert: ((changes collect: #removedMethods) flatten includesAllOf: {#exampleMethod}).