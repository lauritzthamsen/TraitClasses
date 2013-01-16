tests
test06testInclusionChangesRemovedVariables
	
	| testClass newInclusion changes |
	testClass := self classWithMethodAndVariable.
	newInclusion := self traitInclusionWithTwoOtherMethodsAndNoVariable.
	changes := InclusionRegistry current inclusionChangesForClass: self class defaultClassName with: {newInclusion}.
	
	self assert: ((changes collect: #removedVariables) flatten includesAllOf: {#exampleVariable}).