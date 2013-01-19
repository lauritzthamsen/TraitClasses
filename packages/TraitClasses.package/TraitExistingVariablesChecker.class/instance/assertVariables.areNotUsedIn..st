as yet unclassified
assertVariables: variableList areNotUsedIn: method

	self 
		processNode: method parseTree 
		withVariables: variableList.