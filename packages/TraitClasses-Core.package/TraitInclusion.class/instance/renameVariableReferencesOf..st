as yet unclassified
renameVariableReferencesOf: parseTree

	| visitor |
	visitor := ConfigurableBlockASTVisitor new.
	
	visitor on: #VariableNode invoke: [:node |
		(self variableRenamings includesKey: node name) 
			ifTrue: [node token value: (self variableRenamings at: node name)]].
		
	visitor visitNode: parseTree.