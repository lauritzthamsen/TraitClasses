as yet unclassified
test20UseExistingVariable

	self 
		shouldnt: [self classIncludingVariables: {#existingVariable useExisting}] 
		raise: Error.