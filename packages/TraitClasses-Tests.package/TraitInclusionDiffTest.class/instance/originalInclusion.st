helper
originalInclusion

	^ (TraitInclusion new)
		traitClassName: #MessageSend;
		selectors: {#selector. #receiver};
		methodRenamings: (Dictionary newFrom: {(#selector -> #messageName)});
		variables: {'selector'. 'receiver'}