as yet unclassified
classIncluding: anArray

	^ ExampleBaseClass 
		subclass: self class defaultClassName 
		includes: anArray
		instanceVariableNames: 'existingVariable'
		classVariableNames: ''
		poolDictionaries: ''
		category: 'TraitClasses-Tests'.