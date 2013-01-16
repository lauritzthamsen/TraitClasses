*TraitClasses-Core
addMethodsFrom: traitInclusionDiffs

	traitInclusionDiffs
		do: [:traitInclusionDiff | 
			traitInclusionDiff methodsToAdd
				do: [:selector || inclusion |
					inclusion := traitInclusionDiff currentInclusion.
					self
						compile: (inclusion sourceForSelector: selector)
						classified: self traitProtocolPrefix , inclusion traitClassName]]