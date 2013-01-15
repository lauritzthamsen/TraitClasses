*TraitClasses-Core
selectors: anArray

	| inclusion |
	inclusion := TraitInclusion new.
		
	anArray do: [:each |
		(each isKindOf: Association) 
			ifTrue:  
				[inclusion selectors add: each key.
				inclusion methodRenamings at: each key put: each value]
			ifFalse: [inclusion selectors add: each]].
		
	inclusion traitClassName: self.  

	^ inclusion