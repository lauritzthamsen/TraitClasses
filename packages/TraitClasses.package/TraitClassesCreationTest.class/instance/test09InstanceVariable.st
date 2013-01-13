as yet unclassified
test09InstanceVariable

	| testClass |
	testClass := self classIncluding: {#TraitClassesExampleTraitClass variables: {#exampleVariable}}.
	
	self assert: (testClass allInstVarNames includes: 'exampleVariable').