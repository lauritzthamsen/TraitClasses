instance variable checking
determineRelevantVariables
	
	^ self getTraitClass instVarNames copyWithoutAll: self allVariables