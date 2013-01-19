accessing
allVariables

	^ self variables, (self existingVariables copyWithoutAll: self variableRenamings values)