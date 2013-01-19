as yet unclassified
test23UseExistingVariableFromSuperclass

	self 
		shouldnt: [self classIncludingVariables: {#existingSuperClassVariable useExisting}] 
		raise: Error.