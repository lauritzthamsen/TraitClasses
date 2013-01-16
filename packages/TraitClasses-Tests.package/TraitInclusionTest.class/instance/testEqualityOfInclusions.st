as yet unclassified
testEqualityOfInclusions

	| anInclusion anotherInclusion |
	anInclusion := TraitInclusion new 
		traitClassName: #MessageSend;
		selectors: {#selector. #receiver};
		methodRenamings: (Dictionary newFrom: {#selector -> #messageName});
		variables: {'selector'}.
	anotherInclusion := anInclusion deepCopy.
	
	self assert: anInclusion = anotherInclusion.