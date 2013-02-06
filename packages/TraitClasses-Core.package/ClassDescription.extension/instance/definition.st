*TraitClasses-Core
definition
	"Answer a String that defines the receiver."

	| aStream path |
	aStream := WriteStream on: (String new: 300).
	superclass == nil
		ifTrue: [aStream nextPutAll: 'ProtoObject']
		ifFalse: [path := ''.
				self environment scopeFor: superclass name from: nil
						envtAndPathIfFound: [:envt :remotePath | path := remotePath].
				aStream nextPutAll: path , superclass name].
	aStream nextPutAll: self kindOfSubclass;
			store: self name.
	(self hasTraitComposition and: [self traitComposition notEmpty]) ifTrue: [
		aStream cr; tab; nextPutAll: 'uses: ';
			nextPutAll: self traitCompositionString].
	self hasTraitInclusions ifTrue: [
		aStream cr; tab; nextPutAll: 'includes: '.
		self traitInclusionStringOn: aStream].
	aStream cr; tab; nextPutAll: 'instanceVariableNames: ';
			store: self instanceVariablesString.
	aStream cr; tab; nextPutAll: 'classVariableNames: ';
			store: self classVariablesString.
	aStream cr; tab; nextPutAll: 'poolDictionaries: ';
			store: self sharedPoolsString.
	aStream cr; tab; nextPutAll: 'category: ';
			store: (SystemOrganization categoryOfElement: self name) asString.

	superclass ifNil: [ 
		aStream nextPutAll: '.'; cr.
		aStream nextPutAll: self name.
		aStream space; nextPutAll: 'superclass: nil'. ].

	^ aStream contents