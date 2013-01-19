tests
test04testInclusionChangesAddedVariables
	
	| testClass newInclusion changes |
	testClass := self classWithMethodAndVariable.
	newInclusion := self traitInclusionWithTwoOtherMethodsAndNoVariable.
	changes := InclusionRegistry current inclusionChangesForClass: self class defaultClassName with: {newInclusion}.
	
	self assert: (changes collect: #addedVariables) flatten isEmpty.