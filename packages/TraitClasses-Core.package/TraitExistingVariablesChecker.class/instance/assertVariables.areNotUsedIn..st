as yet unclassified
assertVariables: variableList areNotUsedIn: method
	| ast |
	ast := method parseTree.
	self processNode: ast withVariables: variableList