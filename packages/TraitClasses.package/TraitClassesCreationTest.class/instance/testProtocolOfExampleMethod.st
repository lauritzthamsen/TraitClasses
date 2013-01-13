as yet unclassified
testProtocolOfExampleMethod
	| testClass |
	testClass := self createTestClassIncludingSelectors: {#exampleMethod}.
	self
		assert: Class traitProtocolPrefix , 'TraitClassesExampleTraitClass'
		equals: (testClass organization categoryOfElement: #exampleMethod)