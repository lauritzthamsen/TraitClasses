helper
currentInclusion
	
	^ TraitInclusion new
		traitClassName: #MessageSend;
		selectors: {#selector. #arguments};
		methodRenamings: (Dictionary newFrom: {(#selector -> #message). (#arguments -> #args)});
		variables: {'selector'. 'arguments'}