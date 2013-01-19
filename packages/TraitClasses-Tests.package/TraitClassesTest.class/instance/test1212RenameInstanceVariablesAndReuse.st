as yet unclassified
test1212RenameInstanceVariablesAndReuse

	| testClass |
	testClass := self classIncludingVariables: {(#exampleVariable -> #existingVariable) useExisting}.
	testClass := self classIncludingVariables: {(#exampleVariable -> #existingVariable2) useExisting}.
	
	self assert: (testClass allInstVarNames includesAllOf: {'existingVariable2'}).
	self deny: (testClass allInstVarNames includesAnyOf: {'exampleVariable'. 'existingVariable'}).