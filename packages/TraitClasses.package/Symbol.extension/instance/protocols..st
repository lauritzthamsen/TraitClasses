*TraitClasses
protocols: anArray

	| classOrganization |
	classOrganization := (Smalltalk classNamed: self) organization.
	     
	^ self -> (anArray flatCollect: [:protocolName |
		 classOrganization listAtCategoryNamed: protocolName])