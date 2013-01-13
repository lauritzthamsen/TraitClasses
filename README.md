TraitClasses: Reconciling Classes and Traits
============================================

## Module Systems course at HPI
An attempt to make any class in Squeak/Smalltalk usable as a trait. This way, programmers don't have to decide upfront to either implement 
something as a class or as a trait.

## Usage

```smalltalk
Superclass subclass: #SubclassName
  instanceVariableNames: 'muh'

	"TraitClasses: include other (parts of) other classes"
	Includes: { #OtherClass selectors: {#selA . #hi} .
	    #AnotherClass . 
	    #YANC 
	      variables: {#muh useExisting. #bla . (#sel1 -> #sel2 useExisting)}
	      selectors: {#useMuh}
	      protocols: {#enumeration}.
	}

	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kernel-Models'
```
