as yet unclassified
testExampleMethod

	| testClass |
	testClass := self createTestClassIncluding: {#TraitClassesExampleTraitClass selectors: {#exampleMethod}}.

	self 
		assert: 20 
		equals: testClass new exampleMethod.