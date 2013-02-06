private
doInvokeClient: aSymbol with: aNode
	"If the implementation of this method returns a boolean, it will indicate, whether the AST will be traversed further down
	the given node."
	
	self subclassResponsibility.