private
invokeClient: aSymbol with: aNode
	"The return value must be a boolean and indicate, whether we want to continue traversing the tree, or not."
	
	| result |
	result := (self clientWantsToVisit: aSymbol)
		ifTrue: [ self doInvokeClient: aSymbol with: aNode ]
		ifFalse: [ true ].
	(result isKindOf: Boolean) ifFalse: [ result := true ]. "Allow arbitrary results for convenience."
	^ result