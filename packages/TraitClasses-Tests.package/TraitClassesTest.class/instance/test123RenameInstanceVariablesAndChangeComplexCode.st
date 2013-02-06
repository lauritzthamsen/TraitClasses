as yet unclassified
test123RenameInstanceVariablesAndChangeComplexCode

	| testClass |
	testClass := self
		classIncludingSelectors: {#usingExampleVariableComplex}
		variables: {#exampleVariable -> #renamedVariable. #exampleVariable2}.
	
	self assert: (testClass >> #usingExampleVariableComplex) getSource = 
'usingExampleVariableComplex
	"Do not change this method, tests depend on this code"

	| tmp block otherTemp |
	tmp := renamedVariable.
	block := [ :blockVar | tmp := tmp - blockVar ].
	otherTemp := renamedVariable.
	otherTemp
		ifTrue: [ block value: exampleVariable2 ].
	^ tmp'