baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			
			spec project: 'SwaUtil' with: [
			spec
				className: 'ConfigurationOfSwaUtil';
				repository: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/MetacelloRepository'].
			
			spec package: 'AST-Core' with: [spec
				repository: 'http://www.squeaksource.com/rb'].
			
			spec
				package: 'TraitClasses-Core' with: [spec requires: #('SwaUtil' 'AST-Core')];
				package: 'TraitClasses-Tests' with: [ spec requires: #('TraitClasses-Core') ].
			spec
				group: 'default' with: #('TraitClasses-Core');
				group: 'Tests' with: #('TraitClasses-Tests') ].