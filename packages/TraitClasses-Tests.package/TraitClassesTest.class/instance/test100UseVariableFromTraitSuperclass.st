as yet unclassified
test100UseVariableFromTraitSuperclass

	self 
		shouldnt: [self classIncludingVariables: {#traitSuperclassVariable}] 
		raise: Error.