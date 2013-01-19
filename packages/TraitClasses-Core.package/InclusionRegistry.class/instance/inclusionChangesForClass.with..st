accessing
inclusionChangesForClass: className with: newInclusions

	| originalInclusions includedClasses inclusions |
	originalInclusions := self inclusionsForClass: className.
	includedClasses := Set new.
	includedClasses 
		addAll: (newInclusions collect: #traitClassName);
		addAll: (originalInclusions collect: #traitClassName).
	
	inclusions := includedClasses collect: [:includedClassName |
		| originalInclusion newInclusion |
		originalInclusion := originalInclusions 
			detect: [:inclusion | inclusion traitClassName = includedClassName] 
			ifNone: [TraitInclusion new traitClassName: includedClassName].
		newInclusion := newInclusions 
			detect: [:inclusion | inclusion traitClassName = includedClassName]
			ifNone: [TraitInclusion new traitClassName: includedClassName].
		TraitInclusionChanges between: originalInclusion and: newInclusion].
	
	^ inclusions asOrderedCollection