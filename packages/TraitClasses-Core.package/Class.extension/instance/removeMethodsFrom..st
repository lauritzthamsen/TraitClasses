*TraitClasses-Core
removeMethodsFrom: traitInclusionDiffs

	(traitInclusionDiffs collect: #removedMethods) flatten
		do: [:selector | self removeSelector: selector].