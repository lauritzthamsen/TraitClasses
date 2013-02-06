instance variable checking
assertVariables: variableList areNotUsedIn: method

	self 
		processNode: method parseTree 
		withVariables: variableList