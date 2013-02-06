*TraitClasses-Core
instanceVariablesString
	"Answer a string of my instance variable names separated by spaces."

	^String streamContents: [ :stream |
		(self instVarNames copyWithoutAll: (self traitInclusions flatCollect: #allIncludedVariables))
			do: [ :each | stream nextPutAll: each ]
			separatedBy: [ stream space ] ]