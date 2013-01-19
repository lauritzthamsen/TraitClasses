as yet unclassified
test122RenameInstanceVariablesAndChangeCode

	| testClass |
	testClass := self
		classIncludingSelectors: {#usingExampleVariable}
		variables: {#exampleVariable -> #renamedVariable}.
	
	self assert: (testClass >> #usingExampleVariable) getSource = 
'usingExampleVariable
	"Do not change this method, tests depend on this code"
	^renamedVariable'