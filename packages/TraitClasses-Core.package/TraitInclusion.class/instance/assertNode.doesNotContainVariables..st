instance variable checking
assertNode: astNode doesNotContainVariables: variables
	
	astNode isVariable ifTrue: [self assertVariableName: astNode name notIn: variables].
	astNode children do: [:child | 
		self assertNode: child doesNotContainVariables: variables].