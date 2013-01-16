as yet unclassified
assertVariableName: name notIn: variables

	(variables includes: name) ifTrue: [self error: self class errorMessage].