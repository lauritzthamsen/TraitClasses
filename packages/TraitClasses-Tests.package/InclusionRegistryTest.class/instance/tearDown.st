as yet unclassified
tearDown

	super tearDown.
	(InclusionRegistry current includesKey: self class defaultClassName)
		ifTrue: [InclusionRegistry current removeKey: self class defaultClassName].