as yet unclassified
createTestClassIncluding: anArray

	^ TraitClassesBaseClass 
		subclass: self class testClassName 
		includes: anArray
		instanceVariableNames: 'existingVariable'
		classVariableNames: ''
		poolDictionaries: ''
		category: 'TraitClasses-Tests'.