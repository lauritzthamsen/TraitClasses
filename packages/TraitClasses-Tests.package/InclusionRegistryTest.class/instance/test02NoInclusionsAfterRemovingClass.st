tests
test02NoInclusionsAfterRemovingClass

	| testClass |
	testClass := self classIncludingSelectors: {}.
	testClass removeFromSystem.

	self deny: (InclusionRegistry current includesKey: self class defaultClassName).