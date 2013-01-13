as yet unclassified
testConflictingDoesNotChangeOldClass
	self createTestClassIncluding: {}.
	self createErroneousTestClassAddingSelectors: {#foo}.
	self deny: (self getCreatedClass canUnderstand: #foo)