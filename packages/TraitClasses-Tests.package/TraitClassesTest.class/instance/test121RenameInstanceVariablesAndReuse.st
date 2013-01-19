as yet unclassified
test121RenameInstanceVariablesAndReuse

	| testClass |
	testClass := self classIncludingVariables: {(#exampleVariable -> #existingVariable) useExisting}.
	
	self assert: (testClass allInstVarNames includesAllOf: {'existingVariable'}).
	self deny: (testClass allInstVarNames includesAnyOf: {'exampleVariable'}).