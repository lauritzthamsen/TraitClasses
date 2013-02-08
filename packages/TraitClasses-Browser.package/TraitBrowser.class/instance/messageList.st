as yet unclassified
messageList 

	| messageList |
	messageList := super messageList asOrderedCollection.
	self includedMessagesIndicated ifFalse: [self filterIncludedMessagesFrom: messageList].
	self superMessagesIndicated ifTrue: [self addSuperMessagesTo: messageList].
	^ messageList