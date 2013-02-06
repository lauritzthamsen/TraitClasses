*TraitClasses-Core
printSelectorsOf: inclusion on: aStream

	aStream nextPutAll: ' selectors: {'.
	inclusion selectors 
		do: [:selector |
			aStream nextPutAll: '#', selector.
			(inclusion methodRenamings includesKey: selector)
				ifTrue: [aStream nextPutAll: ' -> #', (inclusion methodRenamings at: selector)]] 		separatedBy: [aStream nextPutAll:  '. '].
	aStream nextPutAll: '}'.    