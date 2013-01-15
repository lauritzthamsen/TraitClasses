*TraitClasses-Core
methodsInProtocols: anArray

	| classOrganization |
	classOrganization := (Smalltalk classNamed: self) organization.
	     
	^ anArray flatCollect: [:protocolName |
		 classOrganization listAtCategoryNamed: protocolName]