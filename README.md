TraitClasses: Reconciling Classes and Traits[![Build Status](https://travis-ci.org/lauritzthamsen/TraitClasses.png)](https://travis-ci.org/lauritzthamsen/TraitClasses)
============================================

## Reconciling Classes and Traits
An attempt to make any class in Squeak/Smalltalk usable as a trait. This way, programmers don't have to decide upfront to either implement 
something as a class or as a trait.

This project is part of the course Module Systems of the HPI's Software Architecture Group, see http://www.hpi.uni-potsdam.de/studium/lehrangebot/itse/veranstaltung/modulsysteme.html for the course description.

## Installation
* Set up a working Squeak image. Our setup:
    * Squeak 4.3 + CogVM (With applied [CompiledMethod>>#hash patch](http://source.squeak.org/trunk/Kernel-eem.692.mcz))
    * OmniBrowser and SwaUtilities extensions
* Install [FileTree](https://github.com/dalehenrich/filetree):

```smalltalk
Gofer new
      url: 'http://ss3.gemstone.com/ss/FileTree';
      package: 'ConfigurationOfFileTree';
      load.
((Smalltalk at: #ConfigurationOfFileTree) project version: #'stable') load.
```
* Clone this repository: `git clone git@github.com:lauritzthamsen/TraitClasses.git`
* Inside Squeak, open a Monticello Browser and add a new FileTree repository. Point it to the `packages`-subdirectory of the cloned repository you just created.
* You can now find the project's code and tests in the `TraitClasses-core` and `TraitClasses-tests` packages.

## Usage

```smalltalk
Superclass subclass: #SubclassName
  instanceVariableNames: 'muh'

	"TraitClasses: include other (parts of) other classes"
	includes: { #OtherClass selectors: {#selA . #hi} .
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

