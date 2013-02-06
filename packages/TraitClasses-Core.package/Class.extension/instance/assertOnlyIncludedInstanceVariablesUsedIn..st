*TraitClasses-Core
assertOnlyIncludedInstanceVariablesUsedIn: traitInclusions

	traitInclusions do: [:inclusion |
		inclusion assertOnlyIncludedInstanceVariablesUsed]