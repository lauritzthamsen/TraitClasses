*TraitClasses-Core
variables: anArray
	
	^ TraitInclusion new
		variables: anArray;
		traitClassName: self;  
		yourself