as yet unclassified
testAddingMethodUsingInstanceVarMethodRaisesError
	
	self 
		should: [self classIncludingSelectors: {self class instVarUsingMethodName}]
		raise: Error
		whoseDescriptionIncludes: self class instVarUsingErrorMessage 
		description: 'The included method uses instance variables that were not included, and an error message should indicate that'