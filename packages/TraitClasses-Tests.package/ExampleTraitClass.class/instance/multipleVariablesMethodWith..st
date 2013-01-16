otherProtocol
multipleVariablesMethodWith: param
	| aVariable |
	aVariable := 'Test'.
	exampleVariable2 := 123.
	#('A' 'B' 'D') do: [ :element | 
		| temp |
		temp := element, '_A']