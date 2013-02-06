visitor-double dispatching
acceptAssignmentNode: node
	
	(self invokeClient: #AssignmentNode with: node)
		ifTrue: [ super acceptAssignmentNode: node ].