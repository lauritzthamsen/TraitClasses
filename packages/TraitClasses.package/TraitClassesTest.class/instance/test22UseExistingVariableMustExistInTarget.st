as yet unclassified
test22UseExistingVariableMustExistInTarget

	self 
		should: [self classIncludingVariables: {#exampleVariable useExisting}] 
		raise: Error
		whoseDescriptionIncludes: 'variables do not exist in target class'
		description: 'variables included with >>#useExisting must exist in the target class'.