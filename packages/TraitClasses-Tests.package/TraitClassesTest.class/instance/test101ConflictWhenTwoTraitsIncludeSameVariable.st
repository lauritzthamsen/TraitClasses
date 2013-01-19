as yet unclassified
test101ConflictWhenTwoTraitsIncludeSameVariable

	self 
		should: [self classIncluding: {self class exampleTraitClassName variables: {'duplicatedVariable'}.
									self class anotherTraitClassName variables: {'duplicatedVariable'}}]
		raise: Error
		whoseDescriptionIncludes: 'include the same variable'
		description: 'it should not be possible to include the same variable from multiple traits'. 