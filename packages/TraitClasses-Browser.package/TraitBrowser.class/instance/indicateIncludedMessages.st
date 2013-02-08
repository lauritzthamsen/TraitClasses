as yet unclassified
indicateIncludedMessages
	self okToChange ifTrue: [
		includedMessagesIndicated := includedMessagesIndicated not.
		self 
			changed: #includedMessagesIndicated;
			traitButtonsChanged]