*TraitClasses-Core
assertVariablesValidFor: className with: instanceVariables with: traitInclusions
	traitInclusions do: #assertVariablesExist.
	self assertVariablesToIncludeFrom: traitInclusions dontAlreadyExistIn: className or: instanceVariables