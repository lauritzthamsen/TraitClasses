as yet unclassified
methodsToAddDueToChangedRenaming

	| methodsToAdd |
	methodsToAdd := OrderedCollection new.
	methodsToAdd 
		addAll: (self addedMethodRenamings keys);
		addAll: (self removedMethodRenamings keys);
		addAll: (self changedMethodRenamings).
	^ methodsToAdd