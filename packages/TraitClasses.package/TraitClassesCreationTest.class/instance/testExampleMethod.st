as yet unclassified
testExampleMethod

	| testClass |
	testClass := self createTestClassIncludingSelectors: {#exampleMethod}.

	self 
		assert: 20 
		equals: testClass new exampleMethod.