as yet unclassified
test16AddAndRemoveExampleVariable

	| testClass |
	testClass := self classIncludingVariables: {#exampleVariable}.
	testClass := self classIncludingVariables: {}.
	
	self deny: (testClass allInstVarNames includes: 'exampleVariable').