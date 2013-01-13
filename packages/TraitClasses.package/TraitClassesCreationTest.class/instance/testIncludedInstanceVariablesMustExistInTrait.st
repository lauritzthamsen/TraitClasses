as yet unclassified
testIncludedInstanceVariablesMustExistInTrait

	self 
		should: [self createTestClassIncluding: {#TraitClassesExampleTraitClass variables: {'nonExistingVariable'}}]
		raise: Error
		whoseDescriptionIncludes: 'variable'
		description: 'it should only be possible to include variables that actually exist in the corresponding trait'.