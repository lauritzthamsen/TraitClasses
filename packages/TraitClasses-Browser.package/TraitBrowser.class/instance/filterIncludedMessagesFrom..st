as yet unclassified
filterIncludedMessagesFrom: messageList
	
	| inclusions |
	inclusions := InclusionRegistry current at: self selectedClass name.
	inclusions ifNil: [ ^ self ].
	inclusions do: [ :inclusion |
		messageList removeAllFoundIn: inclusion includedSelectors ].