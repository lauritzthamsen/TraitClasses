*TraitClasses-Core
subclass: className includes: traitInclusions instanceVariableNames: instanceVariables classVariableNames: d poolDictionaries: s category: cat
	
	| oldClass newClass instanceVariableNames changes |
	oldClass := Smalltalk classNamed: className.
	changes := InclusionRegistry current inclusionChangesForClass: className with: traitInclusions.
	
	instanceVariableNames := self 
		instanceVariableStringFrom: instanceVariables 
		and: className 
		and: changes.
	
	newClass := self
		subclass: className
		instanceVariableNames: instanceVariableNames
		classVariableNames: d
		poolDictionaries: s
		category: cat.	

	[newClass assertNoSelectorNameClashesWith: (changes collect: #addedMethods) flatten.
	 TraitExistingVariablesChecker runWith: traitInclusions ] ifError: [ :error |
		self 
			restoreClass: oldClass;
			error: error ].    
		
	newClass updateMethodsFrom: changes.
		
	InclusionRegistry current at: newClass name put: traitInclusions.
	^ newClass