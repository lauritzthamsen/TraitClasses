as yet unclassified
openEditString: aString
      "Create a pluggable version of all the views for a Browser, including views and controllers."
	"Example: TraitBrowser fullOnClass: Browser."
	
	| builder max messageListPosition |
	builder := ToolBuilder default.
	max := self wantsOptionalButtons 
		ifTrue:[0.42] 
		ifFalse:[0.5].
	
	messageListPosition := self
		classListFrame: max
		fromTop: 0
		fromLeft: 0.75
		width: 0.25.
	
	^ self buildWindowWith: builder specs: {
		(0@0 corner: 0.25@max) -> [self buildSystemCategoryListWith: builder].
		(self classListFrame: max) -> [self buildClassListWith: builder].
		(self switchesFrame: max) -> [self buildSwitchesWith: builder].
		(0.5@0 corner: 0.75@max) -> [self buildMessageCategoryListWith: builder].
		messageListPosition -> [self buildMessageListWith: builder].
		(self traitSwitchesFrame: max) -> [self buildTraitSwitchesWith: builder].
		(0@max corner: 1@1) -> [self buildCodePaneWith: builder].
	}