*TraitClasses
addMethodsFrom: traitInclusions
	traitInclusions
		do: [ :traitInclusion | 
			traitInclusion selectors
				do: [ :selector | 
					self
						compile: (traitInclusion sourceForSelector: selector)
						classified: self traitProtocolPrefix , traitInclusion traitClassName ] ]