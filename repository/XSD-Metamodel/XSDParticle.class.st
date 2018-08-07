Class {
	#name : #XSDParticle,
	#superclass : #XSDElement,
	#instVars : [
		'content',
		'maxOccurs',
		'minOccurs',
		'term'
	],
	#category : #'XSD-Metamodel-Model'
}

{ #category : #'accessing - ConcreteComponent' }
XSDParticle >> container [
	^ (sharedGeneralizations at: #ConcreteComponent) container
]

{ #category : #'accessing - ConcreteComponent' }
XSDParticle >> container: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) container: aXSDConcreteComponent
]

{ #category : #accessing }
XSDParticle >> content [
	"<type: 'XSDParticleContent'>"
	^ content
]

{ #category : #accessing }
XSDParticle >> content: aXSDParticleContent [
	"<type: 'XSDParticleContent'>"
	self assert: [ aXSDParticleContent oclIsKindOf: 'ParticleContent' ].
	content := aXSDParticleContent
]

{ #category : #'accessing - ConcreteComponent' }
XSDParticle >> diagnostics [
	^ (sharedGeneralizations at: #ConcreteComponent) diagnostics
]

{ #category : #'accessing - ConcreteComponent' }
XSDParticle >> diagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	(sharedGeneralizations at: #ConcreteComponent) diagnostics: aXSDDiagnostic
]

{ #category : #'accessing - ConcreteComponent' }
XSDParticle >> element [
	^ (sharedGeneralizations at: #ConcreteComponent) element
]

{ #category : #'accessing - ConcreteComponent' }
XSDParticle >> element: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) element: aDOMElement
]

{ #category : #initialization }
XSDParticle >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #ComplexTypeContent.
	}
]

{ #category : #initialization }
XSDParticle >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ConcreteComponent put: (XSDConcreteComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Component put: (XSDComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ComplexTypeContent put: (XSDComplexTypeContent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Particle put: self.
]

{ #category : #accessing }
XSDParticle >> maxOccurs [
	"<type: 'Integer' multiplicity: '0..1'>"
	^ maxOccurs
]

{ #category : #accessing }
XSDParticle >> maxOccurs: anUnboundedNatural [
	"<type: 'Integer' multiplicity: '0..1'>"

	self assert: [ anUnboundedNatural isNil or: [ (anUnboundedNatural isKindOf: Integer) or: [ anUnboundedNatural = '*' ] ] ].
	maxOccurs := anUnboundedNatural
]

{ #category : #accessing }
XSDParticle >> minOccurs [
	"<type: 'Integer' multiplicity: '0..1'>"
	^ minOccurs
]

{ #category : #accessing }
XSDParticle >> minOccurs: anInteger [
	"<type: 'Integer' multiplicity: '0..1'>"
	self assert: [ anInteger isNil or: [ anInteger isKindOf: Integer ] ].
	minOccurs := anInteger
]

{ #category : #'accessing - ConcreteComponent' }
XSDParticle >> rootContainer [
	^ (sharedGeneralizations at: #ConcreteComponent) rootContainer
]

{ #category : #'accessing - ConcreteComponent' }
XSDParticle >> rootContainer: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	(sharedGeneralizations at: #ConcreteComponent) rootContainer: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDParticle >> schema [
	^ (sharedGeneralizations at: #ConcreteComponent) schema
]

{ #category : #'accessing - ConcreteComponent' }
XSDParticle >> schema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) schema: aXSDSchema
]

{ #category : #accessing }
XSDParticle >> term [
	"<type: 'XSDTerm'>"
	^ term
]

{ #category : #accessing }
XSDParticle >> term: aXSDTerm [
	"<type: 'XSDTerm'>"
	self assert: [ aXSDTerm oclIsKindOf: 'Term' ].
	term := aXSDTerm
]
