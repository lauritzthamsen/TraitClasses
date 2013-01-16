*TraitClasses-Core
subclass: className includes: traitInclusions instanceVariableNames: instanceVariables classVariableNames: d poolDictionaries: s category: cat
	
	| oldClass newClass instanceVariableNames diffs |
	oldClass := Smalltalk classNamed: className.
	diffs := InclusionRegistry current inclusionDiffsForClass: className with: traitInclusions.
	
	instanceVariableNames := self 
		instanceVariableStringFrom: instanceVariables 
		and: className 
		and: diffs.
	
	newClass := self
		subclass: className
		instanceVariableNames: instanceVariableNames
		classVariableNames: d
		poolDictionaries: s
		category: cat.	

	newClass 
		assertNoSelectorNameClashes: (diffs collect: #addedMethods) flatten 
		restoring: oldClass.
		
	newClass
		removeMethodsFrom: diffs;
		addMethodsFrom: diffs.
		
	InclusionRegistry current at: newClass name put: traitInclusions.
	^ newClass