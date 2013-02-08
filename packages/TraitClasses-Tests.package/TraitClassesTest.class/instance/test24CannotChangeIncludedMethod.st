as yet unclassified
test24CannotChangeIncludedMethod

	| targetClass |
	targetClass := self classIncludingSelectors: {#exampleMethod}.

	self 
		should: [targetClass compile: 'exampleMethod ^ 1234567890']
		raise: Error
		whoseDescriptionIncludes: 'cannot change included method'
		description: 'it should not be possible to change included methods'. 