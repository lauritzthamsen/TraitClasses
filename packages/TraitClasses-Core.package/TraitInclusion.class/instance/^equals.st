as yet unclassified
= traitInclusion

	^ (traitInclusion isKindOf: self class) 
		and: [self traitClassName = traitInclusion traitClassName]
		and: [self selectors includesAllOf: traitInclusion selectors]
		and: [self methodRenamings includesAllOf: traitInclusion methodRenamings]
		and: [self variables includesAllOf: traitInclusion variables]