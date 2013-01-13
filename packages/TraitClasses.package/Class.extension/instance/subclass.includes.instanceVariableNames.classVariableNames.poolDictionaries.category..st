*TraitClasses
subclass: t includes: anArray instanceVariableNames: f classVariableNames: d poolDictionaries: s category: cat 
	| newClass |
	newClass := self
		subclass: t
		instanceVariableNames: f
		classVariableNames: d
		poolDictionaries: s
		category: cat.
		
	(self associationsToCompiledMethods: anArray) do: [:each |
		newClass compile: each getSource asString].
	
	^newClass