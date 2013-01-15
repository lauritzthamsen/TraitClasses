as yet unclassified
test11IncludedInstanceVariablesMustExistInTrait

	self 
		should: [self classIncluding: {#TraitClassesExampleTraitClass variables: {'nonExistingVariable'}}]
		raise: Error
		whoseDescriptionIncludes: 'variable'
		description: 'it should only be possible to include variables that actually exist in the corresponding trait'.