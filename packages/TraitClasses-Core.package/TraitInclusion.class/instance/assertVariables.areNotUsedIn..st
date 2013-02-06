instance variable checking
assertVariables: variableList areNotUsedIn: method

	| parseTree |
	parseTree := method parseTree.
	self renameVariableReferencesOf: parseTree.
	
	self 
		processNode: parseTree
		withVariables: variableList.