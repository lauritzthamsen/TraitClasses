accessing
currentInclusion: oldInclusion newInclusion: proposedInclusion 

	self assert: [oldInclusion traitClassName = proposedInclusion traitClassName].

	currentInclusion := oldInclusion.
	newInclusion := proposedInclusion. 