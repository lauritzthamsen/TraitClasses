accessing
setSelectors: selectors

	selectors do: [:each |
		(each isKindOf: Association) 
			ifTrue:  
				[self selectors add: each key.
				self methodRenamings at: each key put: each value]
			ifFalse: [self selectors add: each]].  