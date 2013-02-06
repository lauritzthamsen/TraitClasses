instance variable checking
assertVariables: variableList areNotUsedIn: method

	| parseTree |
	parseTree := method parseTree.
	
	"need to check method with renamed variables, not the original source"
	self renameVariableReferencesOf: parseTree.
	
	self 
		assertNode: parseTree
		doesNotContainVariables: variableList.