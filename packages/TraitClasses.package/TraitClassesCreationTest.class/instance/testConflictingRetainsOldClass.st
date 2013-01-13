as yet unclassified
testConflictingRetainsOldClass

	| testClass |
	testClass := self createTestClassIncluding: {}.

	[self createTestClassIncluding: {#TraitClassesExampleTraitClass selectors: {#name}}] on: Error do: ["nothing"].

	self assert: (Smalltalk classNamed: self class testClassName) == testClass.
