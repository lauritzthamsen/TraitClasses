as yet unclassified
testConflictingVariable

	self 
		should: [self createTestClassIncluding: {#TraitClassesExampleTraitClass variables: {'existingVariable'}}]
		raise: Error
		whoseDescriptionIncludes: 'already present'
		description: 'it should not be possible to include variables that are already present in the target class'.