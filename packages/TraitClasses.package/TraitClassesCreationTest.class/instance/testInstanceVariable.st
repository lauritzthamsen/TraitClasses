as yet unclassified
testInstanceVariable

	| testClass |
	testClass := self createTestClassIncluding: {#TraitClassesExampleTraitClass variables: {#exampleVariable}}.
	
	self assert: (testClass allInstVarNames includes: 'exampleVariable').