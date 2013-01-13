as yet unclassified
testConflictingMethod

	self 
		should: [self createTestClassIncluding: {#TraitClassesExampleTraitClass selectors: {#name}}]
		raise: Error
		whoseDescriptionIncludes: 'name'
		description: '#name conflicts with Object>>#name and error message should indicate that'.