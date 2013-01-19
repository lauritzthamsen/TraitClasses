as yet unclassified
test21UseExistingVariableMustExistInTrait

	self 
		should: [self classIncludingVariables: {#notExistingVariable useExisting}] 
		raise: Error
		whoseDescriptionIncludes: 'not every included variable exists in trait class'
		description: 'variables included with >>#useExisting must exist in the trait'.