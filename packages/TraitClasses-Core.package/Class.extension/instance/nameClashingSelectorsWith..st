*TraitClasses-Core
nameClashingSelectorsWith: traitInclusions
	^ self allSelectors intersection: (traitInclusions flatCollect: #includedSelectors)