as yet unclassified
test08SpecificMethodAndProtocol

	| testClass traitMethods |
	testClass := self classIncluding: 
		{#TraitClassesExampleTraitClass
			selectors: {#exampleMethod3} 
			protocols: {'exampleProtocol'}}.

	traitMethods := (TraitClassesExampleTraitClass organization listAtCategoryNamed: 'exampleProtocol') asSet.
	traitMethods add: #exampleMethod3.

	traitMethods do: [:selector | self assert: (testClass canUnderstand: selector)].