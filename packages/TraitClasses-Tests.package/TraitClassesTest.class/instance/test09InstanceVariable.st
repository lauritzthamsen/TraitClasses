as yet unclassified
test09InstanceVariable

	| testClass |
	testClass := self classIncluding: {#ExampleTraitClass variables: {#exampleVariable}}.
	
	self assert: (testClass allInstVarNames includes: 'exampleVariable').