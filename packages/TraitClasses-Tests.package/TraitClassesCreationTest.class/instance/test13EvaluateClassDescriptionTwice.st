as yet unclassified
test13EvaluateClassDescriptionTwice

	| testClass |
	testClass := self classIncludingSelectors: {#exampleMethod}.
	testClass := self classIncludingSelectors: {#exampleMethod}.
	
	self 
		assert: 20 
		equals: testClass new exampleMethod.