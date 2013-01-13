*TraitClasses
renameSelectorSource: aCompiledMethod to: aSelector

	| parseTree |
	(aSelector numArgs == aCompiledMethod numArgs ) 
		ifFalse: [self error: 'Renaming cannot change the number of arguments'].
		
	parseTree := aCompiledMethod parseTree.
	parseTree selector: aSelector.
	
	^ parseTree newSource