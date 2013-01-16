helper
traitInclusionWithTwoOtherMethodsAndNoVariable
	^ (TraitInclusion new)
		traitClassName: self class exampleTraitClassName;
		selectors:
				{#exampleMethod2.
					#exampleMethod3};
		variables: {}