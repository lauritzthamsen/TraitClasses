accessing
on: aSymbol invoke: aBlock
	"Configure aBlock to be evaluated, when the visitor visits a node identified by aSymbol.
	aBlock will get up to 2 parameters (the visited node and the symbol identifying it.)"
	
	blocks at: aSymbol put: aBlock.