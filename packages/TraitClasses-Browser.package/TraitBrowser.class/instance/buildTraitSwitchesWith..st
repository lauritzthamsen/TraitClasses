as yet unclassified
buildTraitSwitchesWith: builder
	"Build the instance/comment/class switch"
	| panelSpec buttonSpec |
	panelSpec := builder pluggablePanelSpec new.
	panelSpec children: OrderedCollection new.

	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec 
			model: self;
			label: 'super'; 
			state: #superMessagesIndicated; 
			action: #indicateSuperMessages;
			frame: (0@0 corner: 0.5@1).
	panelSpec children addLast: buttonSpec.

	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec 
			model: self;
			label: 'included'; 
			state: #includedMessagesIndicated; 
			action: #indicateIncludedMessages;
			frame: (0.5@0 corner: 1@1).
	panelSpec children addLast: buttonSpec.

	^panelSpec