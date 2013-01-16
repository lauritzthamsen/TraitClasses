*TraitClasses-Core
restoreClass: oldClass
	oldClass ifNotNil: [ Smalltalk at: oldClass name put: oldClass ]