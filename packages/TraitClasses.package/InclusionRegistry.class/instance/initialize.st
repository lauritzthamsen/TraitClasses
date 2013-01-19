initialize-release
initialize 

	self inclusions: Dictionary new.  
	
	SystemChangeNotifier uniqueInstance 
		notify: self 
		ofSystemChangesOfItem: SystemChangeNotifier classKind
		change: RemovedEvent changeKind
		using: #'handleRemoveClassEvent:'.