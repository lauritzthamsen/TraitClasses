as yet unclassified
tearDown

	(Smalltalk classNamed: self class defaultClassName) ifNotNilDo: [:class |
		class removeFromSystem].