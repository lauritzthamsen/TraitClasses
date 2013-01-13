*TraitClasses
getSourceWithRenamedSelector: newSelector

	(newSelector numArgs == self numArgs) 
		ifFalse: [self error: 'Renaming cannot change the number of arguments'].
		
	^ self parseTree 
		selector: newSelector;
		newSource