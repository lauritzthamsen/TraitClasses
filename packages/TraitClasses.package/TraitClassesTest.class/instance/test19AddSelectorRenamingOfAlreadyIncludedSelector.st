as yet unclassified
test19AddSelectorRenamingOfAlreadyIncludedSelector

	| testClass |
	testClass := self classIncludingSelectors: {#exampleMethod}.
	testClass := self classIncludingSelectors: {#exampleMethod -> #renamedExampleMethod}.
		
	self deny: (testClass canUnderstand: #exampleMethod).
		
	self 
		assert: 20 
		equals: testClass new renamedExampleMethod.