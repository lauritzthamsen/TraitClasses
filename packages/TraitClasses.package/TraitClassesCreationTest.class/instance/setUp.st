as yet unclassified
setUp

	testClass := Object 
		subclass: self class testClassName 
		includes: {#TraitClassesExampleTraitClass -> {#exampleMethod}}
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: 'TraitClasses-Tests'.