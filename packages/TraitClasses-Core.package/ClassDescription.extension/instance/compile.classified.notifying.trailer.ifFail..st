*TraitClasses-Core
compile: code classified: category notifying: requestor trailer: bytes ifFail: failBlock
	"Compile code without logging the source in the changes file"

	| compiledMethodWithNode isCompilingInclusions |
	isCompilingInclusions := requestor == #'allow to change included methods'.
	
	compiledMethodWithNode := super 
		compile: code 
		classified: category 
		notifying: (isCompilingInclusions ifTrue: [nil] ifFalse: [requestor])
		trailer: bytes 
		ifFail: failBlock.
	
	isCompilingInclusions ifFalse: 
		[self traitInclusions do: [:inclusion |
			(inclusion selectors includes: compiledMethodWithNode selector) ifTrue: [
				self error: 'cannot change included method ', inclusion traitClassName, '>>#', compiledMethodWithNode selector]]].
	
	^ compiledMethodWithNode