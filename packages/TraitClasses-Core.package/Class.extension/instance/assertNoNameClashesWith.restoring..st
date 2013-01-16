*TraitClasses-Core
assertNoNameClashesWith: traitInclusions restoring: oldClass

	(self nameClashingSelectorsWith: traitInclusions)
		ifNotEmptyDo: [:conflictingMethods | 
			oldClass ifNotNil: [Smalltalk at: oldClass name put: oldClass].
			self error: self name , ' already understands: ' , conflictingMethods].