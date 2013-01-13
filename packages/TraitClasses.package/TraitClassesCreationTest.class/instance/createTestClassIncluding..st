as yet unclassified
createTestClassIncluding: anArray

	^ Object 
		subclass: self class testClassName 
		includes: anArray
		instanceVariableNames: 'existingVariable'
		classVariableNames: ''
		poolDictionaries: ''
		category: 'TraitClasses-Tests'.