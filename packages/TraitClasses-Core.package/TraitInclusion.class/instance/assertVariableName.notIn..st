instance variable checking
assertVariableName: name notIn: variables

	(variables includes: name) ifTrue: [self error: self class instanceVariableInUseErrorMessage]