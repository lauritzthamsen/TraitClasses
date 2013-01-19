as yet unclassified
tearDown

	(Smalltalk classNamed: self class defaultClassName) ifNotNilDo: [:class |
		class removeFromSystem].
	(InclusionRegistry current includesKey: self class defaultClassName)
		ifTrue: [InclusionRegistry current removeKey: self class defaultClassName].