as yet unclassified
changedMethodRenamings

	| commonRenamings |
	commonRenamings := self currentInclusion methodRenamings keys intersection:   
		self newInclusion methodRenamings keys.
	^ commonRenamings select: [:renamedSelector |
		(self currentInclusion methodRenamings at: renamedSelector) 
		~= (self newInclusion methodRenamings at: renamedSelector)]