accessing
inclusionDiffsForClass: className with: newInclusions

	| originalInclusions includedClasses |
	originalInclusions := self inclusionsForClass: className.
	includedClasses := Set new.
	includedClasses 
		addAll: (newInclusions collect: #traitClassName);
		addAll: (originalInclusions collect: #traitClassName).
	
	^ includedClasses collect: [:includedClassName || originalInclusion newInclusion |
		originalInclusion := originalInclusions 
			detect: [:inclusion | inclusion traitClassName = includedClassName] 
			ifNone: [TraitInclusion new traitClassName: includedClassName].
		newInclusion := newInclusions 
			detect: [:inclusion | inclusion traitClassName = includedClassName]
			ifNone: [TraitInclusion new traitClassName: includedClassName].
		TraitInclusionDiff between: originalInclusion and: newInclusion]