as yet unclassified
methodsToRemoveDueToChangedRenaming

	| methodsToRemove |
	methodsToRemove := OrderedCollection new.
	methodsToRemove 
		addAll: (self addedMethodRenamings keys);
		addAll: (self removedMethodRenamings values);
		addAll: (self changedMethodRenamings).
	^ methodsToRemove