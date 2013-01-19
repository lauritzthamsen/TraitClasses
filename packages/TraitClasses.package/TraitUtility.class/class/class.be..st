as yet unclassified
class: classA be: classB

	| firstClass firstClassName secondClass secondClassName |
	firstClass := classA.
	firstClassName := classA name asSymbol.
	secondClass := classB.
	secondClassName := classB name asSymbol.
	
	firstClass setName: secondClassName.
	secondClass setName: firstClassName.
	
	Smalltalk 
		at: firstClassName put: secondClass;
		at: secondClassName put: firstClass.
		
	secondClass updateInstancesFrom: firstClass.
		
	"firstClass allInstances do: [:each |
		secondClass adoptInstance: each from: firstClass ].
	secondClass allInstances do: [:each |
		secondClass adoptInstance: each from: firstClass ]."
		
	"firstClass allInstances do: [:each|
		each primitiveChangeClassTo: secondClass].
	secondClass allInstances do: [:each|
		each primitiveChangeClassTo: firstClass]."