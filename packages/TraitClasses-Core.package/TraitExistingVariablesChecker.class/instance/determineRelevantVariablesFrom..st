as yet unclassified
determineRelevantVariablesFrom: inclusion
	
	^ inclusion getTraitClass instVarNames reject: [ :varName | inclusion variables includes: varName]    