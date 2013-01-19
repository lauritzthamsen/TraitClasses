as yet unclassified
test17ChangeASelectorRenaming

	| testClass |
	testClass := self classIncludingSelectors: {#exampleMethod -> #renamedExampleMethod}.
	testClass := self classIncludingSelectors: {#exampleMethod -> #aliasedExampleMethod}.
		
	self 
		deny: (testClass canUnderstand: #exampleMethod);
		deny: (testClass canUnderstand: #renamedExampleMethod).
		
	self 
		assert: 20 
		equals: testClass new aliasedExampleMethod.