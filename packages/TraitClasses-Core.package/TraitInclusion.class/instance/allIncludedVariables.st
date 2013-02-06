accessing
allIncludedVariables

	^ (self variables copyWithoutAll: self variableRenamings keys), 
			self variableRenamings values, self existingVariables