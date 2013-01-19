as yet unclassified
test13MethodAndVariable

	| testClass |
	testClass := self classIncluding: {#ExampleTraitClass 
			selectors: {#exampleMethod}
			variables: {#exampleVariable}}.
	
	self assert: (testClass canUnderstand: #exampleMethod).
	self assert: (testClass allInstVarNames includes: 'exampleVariable').