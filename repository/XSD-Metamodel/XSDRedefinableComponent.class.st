Class {
	#name : #XSDRedefinableComponent,
	#superclass : #XSDElement,
	#instVars : [
		'circular'
	],
	#category : #'XSD-Metamodel-Model'
}

{ #category : #'accessing - NamedComponent' }
XSDRedefinableComponent >> aliasName [
	^ (sharedGeneralizations at: #NamedComponent) aliasName
]

{ #category : #'accessing - NamedComponent' }
XSDRedefinableComponent >> aliasName: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) aliasName: aString
]

{ #category : #'accessing - NamedComponent' }
XSDRedefinableComponent >> aliasURI [
	^ (sharedGeneralizations at: #NamedComponent) aliasURI
]

{ #category : #'accessing - NamedComponent' }
XSDRedefinableComponent >> aliasURI: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) aliasURI: aString
]

{ #category : #accessing }
XSDRedefinableComponent >> circular [
	"<type: 'Boolean' multiplicity: '0..1'>"
	^ circular
]

{ #category : #accessing }
XSDRedefinableComponent >> circular: aBoolean [
	"<type: 'Boolean' multiplicity: '0..1'>"
	self assert: [ aBoolean isNil or: [ aBoolean isKindOf: Boolean ] ].
	circular := aBoolean
]

{ #category : #'accessing - ConcreteComponent' }
XSDRedefinableComponent >> container [
	^ (sharedGeneralizations at: #ConcreteComponent) container
]

{ #category : #'accessing - ConcreteComponent' }
XSDRedefinableComponent >> container: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) container: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDRedefinableComponent >> diagnostics [
	^ (sharedGeneralizations at: #ConcreteComponent) diagnostics
]

{ #category : #'accessing - ConcreteComponent' }
XSDRedefinableComponent >> diagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	(sharedGeneralizations at: #ConcreteComponent) diagnostics: aXSDDiagnostic
]

{ #category : #'accessing - ConcreteComponent' }
XSDRedefinableComponent >> element [
	^ (sharedGeneralizations at: #ConcreteComponent) element
]

{ #category : #'accessing - ConcreteComponent' }
XSDRedefinableComponent >> element: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) element: aDOMElement
]

{ #category : #initialization }
XSDRedefinableComponent >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #NamedComponent.
		sharedGeneralizations at: #RedefineContent.
	}
]

{ #category : #initialization }
XSDRedefinableComponent >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ConcreteComponent put: (XSDConcreteComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Component put: (XSDComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #SchemaContent put: (XSDSchemaContent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedComponent put: (XSDNamedComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefineContent put: (XSDRedefineContent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableComponent put: self.
]

{ #category : #'accessing - NamedComponent' }
XSDRedefinableComponent >> name [
	^ (sharedGeneralizations at: #NamedComponent) name
]

{ #category : #'accessing - NamedComponent' }
XSDRedefinableComponent >> name: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) name: aString
]

{ #category : #'accessing - NamedComponent' }
XSDRedefinableComponent >> qName [
	^ (sharedGeneralizations at: #NamedComponent) qName
]

{ #category : #'accessing - NamedComponent' }
XSDRedefinableComponent >> qName: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) qName: aString
]

{ #category : #'accessing - ConcreteComponent' }
XSDRedefinableComponent >> rootContainer [
	^ (sharedGeneralizations at: #ConcreteComponent) rootContainer
]

{ #category : #'accessing - ConcreteComponent' }
XSDRedefinableComponent >> rootContainer: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	(sharedGeneralizations at: #ConcreteComponent) rootContainer: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDRedefinableComponent >> schema [
	^ (sharedGeneralizations at: #ConcreteComponent) schema
]

{ #category : #'accessing - ConcreteComponent' }
XSDRedefinableComponent >> schema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) schema: aXSDSchema
]

{ #category : #'accessing - NamedComponent' }
XSDRedefinableComponent >> targetNamespace [
	^ (sharedGeneralizations at: #NamedComponent) targetNamespace
]

{ #category : #'accessing - NamedComponent' }
XSDRedefinableComponent >> targetNamespace: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) targetNamespace: aString
]

{ #category : #'accessing - NamedComponent' }
XSDRedefinableComponent >> uRI [
	^ (sharedGeneralizations at: #NamedComponent) uRI
]

{ #category : #'accessing - NamedComponent' }
XSDRedefinableComponent >> uRI: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) uRI: aString
]
