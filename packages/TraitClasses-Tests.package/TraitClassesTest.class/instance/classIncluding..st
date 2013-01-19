as yet unclassified
classIncluding: anArray

	^ ExampleSuperClass 
		subclass: self class defaultClassName 
		includes: anArray
		instanceVariableNames: 'existingVariable existingVariable2'
		classVariableNames: ''
		poolDictionaries: ''
		category: 'TraitClasses-Tests'.