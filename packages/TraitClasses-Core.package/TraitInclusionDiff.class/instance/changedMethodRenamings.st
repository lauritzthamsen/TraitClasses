as yet unclassified
changedMethodRenamings

	| commonRenamings |
	commonRenamings := self originalInclusion methodRenamings keys intersection:   
		self currentInclusion methodRenamings keys.
	^ commonRenamings select: [:renamedSelector |
		(self originalInclusion methodRenamings at: renamedSelector) 
		~= (self currentInclusion methodRenamings at: renamedSelector)]