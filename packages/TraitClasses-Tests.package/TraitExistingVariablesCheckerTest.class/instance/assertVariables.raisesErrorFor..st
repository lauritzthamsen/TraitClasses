as yet unclassified
assertVariables: variables raisesErrorFor: method
	
	self 
		should: [inclusion assertVariables: variables areNotUsedIn: method ] 
		raise: Error
		whoseDescriptionIncludes: TraitClassesTest instVarUsingErrorMessage 
		description: ''.