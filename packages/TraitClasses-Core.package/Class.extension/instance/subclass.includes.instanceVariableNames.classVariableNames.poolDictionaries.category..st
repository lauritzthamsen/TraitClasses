*TraitClasses-Core
subclass: className includes: traitInclusions instanceVariableNames: instanceVariables classVariableNames: d poolDictionaries: s category: cat
	| oldClass newClass |
	oldClass := Smalltalk classNamed: className.
	self assertVariablesValidFor: className with: instanceVariables with: traitInclusions.
	newClass := self
		subclass: className
		instanceVariableNames: instanceVariables , (self variableNamesStringFrom: traitInclusions)
		classVariableNames: d
		poolDictionaries: s
		category: cat.
	newClass assertNoNameClashesWith: traitInclusions restoring: oldClass.
	newClass addMethodsFrom: traitInclusions.
	^ newClass