as yet unclassified
test07AllMethodsInProtocol

	| testClass protocolMethods |
	testClass := self classIncluding: {#ExampleTraitClass protocols: {'exampleProtocol'}}.

	protocolMethods := ExampleTraitClass organization listAtCategoryNamed: 'exampleProtocol'.

	protocolMethods do: [:selector | self assert: (testClass canUnderstand: selector)].