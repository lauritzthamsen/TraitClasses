*TraitClasses
transformIncludesArray: anArray

	| renamings compiledMethods classesToMethods |
	"replace renaming associations with original selectors and collect renaming associations"
	renamings := Dictionary new.
	anArray do: [:association |
		association value withIndexDo: [:each :index |
			(each isKindOf: Association) ifTrue:  
				[renamings at: each key put: each value.
				association value at: index put: each key]]].

	"fetch compiledMethods"
	compiledMethods := self associationsToCompiledMethods: anArray.
	
	"apply renaming and return dictionary: className -> (selector -> source)"
	classesToMethods := Dictionary new.
	anArray do: [:association | classesToMethods at: association key put: OrderedCollection new].
	compiledMethods do: [:method || sourceCode |
		sourceCode := 
			(renamings includesKey: method selector)
				ifTrue: [self 
					renameSelectorSource: method 
					to: (renamings at: method selector)]
				ifFalse: [method getSource ].
		(classesToMethods at: method methodClass name) add: method selector -> sourceCode].
	
	^ classesToMethods