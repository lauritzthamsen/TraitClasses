instance variable checking
notIncludedInstanceVariables
	
	^ self getTraitClass instVarNames copyWithoutAll: self allIncludedVariables