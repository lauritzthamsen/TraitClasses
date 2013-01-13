*TraitClasses
subclass: t includes: anArray instanceVariableNames: f classVariableNames: d poolDictionaries: s category: cat 
	| newClass classesToMethods |
	newClass := self
		subclass: t
		instanceVariableNames: f
		classVariableNames: d
		poolDictionaries: s
		category: cat.
		
	classesToMethods := self transformIncludesArray: anArray.
	
	(newClass allSelectors intersection: (classesToMethods values flatten collect: #key)) 
		ifNotEmptyDo: [:intersection |
			self error:  newClass name, ' already understands: ', intersection].  
		
	classesToMethods keysAndValuesDo: [:className :methods |
		methods do: [:each |  "each is: selector -> source"
			newClass 
				compile: each value 
				classified: self traitProtocolPrefix, className ]].
	
	^newClass