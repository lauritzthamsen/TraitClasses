private
doInvokeClient: aSymbol with: aNode
	
	^ (blocks at: aSymbol)
		valueWithEnoughArguments: { aNode. aSymbol }