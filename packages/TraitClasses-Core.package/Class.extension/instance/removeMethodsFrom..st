*TraitClasses-Core
removeMethodsFrom: changes

	(changes collect: #methodsToRemove) flatten
		do: [:selector | self removeSelector: selector].