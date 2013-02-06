accessing
allVariablesInTraitClass

	^ self variables, (self existingVariables copyWithoutAll: self variableRenamings values)