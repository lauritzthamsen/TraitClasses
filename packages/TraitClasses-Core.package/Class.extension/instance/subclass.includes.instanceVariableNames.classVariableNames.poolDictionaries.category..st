*TraitClasses-Core
subclass: className includes: traitInclusions instanceVariableNames: instanceVariables classVariableNames: d poolDictionaries: s category: cat

	| oldClass newClass instanceVars diffs |
	oldClass := Smalltalk classNamed: className.
	
	diffs := InclusionRegistry current inclusionDiffsForClass: className with: traitInclusions.
	
	"variables"
	traitInclusions do: #assertIncludedVariablesExistInTrait.
	instanceVars := (instanceVariables subStrings: ' ') asOrderedCollection.
	diffs do: [:inclusionDiff | instanceVars removeAll: inclusionDiff removedVariables].
	self 
		assertVariablesToInclude: (diffs collect: #addedVariables) flatten
		dontAlreadyExistIn: className 
		or: instanceVars.
	diffs do: [:inclusionDiff | instanceVars addAll: inclusionDiff addedVariables].
	
	newClass := self
		subclass: className
		instanceVariableNames: (self variableNamesStringFor: instanceVars)
		classVariableNames: d
		poolDictionaries: s
		category: cat.
		
	"methods"
	newClass 
		assertNoSelectorNameClashesWith: (diffs collect: #addedMethods) flatten 
		restoring: oldClass.
	newClass 
		removeMethodsFrom: diffs;
		addMethodsFrom: diffs.
		
	InclusionRegistry current at: newClass name put: traitInclusions.
	^ newClass