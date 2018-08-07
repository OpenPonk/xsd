Class {
	#name : #XSDNotationDeclaration,
	#superclass : #XSDElement,
	#instVars : [
		'annotation',
		'publicIdentifier',
		'systemIdentifier'
	],
	#category : #'XSD-Metamodel-Model'
}

{ #category : #'accessing - NamedComponent' }
XSDNotationDeclaration >> aliasName [
	^ (sharedGeneralizations at: #NamedComponent) aliasName
]

{ #category : #'accessing - NamedComponent' }
XSDNotationDeclaration >> aliasName: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) aliasName: aString
]

{ #category : #'accessing - NamedComponent' }
XSDNotationDeclaration >> aliasURI [
	^ (sharedGeneralizations at: #NamedComponent) aliasURI
]

{ #category : #'accessing - NamedComponent' }
XSDNotationDeclaration >> aliasURI: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) aliasURI: aString
]

{ #category : #accessing }
XSDNotationDeclaration >> annotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	^ annotation
]

{ #category : #accessing }
XSDNotationDeclaration >> annotation: aXSDAnnotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	self assert: [ aXSDAnnotation isNil or: [ aXSDAnnotation oclIsKindOf: 'Annotation' ] ].
	annotation := aXSDAnnotation
]

{ #category : #'accessing - ConcreteComponent' }
XSDNotationDeclaration >> container [
	^ (sharedGeneralizations at: #ConcreteComponent) container
]

{ #category : #'accessing - ConcreteComponent' }
XSDNotationDeclaration >> container: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) container: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDNotationDeclaration >> diagnostics [
	^ (sharedGeneralizations at: #ConcreteComponent) diagnostics
]

{ #category : #'accessing - ConcreteComponent' }
XSDNotationDeclaration >> diagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	(sharedGeneralizations at: #ConcreteComponent) diagnostics: aXSDDiagnostic
]

{ #category : #'accessing - ConcreteComponent' }
XSDNotationDeclaration >> element [
	^ (sharedGeneralizations at: #ConcreteComponent) element
]

{ #category : #'accessing - ConcreteComponent' }
XSDNotationDeclaration >> element: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) element: aDOMElement
]

{ #category : #initialization }
XSDNotationDeclaration >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #NamedComponent.
		sharedGeneralizations at: #SchemaContent.
	}
]

{ #category : #initialization }
XSDNotationDeclaration >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ConcreteComponent put: (XSDConcreteComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Component put: (XSDComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedComponent put: (XSDNamedComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #SchemaContent put: (XSDSchemaContent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NotationDeclaration put: self.
]

{ #category : #'accessing - NamedComponent' }
XSDNotationDeclaration >> name [
	^ (sharedGeneralizations at: #NamedComponent) name
]

{ #category : #'accessing - NamedComponent' }
XSDNotationDeclaration >> name: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) name: aString
]

{ #category : #accessing }
XSDNotationDeclaration >> publicIdentifier [
	"<type: 'String' multiplicity: '0..1'>"
	^ publicIdentifier
]

{ #category : #accessing }
XSDNotationDeclaration >> publicIdentifier: aString [
	"<type: 'String' multiplicity: '0..1'>"
	self assert: [ aString isNil or: [ aString isKindOf: String ] ].
	publicIdentifier := aString
]

{ #category : #'accessing - NamedComponent' }
XSDNotationDeclaration >> qName [
	^ (sharedGeneralizations at: #NamedComponent) qName
]

{ #category : #'accessing - NamedComponent' }
XSDNotationDeclaration >> qName: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) qName: aString
]

{ #category : #'accessing - ConcreteComponent' }
XSDNotationDeclaration >> rootContainer [
	^ (sharedGeneralizations at: #ConcreteComponent) rootContainer
]

{ #category : #'accessing - ConcreteComponent' }
XSDNotationDeclaration >> rootContainer: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	(sharedGeneralizations at: #ConcreteComponent) rootContainer: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDNotationDeclaration >> schema [
	^ (sharedGeneralizations at: #ConcreteComponent) schema
]

{ #category : #'accessing - ConcreteComponent' }
XSDNotationDeclaration >> schema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) schema: aXSDSchema
]

{ #category : #accessing }
XSDNotationDeclaration >> systemIdentifier [
	"<type: 'String' multiplicity: '0..1'>"
	^ systemIdentifier
]

{ #category : #accessing }
XSDNotationDeclaration >> systemIdentifier: aString [
	"<type: 'String' multiplicity: '0..1'>"
	self assert: [ aString isNil or: [ aString isKindOf: String ] ].
	systemIdentifier := aString
]

{ #category : #'accessing - NamedComponent' }
XSDNotationDeclaration >> targetNamespace [
	^ (sharedGeneralizations at: #NamedComponent) targetNamespace
]

{ #category : #'accessing - NamedComponent' }
XSDNotationDeclaration >> targetNamespace: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) targetNamespace: aString
]

{ #category : #'accessing - NamedComponent' }
XSDNotationDeclaration >> uRI [
	^ (sharedGeneralizations at: #NamedComponent) uRI
]

{ #category : #'accessing - NamedComponent' }
XSDNotationDeclaration >> uRI: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) uRI: aString
]
