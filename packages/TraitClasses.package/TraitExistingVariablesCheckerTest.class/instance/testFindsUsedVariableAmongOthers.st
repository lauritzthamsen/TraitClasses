as yet unclassified
testFindsUsedVariableAmongOthers
	
	self assertVariables: {'somethingNotUsed'. 'foo'. 'bar'. 'bla'. 'exampleVariable2'} raisesErrorFor: testMethod