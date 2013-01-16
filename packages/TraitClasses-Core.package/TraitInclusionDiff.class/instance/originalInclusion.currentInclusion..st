accessing
originalInclusion: oldInclusion currentInclusion: newInclusion 

	self assert: [oldInclusion traitClassName = newInclusion traitClassName].

	originalInclusion := oldInclusion.
	currentInclusion := newInclusion. 