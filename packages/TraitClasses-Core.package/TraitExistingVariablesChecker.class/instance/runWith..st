as yet unclassified
runWith: inclusions
	| variables class |
	
	inclusions do: [ :inclusion |
		class := inclusion getTraitClass.
		variables := self determineRelevantVariablesFrom: inclusion.
		inclusion selectors do: [ :selector |
			self assertVariables: variables areNotUsedIn: (class >> selector) ]]