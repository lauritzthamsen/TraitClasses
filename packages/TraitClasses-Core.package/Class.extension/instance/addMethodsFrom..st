*TraitClasses-Core
addMethodsFrom: changes

	changes
		do: [:traitInclusionChange | 
			traitInclusionChange methodsToAdd
				do: [:selector |
					self
						compile: (traitInclusionChange sourceForSelector: selector)
						classified: self traitProtocolPrefix , 
								traitInclusionChange traitClassName]]