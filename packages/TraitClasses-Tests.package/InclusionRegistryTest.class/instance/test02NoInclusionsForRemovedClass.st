as yet unclassified
test02NoInclusionsForRemovedClass

	| testClass |
	testClass := self classIncludingSelectors: {}.
	testClass removeFromSystem.

	self deny: (InclusionRegistry current includesKey: self class defaultClassName).