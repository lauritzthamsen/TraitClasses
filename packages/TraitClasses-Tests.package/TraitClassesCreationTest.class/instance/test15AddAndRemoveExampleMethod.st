as yet unclassified
test15AddAndRemoveExampleMethod

	| testClass |
	testClass := self classIncludingSelectors: {#exampleMethod}.
	testClass := self classIncludingSelectors: {}.
	
	self deny: (testClass canUnderstand: #exampleMethod).