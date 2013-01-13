as yet unclassified
testProtocolOfExampleMethod

	| testClass |
	testClass := self createTestClassIncluding: {#TraitClassesExampleTraitClass -> {#exampleMethod}}.

	self 
		assert: Class traitProtocolPrefix, 'TraitClassesExampleTraitClass'
		equals: (testClass organization categoryOfElement: #exampleMethod).