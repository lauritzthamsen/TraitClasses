as yet unclassified
test14AddAndRemoveExampleMethod

	| testClass |
	testClass := self classIncludingSelectors: {#exampleMethod}.
	testClass := self classIncludingSelectors: {}.
	
	self deny: (testClass canUnderstand: #exampleMethod).