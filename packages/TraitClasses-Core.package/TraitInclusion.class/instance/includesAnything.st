testing
includesAnything

	^ self selectors notEmpty
		or: [self variables notEmpty or: [self existingVariables notEmpty]]
		