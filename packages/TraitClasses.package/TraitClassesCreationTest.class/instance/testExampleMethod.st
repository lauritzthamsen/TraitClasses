as yet unclassified
testExampleMethod

	| testClass |
	testClass := self createTestClassIncluding: {#TraitClassesExampleTraitClass -> {#exampleMethod}}.

	self 
		assert: 20 
		equals: testClass new exampleMethod.