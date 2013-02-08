as yet unclassified
selectedMessage

	| code |
	code := super selectedMessage.
	code ifEmpty: [
		self selectedClass 
			allSuperclassesDo: [ :class |
				(class includesSelector: self selectedMessageName)
					ifTrue: [^ (class >> self selectedMessageName) getSource ]]].
	^ code