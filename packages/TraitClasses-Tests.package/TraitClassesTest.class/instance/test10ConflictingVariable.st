as yet unclassified
test10ConflictingVariable

	self 
		should: [self classIncludingVariables: {'existingVariable'}]
		raise: Error
		whoseDescriptionIncludes: 'already present'
		description: 'it should not be possible to include variables that are already present in the target class'.