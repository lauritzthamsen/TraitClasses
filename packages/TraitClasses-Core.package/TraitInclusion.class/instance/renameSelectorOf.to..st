as yet unclassified
renameSelectorOf: parseTree to: selector
	
	(selector numArgs == parseTree arguments size) 
		ifFalse: [self error: 'Renaming cannot change the number of arguments'].
		
	parseTree selector: selector.