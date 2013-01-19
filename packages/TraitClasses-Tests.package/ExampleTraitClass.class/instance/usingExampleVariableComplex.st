as yet unclassified
usingExampleVariableComplex
	"Do not change this method, tests depend on this code"
	| tmp block otherTemp |
	tmp := exampleVariable.
	block := [ :blockVar | tmp := tmp - blockVar ].
	otherTemp := exampleVariable.
	otherTemp ifTrue: [ block value: exampleVariable2 ].
	^ tmp