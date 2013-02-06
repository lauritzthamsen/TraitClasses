*TraitClasses-Core
traitInclusionStringOn: aStream

	aStream nextPut: ${.
	self traitInclusions 
		do: [:inclusion |
			aStream nextPutAll: '#', inclusion traitClassName.
			inclusion includedSelectors ifNotEmpty: [
				self printSelectorsOf: inclusion on: aStream].
			inclusion allIncludedVariables ifNotEmpty: [
				self printVariablesOf: inclusion on: aStream]] 
		separatedBy: [aStream nextPutAll: '. ', String cr, String tab, String tab].
	aStream nextPut: $}.