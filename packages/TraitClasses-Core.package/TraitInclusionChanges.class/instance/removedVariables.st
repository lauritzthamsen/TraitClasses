as yet unclassified
removedVariables

	^ (self currentInclusion variables copyWithoutAll: self newInclusion variables), self removedVariableRenamings values, self changedVariableRenamings keys