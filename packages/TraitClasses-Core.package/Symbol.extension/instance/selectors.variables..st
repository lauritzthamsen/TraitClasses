*TraitClasses-Core
selectors: selectors variables: variables

	| traitInclusion |
	traitInclusion := TraitInclusion new 
		traitClassName: self;
		variables: variables;
		yourself.
	
	selectors do: [:each |
		(each isKindOf: Association) 
			ifTrue:  
				[traitInclusion selectors add: each key.
				traitInclusion methodRenamings at: each key put: each value]
			ifFalse: [traitInclusion selectors add: each]].

	^ traitInclusion