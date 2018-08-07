Class {
	#name : #XSDElementDeclaration,
	#superclass : #XSDElement,
	#instVars : [
		'abstract',
		'annotation',
		'anonymousTypeDefinition',
		'block',
		'circular',
		'disallowedSubstitutions',
		'elementDeclarationReference',
		'identityConstraintDefinitions',
		'lexicalFinal',
		'nillable',
		'resolvedElementDeclaration',
		'substitutionGroup',
		'substitutionGroupAffiliation',
		'substitutionGroupExclusions',
		'typeDefinition'
	],
	#category : #'XSD-Metamodel-Model'
}

{ #category : #accessing }
XSDElementDeclaration >> abstract [
	"<type: 'Boolean' multiplicity: '0..1'>"
	^ abstract
]

{ #category : #accessing }
XSDElementDeclaration >> abstract: aBoolean [
	"<type: 'Boolean' multiplicity: '0..1'>"
	self assert: [ aBoolean isNil or: [ aBoolean isKindOf: Boolean ] ].
	abstract := aBoolean
]

{ #category : #'accessing - NamedComponent' }
XSDElementDeclaration >> aliasName [
	^ (sharedGeneralizations at: #NamedComponent) aliasName
]

{ #category : #'accessing - NamedComponent' }
XSDElementDeclaration >> aliasName: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) aliasName: aString
]

{ #category : #'accessing - NamedComponent' }
XSDElementDeclaration >> aliasURI [
	^ (sharedGeneralizations at: #NamedComponent) aliasURI
]

{ #category : #'accessing - NamedComponent' }
XSDElementDeclaration >> aliasURI: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) aliasURI: aString
]

{ #category : #accessing }
XSDElementDeclaration >> annotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	^ annotation
]

{ #category : #accessing }
XSDElementDeclaration >> annotation: aXSDAnnotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	self assert: [ aXSDAnnotation isNil or: [ aXSDAnnotation oclIsKindOf: 'Annotation' ] ].
	annotation := aXSDAnnotation
]

{ #category : #accessing }
XSDElementDeclaration >> anonymousTypeDefinition [
	"<type: 'XSDTypeDefinition' multiplicity: '0..1'>"
	^ anonymousTypeDefinition
]

{ #category : #accessing }
XSDElementDeclaration >> anonymousTypeDefinition: aXSDTypeDefinition [
	"<type: 'XSDTypeDefinition' multiplicity: '0..1'>"
	self assert: [ aXSDTypeDefinition isNil or: [ aXSDTypeDefinition oclIsKindOf: 'TypeDefinition' ] ].
	anonymousTypeDefinition := aXSDTypeDefinition
]

{ #category : #accessing }
XSDElementDeclaration >> block [
	"<type: 'XSDDisallowedSubstitutions' multiplicity: '0..*'>"
	^ block
]

{ #category : #accessing }
XSDElementDeclaration >> block: aXSDDisallowedSubstitutions [
	"<type: 'XSDDisallowedSubstitutions' multiplicity: '0..*'>"
	self assert: [ aXSDDisallowedSubstitutions allSatisfy: [ :each | each isKindOf: XSDDisallowedSubstitutions ] ].
	block := aXSDDisallowedSubstitutions
]

{ #category : #accessing }
XSDElementDeclaration >> circular [
	"<type: 'Boolean' multiplicity: '0..1'>"
	^ circular
]

{ #category : #accessing }
XSDElementDeclaration >> circular: aBoolean [
	"<type: 'Boolean' multiplicity: '0..1'>"
	self assert: [ aBoolean isNil or: [ aBoolean isKindOf: Boolean ] ].
	circular := aBoolean
]

{ #category : #'accessing - Feature' }
XSDElementDeclaration >> constraint [
	^ (sharedGeneralizations at: #Feature) constraint
]

{ #category : #'accessing - Feature' }
XSDElementDeclaration >> constraint: aXSDConstraint [
	"<type: 'XSDConstraint' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Feature) constraint: aXSDConstraint
]

{ #category : #'accessing - ConcreteComponent' }
XSDElementDeclaration >> container [
	^ (sharedGeneralizations at: #ConcreteComponent) container
]

{ #category : #'accessing - ConcreteComponent' }
XSDElementDeclaration >> container: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) container: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDElementDeclaration >> diagnostics [
	^ (sharedGeneralizations at: #ConcreteComponent) diagnostics
]

{ #category : #'accessing - ConcreteComponent' }
XSDElementDeclaration >> diagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	(sharedGeneralizations at: #ConcreteComponent) diagnostics: aXSDDiagnostic
]

{ #category : #accessing }
XSDElementDeclaration >> disallowedSubstitutions [
	"<type: 'XSDDisallowedSubstitutions' multiplicity: '0..*'>"
	^ disallowedSubstitutions
]

{ #category : #accessing }
XSDElementDeclaration >> disallowedSubstitutions: aXSDDisallowedSubstitutions [
	"<type: 'XSDDisallowedSubstitutions' multiplicity: '0..*'>"
	self assert: [ aXSDDisallowedSubstitutions allSatisfy: [ :each | each isKindOf: XSDDisallowedSubstitutions ] ].
	disallowedSubstitutions := aXSDDisallowedSubstitutions
]

{ #category : #'accessing - ConcreteComponent' }
XSDElementDeclaration >> element [
	^ (sharedGeneralizations at: #ConcreteComponent) element
]

{ #category : #'accessing - ConcreteComponent' }
XSDElementDeclaration >> element: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) element: aDOMElement
]

{ #category : #accessing }
XSDElementDeclaration >> elementDeclarationReference [
	"<type: 'Boolean' multiplicity: '0..1'>"
	^ elementDeclarationReference
]

{ #category : #accessing }
XSDElementDeclaration >> elementDeclarationReference: aBoolean [
	"<type: 'Boolean' multiplicity: '0..1'>"
	self assert: [ aBoolean isNil or: [ aBoolean isKindOf: Boolean ] ].
	elementDeclarationReference := aBoolean
]

{ #category : #'accessing - Feature' }
XSDElementDeclaration >> featureReference [
	^ (sharedGeneralizations at: #Feature) featureReference
]

{ #category : #'accessing - Feature' }
XSDElementDeclaration >> featureReference: aBoolean [
	"<type: 'Boolean' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Feature) featureReference: aBoolean
]

{ #category : #'accessing - Feature' }
XSDElementDeclaration >> form [
	^ (sharedGeneralizations at: #Feature) form
]

{ #category : #'accessing - Feature' }
XSDElementDeclaration >> form: aXSDForm [
	"<type: 'XSDForm' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Feature) form: aXSDForm
]

{ #category : #'accessing - Feature' }
XSDElementDeclaration >> global [
	^ (sharedGeneralizations at: #Feature) global
]

{ #category : #'accessing - Feature' }
XSDElementDeclaration >> global: aBoolean [
	"<type: 'Boolean' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Feature) global: aBoolean
]

{ #category : #accessing }
XSDElementDeclaration >> identityConstraintDefinitions [
	"<type: 'XSDIdentityConstraintDefinition' multiplicity: '0..*'>"
	^ identityConstraintDefinitions
]

{ #category : #accessing }
XSDElementDeclaration >> identityConstraintDefinitions: aXSDIdentityConstraintDefinition [
	"<type: 'XSDIdentityConstraintDefinition' multiplicity: '0..*'>"
	self assert: [ aXSDIdentityConstraintDefinition allSatisfy: [ :each | each oclIsKindOf: 'IdentityConstraintDefinition' ] ].
	identityConstraintDefinitions := aXSDIdentityConstraintDefinition
]

{ #category : #initialization }
XSDElementDeclaration >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Feature.
		sharedGeneralizations at: #SchemaContent.
		sharedGeneralizations at: #Term.
	}
]

{ #category : #initialization }
XSDElementDeclaration >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ConcreteComponent put: (XSDConcreteComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Component put: (XSDComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedComponent put: (XSDNamedComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParticleContent put: (XSDParticleContent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Feature put: (XSDFeature newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #SchemaContent put: (XSDSchemaContent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Term put: (XSDTerm newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ElementDeclaration put: self.
]

{ #category : #accessing }
XSDElementDeclaration >> lexicalFinal [
	"<type: 'XSDProhibitedSubstitutions' multiplicity: '0..*'>"
	^ lexicalFinal
]

{ #category : #accessing }
XSDElementDeclaration >> lexicalFinal: aXSDProhibitedSubstitutions [
	"<type: 'XSDProhibitedSubstitutions' multiplicity: '0..*'>"
	self assert: [ aXSDProhibitedSubstitutions allSatisfy: [ :each | each isKindOf: XSDProhibitedSubstitutions ] ].
	lexicalFinal := aXSDProhibitedSubstitutions
]

{ #category : #'accessing - Feature' }
XSDElementDeclaration >> lexicalValue [
	^ (sharedGeneralizations at: #Feature) lexicalValue
]

{ #category : #'accessing - Feature' }
XSDElementDeclaration >> lexicalValue: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Feature) lexicalValue: aString
]

{ #category : #'accessing - NamedComponent' }
XSDElementDeclaration >> name [
	^ (sharedGeneralizations at: #NamedComponent) name
]

{ #category : #'accessing - NamedComponent' }
XSDElementDeclaration >> name: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) name: aString
]

{ #category : #accessing }
XSDElementDeclaration >> nillable [
	"<type: 'Boolean' multiplicity: '0..1'>"
	^ nillable
]

{ #category : #accessing }
XSDElementDeclaration >> nillable: aBoolean [
	"<type: 'Boolean' multiplicity: '0..1'>"
	self assert: [ aBoolean isNil or: [ aBoolean isKindOf: Boolean ] ].
	nillable := aBoolean
]

{ #category : #'accessing - NamedComponent' }
XSDElementDeclaration >> qName [
	^ (sharedGeneralizations at: #NamedComponent) qName
]

{ #category : #'accessing - NamedComponent' }
XSDElementDeclaration >> qName: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) qName: aString
]

{ #category : #accessing }
XSDElementDeclaration >> resolvedElementDeclaration [
	"<type: 'XSDElementDeclaration'>"
	^ resolvedElementDeclaration
]

{ #category : #accessing }
XSDElementDeclaration >> resolvedElementDeclaration: aXSDElementDeclaration [
	"<type: 'XSDElementDeclaration'>"
	self assert: [ aXSDElementDeclaration oclIsKindOf: 'ElementDeclaration' ].
	resolvedElementDeclaration := aXSDElementDeclaration
]

{ #category : #'accessing - Feature' }
XSDElementDeclaration >> resolvedFeature [
	^ (sharedGeneralizations at: #Feature) resolvedFeature
]

{ #category : #'accessing - Feature' }
XSDElementDeclaration >> resolvedFeature: aXSDFeature [
	"<type: 'XSDFeature'>"
	(sharedGeneralizations at: #Feature) resolvedFeature: aXSDFeature
]

{ #category : #'accessing - ConcreteComponent' }
XSDElementDeclaration >> rootContainer [
	^ (sharedGeneralizations at: #ConcreteComponent) rootContainer
]

{ #category : #'accessing - ConcreteComponent' }
XSDElementDeclaration >> rootContainer: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	(sharedGeneralizations at: #ConcreteComponent) rootContainer: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDElementDeclaration >> schema [
	^ (sharedGeneralizations at: #ConcreteComponent) schema
]

{ #category : #'accessing - ConcreteComponent' }
XSDElementDeclaration >> schema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) schema: aXSDSchema
]

{ #category : #'accessing - Feature' }
XSDElementDeclaration >> scope [
	^ (sharedGeneralizations at: #Feature) scope
]

{ #category : #'accessing - Feature' }
XSDElementDeclaration >> scope: aXSDScope [
	"<type: 'XSDScope' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Feature) scope: aXSDScope
]

{ #category : #accessing }
XSDElementDeclaration >> substitutionGroup [
	"<type: 'XSDElementDeclaration' multiplicity: '0..*'>"
	^ substitutionGroup
]

{ #category : #accessing }
XSDElementDeclaration >> substitutionGroup: aXSDElementDeclaration [
	"<type: 'XSDElementDeclaration' multiplicity: '0..*'>"
	self assert: [ aXSDElementDeclaration allSatisfy: [ :each | each oclIsKindOf: 'ElementDeclaration' ] ].
	substitutionGroup := aXSDElementDeclaration
]

{ #category : #accessing }
XSDElementDeclaration >> substitutionGroupAffiliation [
	"<type: 'XSDElementDeclaration' multiplicity: '0..1'>"
	^ substitutionGroupAffiliation
]

{ #category : #accessing }
XSDElementDeclaration >> substitutionGroupAffiliation: aXSDElementDeclaration [
	"<type: 'XSDElementDeclaration' multiplicity: '0..1'>"
	self assert: [ aXSDElementDeclaration isNil or: [ aXSDElementDeclaration oclIsKindOf: 'ElementDeclaration' ] ].
	substitutionGroupAffiliation := aXSDElementDeclaration
]

{ #category : #accessing }
XSDElementDeclaration >> substitutionGroupExclusions [
	"<type: 'XSDSubstitutionGroupExclusions' multiplicity: '0..*'>"
	^ substitutionGroupExclusions
]

{ #category : #accessing }
XSDElementDeclaration >> substitutionGroupExclusions: aXSDSubstitutionGroupExclusions [
	"<type: 'XSDSubstitutionGroupExclusions' multiplicity: '0..*'>"
	self assert: [ aXSDSubstitutionGroupExclusions allSatisfy: [ :each | each isKindOf: XSDSubstitutionGroupExclusions ] ].
	substitutionGroupExclusions := aXSDSubstitutionGroupExclusions
]

{ #category : #'accessing - NamedComponent' }
XSDElementDeclaration >> targetNamespace [
	^ (sharedGeneralizations at: #NamedComponent) targetNamespace
]

{ #category : #'accessing - NamedComponent' }
XSDElementDeclaration >> targetNamespace: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) targetNamespace: aString
]

{ #category : #'accessing - Feature' }
XSDElementDeclaration >> type [
	^ (sharedGeneralizations at: #Feature) type
]

{ #category : #'accessing - Feature' }
XSDElementDeclaration >> type: aXSDTypeDefinition [
	"<type: 'XSDTypeDefinition'>"
	(sharedGeneralizations at: #Feature) type: aXSDTypeDefinition
]

{ #category : #accessing }
XSDElementDeclaration >> typeDefinition [
	"<type: 'XSDTypeDefinition'>"
	^ typeDefinition
]

{ #category : #accessing }
XSDElementDeclaration >> typeDefinition: aXSDTypeDefinition [
	"<type: 'XSDTypeDefinition'>"
	self assert: [ aXSDTypeDefinition oclIsKindOf: 'TypeDefinition' ].
	typeDefinition := aXSDTypeDefinition
]

{ #category : #'accessing - NamedComponent' }
XSDElementDeclaration >> uRI [
	^ (sharedGeneralizations at: #NamedComponent) uRI
]

{ #category : #'accessing - NamedComponent' }
XSDElementDeclaration >> uRI: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) uRI: aString
]

{ #category : #'accessing - Feature' }
XSDElementDeclaration >> value [
	^ (sharedGeneralizations at: #Feature) value
]

{ #category : #'accessing - Feature' }
XSDElementDeclaration >> value: aValue [
	"<type: 'Value' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Feature) value: aValue
]
