as yet unclassified
testConflictingMethod

	self 
		should: [self createTestClassIncluding: {#TraitClassesExampleTraitClass -> {#name}}]
		raise: Error
		whoseDescriptionIncludes: 'name'
		description: 'test that #name conflicts with Object>>#name and error message indicates that!!!!!11'.