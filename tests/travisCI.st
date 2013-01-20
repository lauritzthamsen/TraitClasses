"Load and run tests to be performed by TravisCI"
Transcript cr; show: 'travis---->travisCI.st'.

"Load the project"
Metacello new
  baseline: 'TraitClasses';
  repository: 'filetree://', MetacelloBuilderTravisCI gitPath, '/TraitClasses/packages';
  load: 'Tests'.

"Author initials as our tests compile code"
Utilities setAuthorInitials: 'travis'.

"Run the tests"
TravisCIHarness
  value: #('TraitClasses')
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.
