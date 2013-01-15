"Load and run tests to be performed by TravisCI"
Transcript cr; show: 'travis---->travisCI.st'.

Metacello new
  configuration: 'Sample';
  version: '0.9.0';
  repository: 'github://dalehenrich/sample:configuration';
  load: 'Tests'.
  
Metacello new
  baseline: 'TraitClasses';
  repository: 'filetree://', MetacelloBuilderTravisCI gitPath, '/TraitClasses/packages';
  load: 'Tests'.

"Run the tests"
TravisCIHarness
  value: #( 'TraitClasses' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.

