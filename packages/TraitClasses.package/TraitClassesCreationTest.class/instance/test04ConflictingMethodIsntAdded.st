as yet unclassified
test04ConflictingMethodIsntAdded

	self 
		classIncludingSelectors: {};
		classIncludingSelectorsQuietly: {self class conflictingMethodName}.
		
	self deny: (self createdClass includesSelector: self class conflictingMethodName).