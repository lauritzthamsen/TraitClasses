*TraitClasses-Core
variableNamesStringFor: aCollection

	^ (String streamContents: [:stream | 
		stream nextPut: Character space. 
		aCollection 
			do: [:variable | stream nextPutAll: variable] 
			separatedBy: [stream nextPut: Character space]])