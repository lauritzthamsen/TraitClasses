as yet unclassified
test11IncludedInstanceVariablesMustExistInTrait

	self 
		should: [self classIncludingVariables: {'nonExistingVariable'}]
		raise: Error
		whoseDescriptionIncludes: 'variable'
		description: 'it should only be possible to include variables that actually exist in the corresponding trait'.