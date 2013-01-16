as yet unclassified
test13MethodAndVariable

	| testClass |
	testClass := self classIncluding: {#TraitClassesExampleTraitClass 
			selectors: {#exampleMethod}
			variables: {#exampleVariable}}.
	
	self assert: (testClass canUnderstand: #exampleMethod).
	self assert: (testClass allInstVarNames includes: 'exampleVariable').