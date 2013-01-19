as yet unclassified
test08SpecificMethodAndProtocol

	| testClass traitMethods |
	testClass := self classIncluding: 
		{#ExampleTraitClass
			selectors: {#exampleMethod3} 
			protocols: {'exampleProtocol'}}.

	traitMethods := (ExampleTraitClass organization listAtCategoryNamed: 'exampleProtocol') asSet.
	traitMethods add: #exampleMethod3.

	traitMethods do: [:selector | self assert: (testClass canUnderstand: selector)].