as yet unclassified
test124RenameInstanceVariablesAndReuseAndChangeCode

	| testClass |
	testClass := self classIncludingVariables: {(#exampleVariable -> #existingVariable) useExisting}.

	self assert: (testClass >> #usingExampleVariable) getSource = 
'usingExampleVariable
	"Do not change this method, tests depend on this code"
	^existingVariable'