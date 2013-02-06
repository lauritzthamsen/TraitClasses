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
    * ASTCore (already included in OmniBrowser)
* Install [FileTree](https://github.com/dalehenrich/filetree):

```smalltalk
Gofer new
      url: 'http://ss3.gemstone.com/ss/FileTree';
      package: 'ConfigurationOfFileTree';
      load.
((Smalltalk at: #ConfigurationOfFileTree) project version: #'stable') load.
```
* Clone this repository: `git clone git@github.com:lauritzthamsen/TraitClasses.git`
* Inside Squeak, open a Monticello Browser and add a new FileTree repository. Point it to the `packages`-subdirectory of the cloned repository you just created. Load the latest version into the Monticello browser.
* You can now find the project's code and tests in the `TraitClasses-core` and `TraitClasses-tests` packages.

_Note_: Alternatively, the whole project with all it's dependencies can be imported by loading its Baseline, like it is done in `tests/travisCI.st`.

## Usage

```smalltalk
Superclass subclass: #SubclassName
	instanceVariableNames: 'status someVar bar'

	"TraitClasses: include other (parts of) other classes"
	includes: { #OtherClass selectors: {#selA . #hello} .
	    #AnotherClass . 
	    #YetAnotherClass 
	      variables: {#someVar useExisting. #anotherVar . (#foo -> #bar) useExisting}
	      selectors: {#importantMethod}
	      protocols: {#enumeration}.
	}
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kernel-Models'
```

