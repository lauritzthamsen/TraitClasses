as yet unclassified
testExampleMethodInSelectorStyle

	| testClass |
	testClass := self createTestClassIncluding: {#TraitClassesExampleTraitClass selectors: {#exampleMethod}}.

	self 
		assert: 20 
		equals: testClass new exampleMethod.