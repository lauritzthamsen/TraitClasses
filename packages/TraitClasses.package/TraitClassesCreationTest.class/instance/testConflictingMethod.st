as yet unclassified
testConflictingMethod

	self 
		should: [self createTestClassIncludingSelectors: {#name}]
		raise: Error
		whoseDescriptionIncludes: 'name'
		description: '#name conflicts with Object>>#name and error message should indicate that'.