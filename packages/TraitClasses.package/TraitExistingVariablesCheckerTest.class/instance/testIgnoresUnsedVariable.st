as yet unclassified
testIgnoresUnsedVariable
	
	checker assertVariables: {'exampleVariable3'} areNotUsedIn: testMethod.
	self 
		shouldnt: [checker assertVariables: {'exampleVariable3'} areNotUsedIn: testMethod] 
		raise: Error  
	 