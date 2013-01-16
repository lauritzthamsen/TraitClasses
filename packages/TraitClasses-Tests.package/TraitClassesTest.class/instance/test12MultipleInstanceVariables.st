as yet unclassified
test12MultipleInstanceVariables

	| testClass variables |
	variables := {'exampleVariable'. 'exampleVariable2'. 'exampleVariable3'}.
	testClass := self classIncludingVariables: variables.
	
	self assert: (testClass allInstVarNames includesAllOf: variables).