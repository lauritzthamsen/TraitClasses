instance variable checking
assertOnlyIncludedInstanceVariablesUsed
	
	| variables class |
	class := self getTraitClass.
	variables := self notIncludedInstanceVariables.
	self selectors do: [:selector |
		self assertVariables: variables areNotUsedIn: (class >> selector)]