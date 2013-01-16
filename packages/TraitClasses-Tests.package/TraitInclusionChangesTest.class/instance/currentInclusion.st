helper
currentInclusion

	^ (TraitInclusion new)
		traitClassName: #MessageSend;
		selectors: {#selector. #receiver};
		methodRenamings: (Dictionary newFrom: {(#selector -> #messageName). (#receiver -> #myReceiver)});
		variables: {'selector'. 'receiver'}