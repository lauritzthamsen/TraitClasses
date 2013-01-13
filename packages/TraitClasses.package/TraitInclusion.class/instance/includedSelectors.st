as yet unclassified
includedSelectors

	| includedSelectors |
	includedSelectors := self selectors copyWithoutAll: 
		(self methodRenamings keys).
	includedSelectors addAll: (self methodRenamings collect: #value).
	^ includedSelectors 