Class {
	#name : #XSDModelGroup,
	#superclass : #XSDElement,
	#instVars : [
		'annotation',
		'compositor',
		'contents',
		'particles'
	],
	#category : #'XSD-Metamodel-Model'
}

{ #category : #accessing }
XSDModelGroup >> annotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	^ annotation
]

{ #category : #accessing }
XSDModelGroup >> annotation: aXSDAnnotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	self assert: [ aXSDAnnotation isNil or: [ aXSDAnnotation oclIsKindOf: 'Annotation' ] ].
	annotation := aXSDAnnotation
]

{ #category : #accessing }
XSDModelGroup >> compositor [
	"<type: 'XSDCompositor' multiplicity: '0..1'>"
	^ compositor
]

{ #category : #accessing }
XSDModelGroup >> compositor: aXSDCompositor [
	"<type: 'XSDCompositor' multiplicity: '0..1'>"
	self assert: [ aXSDCompositor isNil or: [ aXSDCompositor isKindOf: XSDCompositor ] ].
	compositor := aXSDCompositor
]

{ #category : #'accessing - ConcreteComponent' }
XSDModelGroup >> container [
	^ (sharedGeneralizations at: #ConcreteComponent) container
]

{ #category : #'accessing - ConcreteComponent' }
XSDModelGroup >> container: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) container: aXSDConcreteComponent
]

{ #category : #accessing }
XSDModelGroup >> contents [
	"<type: 'XSDParticle' multiplicity: '0..*'>"
	^ contents
]

{ #category : #accessing }
XSDModelGroup >> contents: aXSDParticle [
	"<type: 'XSDParticle' multiplicity: '0..*'>"
	self assert: [ aXSDParticle allSatisfy: [ :each | each oclIsKindOf: 'Particle' ] ].
	contents := aXSDParticle
]

{ #category : #'accessing - ConcreteComponent' }
XSDModelGroup >> diagnostics [
	^ (sharedGeneralizations at: #ConcreteComponent) diagnostics
]

{ #category : #'accessing - ConcreteComponent' }
XSDModelGroup >> diagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	(sharedGeneralizations at: #ConcreteComponent) diagnostics: aXSDDiagnostic
]

{ #category : #'accessing - ConcreteComponent' }
XSDModelGroup >> element [
	^ (sharedGeneralizations at: #ConcreteComponent) element
]

{ #category : #'accessing - ConcreteComponent' }
XSDModelGroup >> element: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) element: aDOMElement
]

{ #category : #initialization }
XSDModelGroup >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Term.
	}
]

{ #category : #initialization }
XSDModelGroup >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ConcreteComponent put: (XSDConcreteComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Component put: (XSDComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParticleContent put: (XSDParticleContent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Term put: (XSDTerm newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ModelGroup put: self.
]

{ #category : #accessing }
XSDModelGroup >> particles [
	"<type: 'XSDParticle' multiplicity: '1..*'>"
	^ particles
]

{ #category : #accessing }
XSDModelGroup >> particles: aXSDParticle [
	"<type: 'XSDParticle' multiplicity: '1..*'>"
	self assert: [ aXSDParticle allSatisfy: [ :each | each oclIsKindOf: 'Particle' ] ].
	particles := aXSDParticle
]

{ #category : #'accessing - ConcreteComponent' }
XSDModelGroup >> rootContainer [
	^ (sharedGeneralizations at: #ConcreteComponent) rootContainer
]

{ #category : #'accessing - ConcreteComponent' }
XSDModelGroup >> rootContainer: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	(sharedGeneralizations at: #ConcreteComponent) rootContainer: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDModelGroup >> schema [
	^ (sharedGeneralizations at: #ConcreteComponent) schema
]

{ #category : #'accessing - ConcreteComponent' }
XSDModelGroup >> schema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) schema: aXSDSchema
]
