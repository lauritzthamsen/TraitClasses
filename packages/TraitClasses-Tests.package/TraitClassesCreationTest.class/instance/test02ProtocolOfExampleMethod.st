as yet unclassified
test02ProtocolOfExampleMethod

	| testClass |
	testClass := self classIncludingSelectors: {#exampleMethod}.
	
	self
		assert: Class traitProtocolPrefix , 'TraitClassesExampleTraitClass'
		equals: (testClass organization categoryOfElement: #exampleMethod)