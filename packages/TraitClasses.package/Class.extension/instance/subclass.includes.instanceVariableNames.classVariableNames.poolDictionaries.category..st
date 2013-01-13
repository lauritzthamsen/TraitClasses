*TraitClasses
subclass: t includes: anArray instanceVariableNames: f classVariableNames: d poolDictionaries: s category: cat 
	| newClass traitMethods |
	newClass := self
		subclass: t
		instanceVariableNames: f
		classVariableNames: d
		poolDictionaries: s
		category: cat.
		
	traitMethods := self associationsToCompiledMethods: anArray.
	
	(newClass allSelectors intersection: (traitMethods collect: #selector)) 
		ifNotEmptyDo: [:intersection |
			self error:  newClass name, ' already understands: ', intersection].  
		
	traitMethods do: [:each |
		newClass 
			compile: each getSource asString
			classified: self traitProtocolPrefix, each methodHome name ].
	
	^newClass