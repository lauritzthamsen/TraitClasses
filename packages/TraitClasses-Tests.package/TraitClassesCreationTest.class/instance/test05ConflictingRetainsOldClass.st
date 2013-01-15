as yet unclassified
test05ConflictingRetainsOldClass

	| originalClass |
	originalClass := self classIncludingSelectors: {}.
	self classIncludingSelectorsQuietly: {self class conflictingMethodName}.
	
	self assert: self createdClass == originalClass.