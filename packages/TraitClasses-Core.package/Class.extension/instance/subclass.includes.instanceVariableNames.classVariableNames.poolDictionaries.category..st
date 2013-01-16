*TraitClasses-Core
subclass: className includes: traitInclusions instanceVariableNames: instanceVariables classVariableNames: d poolDictionaries: s category: cat
	
	| oldClass newClass instanceVariableNames diffs |
	oldClass := Smalltalk classNamed: className.
	diffs := InclusionRegistry current inclusionDiffsForClass: className with: traitInclusions.	"variables"
	
	instanceVariableNames := self createInstanceVariableStringFrom: instanceVariables with: className with: diffs.
	
	newClass := self
		subclass: className
		instanceVariableNames: instanceVariableNames
		classVariableNames: d
		poolDictionaries: s
		category: cat.	
			
	"methods"
	newClass assertNoSelectorNameClashesWith: (diffs collect: #addedMethods) flatten restoring: oldClass.
	newClass
		removeMethodsFrom: diffs;
		addMethodsFrom: diffs.
		
	InclusionRegistry current at: newClass name put: traitInclusions.
	^ newClass