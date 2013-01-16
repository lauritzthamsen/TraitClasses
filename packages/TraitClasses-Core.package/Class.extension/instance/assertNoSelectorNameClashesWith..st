*TraitClasses-Core
assertNoSelectorNameClashesWith: aCollection
	(self allSelectors intersection: aCollection)
		ifNotEmptyDo: [ :conflictingMethods | self error: self name , ' already understands: ' , conflictingMethods ]