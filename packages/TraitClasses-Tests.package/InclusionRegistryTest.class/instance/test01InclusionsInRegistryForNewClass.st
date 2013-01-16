tests
test01InclusionsInRegistryForNewClass

	| testClass |
	testClass := self classIncludingSelectors: {}.
	
	self assert: (InclusionRegistry current includesKey: testClass name).