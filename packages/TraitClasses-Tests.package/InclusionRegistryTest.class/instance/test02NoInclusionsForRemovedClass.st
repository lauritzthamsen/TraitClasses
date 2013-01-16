as yet unclassified
test02NoInclusionsForRemovedClass

	| testClass name |
	testClass := self classIncludingSelectors: {}.
	name := testClass name.
	testClass removeFromSystem.

	self deny: (InclusionRegistry current includesKey: name).