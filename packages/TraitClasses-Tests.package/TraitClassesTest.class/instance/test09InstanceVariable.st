as yet unclassified
test09InstanceVariable

	| testClass |
	testClass := self classIncludingVariables: {#exampleVariable}.
	
	self assert: (testClass allInstVarNames includes: 'exampleVariable').