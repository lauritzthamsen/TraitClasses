as yet unclassified
testConflictingMethod

	| conflictingName |
	conflictingName := self class conflictingMethodName.
	self 
		should: [self createTestClassIncludingSelectors: {conflictingName}]
		raise: Error
		whoseDescriptionIncludes: 'already understands' 
		description: conflictingName, ' conflicts with Object>>', conflictingName, ' and error message should indicate that'