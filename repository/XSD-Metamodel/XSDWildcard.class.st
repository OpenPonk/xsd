Class {
	#name : #XSDWildcard,
	#superclass : #XSDElement,
	#instVars : [
		'annotation',
		'annotations',
		'lexicalNamespaceConstraint',
		'namespaceConstraint',
		'namespaceConstraintCategory',
		'processContents'
	],
	#category : #'XSD-Metamodel-Model'
}

{ #category : #accessing }
XSDWildcard >> annotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	^ annotation
]

{ #category : #accessing }
XSDWildcard >> annotation: aXSDAnnotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	self assert: [ aXSDAnnotation isNil or: [ aXSDAnnotation oclIsKindOf: 'Annotation' ] ].
	annotation := aXSDAnnotation
]

{ #category : #accessing }
XSDWildcard >> annotations [
	"<type: 'XSDAnnotation' multiplicity: '0..*'>"
	^ annotations
]

{ #category : #accessing }
XSDWildcard >> annotations: aXSDAnnotation [
	"<type: 'XSDAnnotation' multiplicity: '0..*'>"
	self assert: [ aXSDAnnotation allSatisfy: [ :each | each oclIsKindOf: 'Annotation' ] ].
	annotations := aXSDAnnotation
]

{ #category : #'accessing - ConcreteComponent' }
XSDWildcard >> container [
	^ (sharedGeneralizations at: #ConcreteComponent) container
]

{ #category : #'accessing - ConcreteComponent' }
XSDWildcard >> container: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) container: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDWildcard >> diagnostics [
	^ (sharedGeneralizations at: #ConcreteComponent) diagnostics
]

{ #category : #'accessing - ConcreteComponent' }
XSDWildcard >> diagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	(sharedGeneralizations at: #ConcreteComponent) diagnostics: aXSDDiagnostic
]

{ #category : #'accessing - ConcreteComponent' }
XSDWildcard >> element [
	^ (sharedGeneralizations at: #ConcreteComponent) element
]

{ #category : #'accessing - ConcreteComponent' }
XSDWildcard >> element: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) element: aDOMElement
]

{ #category : #initialization }
XSDWildcard >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Term.
	}
]

{ #category : #initialization }
XSDWildcard >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ConcreteComponent put: (XSDConcreteComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Component put: (XSDComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParticleContent put: (XSDParticleContent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Term put: (XSDTerm newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Wildcard put: self.
]

{ #category : #accessing }
XSDWildcard >> lexicalNamespaceConstraint [
	"<type: 'String' multiplicity: '0..*'>"
	^ lexicalNamespaceConstraint
]

{ #category : #accessing }
XSDWildcard >> lexicalNamespaceConstraint: aString [
	"<type: 'String' multiplicity: '0..*'>"
	self assert: [ aString allSatisfy: [ :each | each isKindOf: String ] ].
	lexicalNamespaceConstraint := aString
]

{ #category : #accessing }
XSDWildcard >> namespaceConstraint [
	"<type: 'String' multiplicity: '0..*'>"
	^ namespaceConstraint
]

{ #category : #accessing }
XSDWildcard >> namespaceConstraint: aString [
	"<type: 'String' multiplicity: '0..*'>"
	self assert: [ aString allSatisfy: [ :each | each isKindOf: String ] ].
	namespaceConstraint := aString
]

{ #category : #accessing }
XSDWildcard >> namespaceConstraintCategory [
	"<type: 'XSDNamespaceConstraintCategory' multiplicity: '0..1'>"
	^ namespaceConstraintCategory
]

{ #category : #accessing }
XSDWildcard >> namespaceConstraintCategory: aXSDNamespaceConstraintCategory [
	"<type: 'XSDNamespaceConstraintCategory' multiplicity: '0..1'>"
	self assert: [ aXSDNamespaceConstraintCategory isNil or: [ aXSDNamespaceConstraintCategory isKindOf: XSDNamespaceConstraintCategory ] ].
	namespaceConstraintCategory := aXSDNamespaceConstraintCategory
]

{ #category : #accessing }
XSDWildcard >> processContents [
	"<type: 'XSDProcessContents' multiplicity: '0..1'>"
	^ processContents
]

{ #category : #accessing }
XSDWildcard >> processContents: aXSDProcessContents [
	"<type: 'XSDProcessContents' multiplicity: '0..1'>"
	self assert: [ aXSDProcessContents isNil or: [ aXSDProcessContents isKindOf: XSDProcessContents ] ].
	processContents := aXSDProcessContents
]

{ #category : #'accessing - ConcreteComponent' }
XSDWildcard >> rootContainer [
	^ (sharedGeneralizations at: #ConcreteComponent) rootContainer
]

{ #category : #'accessing - ConcreteComponent' }
XSDWildcard >> rootContainer: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	(sharedGeneralizations at: #ConcreteComponent) rootContainer: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDWildcard >> schema [
	^ (sharedGeneralizations at: #ConcreteComponent) schema
]

{ #category : #'accessing - ConcreteComponent' }
XSDWildcard >> schema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) schema: aXSDSchema
]
