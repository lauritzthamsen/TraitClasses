initialize-release
handleRemoveClassEvent: aRemovedEvent

	self inclusions 
		removeKey: aRemovedEvent item name
		ifAbsent: ["nothing"]