*TraitClasses
subclass: t includes: traitInclusions instanceVariableNames: f classVariableNames: d poolDictionaries: s category: cat 
	| newClass |
	newClass := self
		subclass: t
		instanceVariableNames: f
		classVariableNames: d
		poolDictionaries: s
		category: cat.
	
	(newClass allSelectors intersection: (traitInclusions flatCollect: #includedSelectors )) 
		ifNotEmptyDo: [:intersection |
			self error:  newClass name, ' already understands: ', intersection].  
		
	traitInclusions do: [:traitInclusion | 
		traitInclusion selectors do: [:selector |
			newClass 
				compile: (traitInclusion sourceForSelector: selector)
				classified: self traitProtocolPrefix, traitInclusion traitClassName ]].
	
	^newClass