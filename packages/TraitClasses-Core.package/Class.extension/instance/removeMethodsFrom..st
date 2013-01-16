*TraitClasses-Core
removeMethodsFrom: traitInclusionDiffs

	(traitInclusionDiffs collect: #methodsToRemove) flatten
		do: [:selector | self removeSelector: selector].