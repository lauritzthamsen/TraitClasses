TraitClasses: Reconciling Classes and Traits[![Build Status](https://travis-ci.org/lauritzthamsen/TraitClasses.png)](https://travis-ci.org/lauritzthamsen/TraitClasses)
============================================

## Reconciling Classes and Traits

An attempt to make parts of any class in Squeak/Smalltalk usable just like a trait. This way, programmers don't have to decide upfront to either implement 
functionality with a class or a trait and may even just reuse parts of classes.

This project was started in the course [Module Systems](http://www.hpi.uni-potsdam.de/studium/lehrangebot/itse/veranstaltung/modulsysteme.html) at HPI's [Software Architecture Group](http://www.hpi.uni-potsdam.de/hirschfeld/).

## Installation

1. Setup a Squeak image
 * [CogVM](www.mirandabanda.org/files/Cog/VM/)
 * [Squeak 4.3](http://ftp.squeak.org/4.3/)
 * [CompiledMethod>>#hash](http://source.squeak.org/trunk/Kernel-eem.692.mcz)
 * SwaUtil from [SWA Utilities](http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/SwaUtilities.html)
 * AST-Core from [Refactoring Engine] (http://www.squeaksource.com/rb)
2. Install FileTree, see [dalehenrich/filetree](https://github.com/dalehenrich/filetree)
3. Clone TraitClasses repository, `git clone git@github.com:lauritzthamsen/TraitClasses.git`
4. Load TraitClasses packages
 * In your Squeak image, open a Monticello Browser and add a new FileTree repository. Point it to the *packages*-subdirectory of the cloned repository you just created. Load the latest versions into the Monticello browser.

_Note_: Alternatively, the project with its dependencies can be loaded through its Baseline, see `tests/travisCI.st`.

## Usage

```smalltalk
Superclass subclass: #SubclassName
	"TraitClasses: include other (parts of) other classes"
	includes: { #OtherClass selectors: {#methodA . #MethodB} .
	    #AnotherClass
	      selectors: {#importantMethod}
	      protocols: {#enumeration}
	      variables: {#someVariable. #existingVariable useExisting. (#newVariable -> #usedVariable) useExisting}.
	}
	instanceVariableNames: 'existingVariable usedVariable'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Some-Category'
```

## Trait Browser

Our repository also contains a *TraitClasses-Browser* package that provides an alternative system browser. While all browsers show class definitions with all their inclusions, this alternative browser provides buttons to hide and show *included* methods as well as *inherited* methods. After loading that package, you might want to register that browser as default system browser.

![TraitBrowserScreenie](http://pragtob.files.wordpress.com/2013/02/screenshot-from-2013-02-08-150702.png)
