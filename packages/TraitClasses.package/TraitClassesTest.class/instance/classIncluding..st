as yet unclassified
classIncluding: anArray

	^ ExampleSuperClass 
		subclass: self class defaultClassName 
		includes: anArray
		instanceVariableNames: 'existingVariable'
		classVariableNames: ''
		poolDictionaries: ''
		category: 'TraitClasses-Tests'.