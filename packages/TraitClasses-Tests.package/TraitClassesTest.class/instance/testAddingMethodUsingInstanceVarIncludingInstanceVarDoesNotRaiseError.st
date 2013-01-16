as yet unclassified
testAddingMethodUsingInstanceVarIncludingInstanceVarDoesNotRaiseError
		
	self 
		shouldnt: [self classIncluding: {
			self class exampleTraitClassName 
				selectors: {
					self class instVarUsingMethodName}
				variables: {
					'exampleVariable'}}]
		raise: Error