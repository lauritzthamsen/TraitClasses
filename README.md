TraitClasses: Reconciling Classes and Traits[![Build Status](https://travis-ci.org/lauritzthamsen/TraitClasses.png?branch=master)](https://travis-ci.org/lauritzthamsen/TraitClasses)
============================================

## Reconciling Classes and Traits
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

## Module Systems course at HPI
This project is part of the course Module Systems of the HPI's Software Architecture Group, see http://www.hpi.uni-potsdam.de/studium/lehrangebot/itse/veranstaltung/modulsysteme.html for the course description.
