as yet unclassified
test18RemoveSelectorRenaming

	| testClass |
	testClass := self classIncludingSelectors: {#exampleMethod -> #renamedExampleMethod}.
	testClass := self classIncludingSelectors: {#exampleMethod}.
		
	self deny: (testClass canUnderstand: #renamedExampleMethod).
		
	self 
		assert: 20 
		equals: testClass new exampleMethod.