as yet unclassified
test03ConflictingMethodRaisesError

	| conflictingName |
	conflictingName := self class conflictingMethodName.
	
	self 
		should: [self classIncludingSelectors: {conflictingName}]
		raise: Error
		whoseDescriptionIncludes: 'already understands' 
		description: conflictingName, ' conflicts with Object>>', conflictingName, ' and error message should indicate that'