*TraitClasses-Core
selectors: selectors variables: variables

	^ TraitInclusion new 
		traitClassName: self;
		setVariables: variables;
		setSelectors: selectors;
		yourself