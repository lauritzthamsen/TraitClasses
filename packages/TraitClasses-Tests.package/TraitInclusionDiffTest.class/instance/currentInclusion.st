helper
currentInclusion
	
	^ TraitInclusion new
		traitClassName: #MessageSend;
		selectors: {#selector. #arguments};
		methodRenamings: (Dictionary newFrom: {(#selector -> #message)});
		variables: {'selector'. 'arguments'}