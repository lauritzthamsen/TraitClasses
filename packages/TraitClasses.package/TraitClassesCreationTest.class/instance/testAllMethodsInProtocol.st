as yet unclassified
testAllMethodsInProtocol

	| testClass protocolMethods |
	testClass := self createTestClassIncluding: {#TraitClassesExampleTraitClass protocols: {'exampleProtocol'}}.

	protocolMethods := TraitClassesExampleTraitClass organization listAtCategoryNamed: 'exampleProtocol'.

	protocolMethods do: [:selector | self assert: (testClass canUnderstand: selector)].