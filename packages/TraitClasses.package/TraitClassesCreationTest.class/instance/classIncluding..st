as yet unclassified
classIncluding: anArray

	^ TraitClassesBaseClass 
		subclass: self class defaultClassName 
		includes: anArray
		instanceVariableNames: 'existingVariable'
		classVariableNames: ''
		poolDictionaries: ''
		category: 'TraitClasses-Tests'.