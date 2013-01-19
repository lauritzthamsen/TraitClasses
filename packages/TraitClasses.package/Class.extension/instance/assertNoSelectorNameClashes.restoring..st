*TraitClasses-Core
assertNoSelectorNameClashes: aCollection restoring: oldClass

	(self allSelectors intersection: aCollection)
		ifNotEmptyDo: [:conflictingMethods | 
			oldClass ifNotNil: [Smalltalk at: oldClass name put: oldClass].
			self error: self name , ' already understands: ' , conflictingMethods].