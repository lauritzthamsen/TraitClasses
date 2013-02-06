private
clientWantsToVisit: aSymbol
	"Must return a boolean, indicating, whether #doInvokeClient:with: should be called for the given symbol."
	
	self subclassResponsibility.