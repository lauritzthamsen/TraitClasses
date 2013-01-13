as yet unclassified
testSpecificMethodAndProtocol

	| testClass traitMethods |
	testClass := self createTestClassIncluding: 
		{#TraitClassesExampleTraitClass
			selectors: {#exampleMethod3} 
			protocols: {'exampleProtocol'}}.

	traitMethods := (TraitClassesExampleTraitClass organization listAtCategoryNamed: 'exampleProtocol') asSet.
	traitMethods add: #exampleMethod3.

	traitMethods do: [:selector | self assert: (testClass canUnderstand: selector)].