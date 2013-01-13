*TraitClasses
subclass: t includes: traitInclusions instanceVariableNames: f classVariableNames: d poolDictionaries: s category: cat 

	| oldClass newClass |
	oldClass := Smalltalk classNamed: t.
	newClass := self
		subclass: t
		instanceVariableNames: f
		classVariableNames: d
		poolDictionaries: s
		category: cat.
	
	(newClass allSelectors intersection: (traitInclusions flatCollect: #includedSelectors )) 
		ifNotEmptyDo: [:intersection |
			oldClass ifNotNil: [ Smalltalk at: t put: oldClass ].
			self error:  newClass name, ' already understands: ', intersection].
	
	traitInclusions do: [:traitInclusion | 
		traitInclusion selectors do: [:selector |
			newClass 
				compile: (traitInclusion sourceForSelector: selector)
				classified: self traitProtocolPrefix, traitInclusion traitClassName ]].
	
	^newClass
