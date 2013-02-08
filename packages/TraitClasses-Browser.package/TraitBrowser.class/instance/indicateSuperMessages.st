as yet unclassified
indicateSuperMessages

	self okToChange 
		ifTrue: [superMessagesIndicated := superMessagesIndicated not.
			self changed: #superMessagesIndicated.
			self traitButtonsChanged].