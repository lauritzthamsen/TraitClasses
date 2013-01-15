as yet unclassified
test06RenameExampleMethod

	| testClass |
	testClass := self classIncludingSelectors: {#exampleMethod -> #renamedExampleMethod}.
		
	self 
		deny: (testClass canUnderstand: #exampleMethod).
		
	self 
		assert: 20 
		equals: testClass new renamedExampleMethod.