tests
test03testInclusionChangesAddedMethods

	| testClass newInclusion changes |
	testClass := self classWithMethodAndVariable.
	newInclusion := self traitInclusionWithTwoOtherMethodsAndNoVariable.
	changes := InclusionRegistry current inclusionChangesForClass: self class defaultClassName with: {newInclusion}.
	
	self assert: ((changes collect: #addedMethods) flatten includesAllOf: {#exampleMethod2. #exampleMethod3}).