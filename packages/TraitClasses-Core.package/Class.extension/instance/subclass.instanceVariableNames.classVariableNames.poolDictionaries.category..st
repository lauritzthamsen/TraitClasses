*TraitClasses-Core
subclass: t instanceVariableNames: f classVariableNames: d poolDictionaries: s category: cat 
	"This is the standard initialization message for creating a new class as a 
	subclass of an existing class (the receiver)."
	InclusionRegistry current removeKey: t.
	
	^(ClassBuilder new)
		superclass: self
		subclass: t
		instanceVariableNames: f
		classVariableNames: d
		poolDictionaries: s
		category: cat
