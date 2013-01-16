as yet unclassified
test02ProtocolOfExampleMethod

	| testClass |
	testClass := self classIncludingSelectors: {#exampleMethod}.
	
	self
		assert: Class traitProtocolPrefix , self class exampleTraitClassName
		equals: (testClass organization categoryOfElement: #exampleMethod)