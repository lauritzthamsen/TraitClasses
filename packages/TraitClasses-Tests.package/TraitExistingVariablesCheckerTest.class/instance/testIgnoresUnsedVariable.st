as yet unclassified
testIgnoresUnsedVariable
	
	self 
		shouldnt: [inclusion assertVariables: {'exampleVariable3'} areNotUsedIn: testMethod] 
		raise: Error  
	 