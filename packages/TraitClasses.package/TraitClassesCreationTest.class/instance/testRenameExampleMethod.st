as yet unclassified
testRenameExampleMethod

	| testClass |
	testClass := self createTestClassIncluding: 
		{#TraitClassesExampleTraitClass -> {#exampleMethod -> #renamedExampleMethod}}.
		
	self 
		deny: (testClass canUnderstand: #exampleMethod).
		
	self 
		assert: 20 
		equals: testClass new renamedExampleMethod.