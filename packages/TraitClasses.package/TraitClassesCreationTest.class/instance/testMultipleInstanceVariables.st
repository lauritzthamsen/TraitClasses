as yet unclassified
testMultipleInstanceVariables

	| testClass variables |
	variables := {'exampleVariable'. 'exampleVariable2'. 'exampleVariable3'}.
	testClass := self createTestClassIncluding: {#TraitClassesExampleTraitClass variables: variables}.
	
	self assert: (testClass allInstVarNames includesAllOf: variables).