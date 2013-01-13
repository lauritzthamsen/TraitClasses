as yet unclassified
testAssociationsToCompiledMethods

	self assert: 
		(Class associationsToCompiledMethods: 
			{#Object -> {#hash. #=. #name}.
			#Behavior -> {#compile:}.
			#Number -> {#+}}) asSet 
			= 
			{Object>>#hash. 
			Object>>#name. 
			Object>>#=. 
			Behavior>>#compile:. 
			Number>>#+} asSet