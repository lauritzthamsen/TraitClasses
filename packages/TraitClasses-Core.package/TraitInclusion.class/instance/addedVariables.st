accessing
addedVariables

	^ (self variables copyWithoutAll: self variableRenamings keys) , (self variableRenamings values copyWithoutAll: self existingVariables)