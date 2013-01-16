helper
classWithMethodAndVariable

	^ self classIncluding: {(self class exampleTraitClassName selectors: {#exampleMethod} variables: {#exampleVariable})}