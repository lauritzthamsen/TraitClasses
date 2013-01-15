as yet unclassified
test07AllMethodsInProtocol

	| testClass protocolMethods |
	testClass := self classIncluding: {#TraitClassesExampleTraitClass protocols: {'exampleProtocol'}}.

	protocolMethods := TraitClassesExampleTraitClass organization listAtCategoryNamed: 'exampleProtocol'.

	protocolMethods do: [:selector | self assert: (testClass canUnderstand: selector)].