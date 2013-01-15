*TraitClasses-Core
assertNoNameClashesWith: traitInclusions restoring: oldClass
	(self nameClashingSelectorsWith: traitInclusions)
		ifNotEmptyDo: [ :intersection | 
			oldClass ifNotNil: [ Smalltalk at: oldClass name put: oldClass ].
			self error: self name , ' already understands: ' , intersection ]