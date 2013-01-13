*TraitClasses
associationsToCompiledMethods: anArray

	^ (anArray collect: [:anAssociation |
		anAssociation value collect: [:symbol |
			(Smalltalk classNamed: anAssociation key) >> symbol ]]) flatten