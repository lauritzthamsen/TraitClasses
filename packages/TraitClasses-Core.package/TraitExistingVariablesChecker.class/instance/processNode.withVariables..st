as yet unclassified
processNode: astNode withVariables: variables
	
	astNode isVariable ifTrue: [self assertVariableName: astNode name notIn: variables].
	astNode children do: [ :child | 
		self processNode: child withVariables: variables]