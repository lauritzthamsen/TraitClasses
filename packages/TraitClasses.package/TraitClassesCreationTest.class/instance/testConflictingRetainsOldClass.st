as yet unclassified
testConflictingRetainsOldClass
	| testClass |
	testClass := self createTestClassIncluding: {}.
	self createErroneousTestClass.
	self assert: self getCreatedClass == testClass