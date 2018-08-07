Class {
	#name : #XSDNamedComponent,
	#superclass : #XSDElement,
	#instVars : [
		'aliasName',
		'aliasURI',
		'name',
		'qName',
		'targetNamespace',
		'uRI'
	],
	#category : #'XSD-Metamodel-Model'
}

{ #category : #accessing }
XSDNamedComponent >> aliasName [
	"<type: 'String' multiplicity: '0..1'>"
	^ aliasName
]

{ #category : #accessing }
XSDNamedComponent >> aliasName: aString [
	"<type: 'String' multiplicity: '0..1'>"
	self assert: [ aString isNil or: [ aString isKindOf: String ] ].
	aliasName := aString
]

{ #category : #accessing }
XSDNamedComponent >> aliasURI [
	"<type: 'String' multiplicity: '0..1'>"
	^ aliasURI
]

{ #category : #accessing }
XSDNamedComponent >> aliasURI: aString [
	"<type: 'String' multiplicity: '0..1'>"
	self assert: [ aString isNil or: [ aString isKindOf: String ] ].
	aliasURI := aString
]

{ #category : #'accessing - ConcreteComponent' }
XSDNamedComponent >> container [
	^ (sharedGeneralizations at: #ConcreteComponent) container
]

{ #category : #'accessing - ConcreteComponent' }
XSDNamedComponent >> container: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) container: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDNamedComponent >> diagnostics [
	^ (sharedGeneralizations at: #ConcreteComponent) diagnostics
]

{ #category : #'accessing - ConcreteComponent' }
XSDNamedComponent >> diagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	(sharedGeneralizations at: #ConcreteComponent) diagnostics: aXSDDiagnostic
]

{ #category : #'accessing - ConcreteComponent' }
XSDNamedComponent >> element [
	^ (sharedGeneralizations at: #ConcreteComponent) element
]

{ #category : #'accessing - ConcreteComponent' }
XSDNamedComponent >> element: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) element: aDOMElement
]

{ #category : #initialization }
XSDNamedComponent >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Component.
	}
]

{ #category : #initialization }
XSDNamedComponent >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ConcreteComponent put: (XSDConcreteComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Component put: (XSDComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedComponent put: self.
]

{ #category : #accessing }
XSDNamedComponent >> name [
	"<type: 'String' multiplicity: '0..1'>"
	^ name
]

{ #category : #accessing }
XSDNamedComponent >> name: aString [
	"<type: 'String' multiplicity: '0..1'>"
	self assert: [ aString isNil or: [ aString isKindOf: String ] ].
	name := aString
]

{ #category : #accessing }
XSDNamedComponent >> qName [
	"<type: 'String' multiplicity: '0..1'>"
	^ qName
]

{ #category : #accessing }
XSDNamedComponent >> qName: aString [
	"<type: 'String' multiplicity: '0..1'>"
	self assert: [ aString isNil or: [ aString isKindOf: String ] ].
	qName := aString
]

{ #category : #'accessing - ConcreteComponent' }
XSDNamedComponent >> rootContainer [
	^ (sharedGeneralizations at: #ConcreteComponent) rootContainer
]

{ #category : #'accessing - ConcreteComponent' }
XSDNamedComponent >> rootContainer: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	(sharedGeneralizations at: #ConcreteComponent) rootContainer: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDNamedComponent >> schema [
	^ (sharedGeneralizations at: #ConcreteComponent) schema
]

{ #category : #'accessing - ConcreteComponent' }
XSDNamedComponent >> schema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) schema: aXSDSchema
]

{ #category : #accessing }
XSDNamedComponent >> targetNamespace [
	"<type: 'String' multiplicity: '0..1'>"
	^ targetNamespace
]

{ #category : #accessing }
XSDNamedComponent >> targetNamespace: aString [
	"<type: 'String' multiplicity: '0..1'>"
	self assert: [ aString isNil or: [ aString isKindOf: String ] ].
	targetNamespace := aString
]

{ #category : #accessing }
XSDNamedComponent >> uRI [
	"<type: 'String' multiplicity: '0..1'>"
	^ uRI
]

{ #category : #accessing }
XSDNamedComponent >> uRI: aString [
	"<type: 'String' multiplicity: '0..1'>"
	self assert: [ aString isNil or: [ aString isKindOf: String ] ].
	uRI := aString
]
