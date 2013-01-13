*TraitClasses
variableNamesStringFrom: traitInclusions

	^ (String streamContents: [:stream | 
		stream nextPut: Character space. 
		(traitInclusions flatCollect: #variables) 
			do: [:variable | stream nextPutAll: variable] 
			separatedBy: [stream nextPut: Character space]])