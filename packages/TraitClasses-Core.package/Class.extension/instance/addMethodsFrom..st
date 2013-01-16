*TraitClasses-Core
addMethodsFrom: changes

	changes
		do: [:traitInclusionChange | 
			traitInclusionChange methodsToAdd
				do: [:selector || inclusion |
					inclusion := traitInclusionChange newInclusion.
					self
						compile: (inclusion sourceForSelector: selector)
						classified: self traitProtocolPrefix , inclusion traitClassName]]