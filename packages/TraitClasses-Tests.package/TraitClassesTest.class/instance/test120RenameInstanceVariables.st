as yet unclassified
test120RenameInstanceVariables

	| testClass |
	testClass := self classIncludingVariables: {#exampleVariable -> #renamedVariable. #exampleVariable2 -> #renamedVariable2}.
	
	self assert: (testClass allInstVarNames includesAllOf: {'renamedVariable'. 'renamedVariable2'}).
	self deny: (testClass allInstVarNames includesAnyOf: {'exampleVariable'. 'exampleVariable2'}).