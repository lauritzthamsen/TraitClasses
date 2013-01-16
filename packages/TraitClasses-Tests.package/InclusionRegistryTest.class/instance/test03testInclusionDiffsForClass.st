as yet unclassified
test03testInclusionDiffsForClass

	| testClass newInclusion diffs |
	testClass := self classIncluding: 
		{self class exampleTraitClassName 
			selectors: {#exampleMethod}
			variables: {#exampleVariable}}.
	newInclusion := TraitInclusion new
		traitClassName: self class exampleTraitClassName;
		selectors: {#exampleMethod2. #exampleMethod3};
		variables: {}.
		
	diffs := InclusionRegistry current 
		inclusionDiffsForClass: self class defaultClassName 
		with: {newInclusion}.   
		
	self assert: ((diffs collect: #removedMethods) flatten includesAllOf: {#exampleMethod}).
	self assert: ((diffs collect: #addedMethods) flatten includesAllOf: {#exampleMethod2. #exampleMethod3}).
	self assert: ((diffs collect: #removedVariables) flatten includesAllOf: {#exampleVariable}).
	self assert: ((diffs collect: #addedVariables) flatten isEmpty).
	