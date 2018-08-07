Class {
	#name : #XSDTypeDefinition,
	#superclass : #XSDElement,
	#instVars : [
		'annotation',
		'annotations',
		'baseType',
		'complexType',
		'derivationAnnotation',
		'rootType',
		'simpleType'
	],
	#category : #'XSD-Metamodel-Model'
}

{ #category : #'accessing - NamedComponent' }
XSDTypeDefinition >> aliasName [
	^ (sharedGeneralizations at: #NamedComponent) aliasName
]

{ #category : #'accessing - NamedComponent' }
XSDTypeDefinition >> aliasName: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) aliasName: aString
]

{ #category : #'accessing - NamedComponent' }
XSDTypeDefinition >> aliasURI [
	^ (sharedGeneralizations at: #NamedComponent) aliasURI
]

{ #category : #'accessing - NamedComponent' }
XSDTypeDefinition >> aliasURI: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) aliasURI: aString
]

{ #category : #accessing }
XSDTypeDefinition >> annotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	^ annotation
]

{ #category : #accessing }
XSDTypeDefinition >> annotation: aXSDAnnotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	self assert: [ aXSDAnnotation isNil or: [ aXSDAnnotation oclIsKindOf: 'Annotation' ] ].
	annotation := aXSDAnnotation
]

{ #category : #accessing }
XSDTypeDefinition >> annotations [
	"<type: 'XSDAnnotation' multiplicity: '0..*'>"
	^ annotations
]

{ #category : #accessing }
XSDTypeDefinition >> annotations: aXSDAnnotation [
	"<type: 'XSDAnnotation' multiplicity: '0..*'>"
	self assert: [ aXSDAnnotation allSatisfy: [ :each | each oclIsKindOf: 'Annotation' ] ].
	annotations := aXSDAnnotation
]

{ #category : #accessing }
XSDTypeDefinition >> baseType [
	"<type: 'XSDTypeDefinition'>"
	^ baseType
]

{ #category : #accessing }
XSDTypeDefinition >> baseType: aXSDTypeDefinition [
	"<type: 'XSDTypeDefinition'>"
	self assert: [ aXSDTypeDefinition oclIsKindOf: 'TypeDefinition' ].
	baseType := aXSDTypeDefinition
]

{ #category : #'accessing - RedefinableComponent' }
XSDTypeDefinition >> circular [
	^ (sharedGeneralizations at: #RedefinableComponent) circular
]

{ #category : #'accessing - RedefinableComponent' }
XSDTypeDefinition >> circular: aBoolean [
	"<type: 'Boolean' multiplicity: '0..1'>"
	(sharedGeneralizations at: #RedefinableComponent) circular: aBoolean
]

{ #category : #accessing }
XSDTypeDefinition >> complexType [
	"<type: 'XSDParticle' multiplicity: '0..1'>"
	^ complexType
]

{ #category : #accessing }
XSDTypeDefinition >> complexType: aXSDParticle [
	"<type: 'XSDParticle' multiplicity: '0..1'>"
	self assert: [ aXSDParticle isNil or: [ aXSDParticle oclIsKindOf: 'Particle' ] ].
	complexType := aXSDParticle
]

{ #category : #'accessing - ConcreteComponent' }
XSDTypeDefinition >> container [
	^ (sharedGeneralizations at: #ConcreteComponent) container
]

{ #category : #'accessing - ConcreteComponent' }
XSDTypeDefinition >> container: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) container: aXSDConcreteComponent
]

{ #category : #accessing }
XSDTypeDefinition >> derivationAnnotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	^ derivationAnnotation
]

{ #category : #accessing }
XSDTypeDefinition >> derivationAnnotation: aXSDAnnotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	self assert: [ aXSDAnnotation isNil or: [ aXSDAnnotation oclIsKindOf: 'Annotation' ] ].
	derivationAnnotation := aXSDAnnotation
]

{ #category : #'accessing - ConcreteComponent' }
XSDTypeDefinition >> diagnostics [
	^ (sharedGeneralizations at: #ConcreteComponent) diagnostics
]

{ #category : #'accessing - ConcreteComponent' }
XSDTypeDefinition >> diagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	(sharedGeneralizations at: #ConcreteComponent) diagnostics: aXSDDiagnostic
]

{ #category : #'accessing - ConcreteComponent' }
XSDTypeDefinition >> element [
	^ (sharedGeneralizations at: #ConcreteComponent) element
]

{ #category : #'accessing - ConcreteComponent' }
XSDTypeDefinition >> element: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) element: aDOMElement
]

{ #category : #initialization }
XSDTypeDefinition >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #RedefinableComponent.
		sharedGeneralizations at: #RedefineContent.
	}
]

{ #category : #initialization }
XSDTypeDefinition >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ConcreteComponent put: (XSDConcreteComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Component put: (XSDComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #SchemaContent put: (XSDSchemaContent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedComponent put: (XSDNamedComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefineContent put: (XSDRedefineContent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableComponent put: (XSDRedefinableComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TypeDefinition put: self.
]

{ #category : #'accessing - NamedComponent' }
XSDTypeDefinition >> name [
	^ (sharedGeneralizations at: #NamedComponent) name
]

{ #category : #'accessing - NamedComponent' }
XSDTypeDefinition >> name: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) name: aString
]

{ #category : #'accessing - NamedComponent' }
XSDTypeDefinition >> qName [
	^ (sharedGeneralizations at: #NamedComponent) qName
]

{ #category : #'accessing - NamedComponent' }
XSDTypeDefinition >> qName: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) qName: aString
]

{ #category : #'accessing - ConcreteComponent' }
XSDTypeDefinition >> rootContainer [
	^ (sharedGeneralizations at: #ConcreteComponent) rootContainer
]

{ #category : #'accessing - ConcreteComponent' }
XSDTypeDefinition >> rootContainer: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	(sharedGeneralizations at: #ConcreteComponent) rootContainer: aXSDConcreteComponent
]

{ #category : #accessing }
XSDTypeDefinition >> rootType [
	"<type: 'XSDTypeDefinition'>"
	^ rootType
]

{ #category : #accessing }
XSDTypeDefinition >> rootType: aXSDTypeDefinition [
	"<type: 'XSDTypeDefinition'>"
	self assert: [ aXSDTypeDefinition oclIsKindOf: 'TypeDefinition' ].
	rootType := aXSDTypeDefinition
]

{ #category : #'accessing - ConcreteComponent' }
XSDTypeDefinition >> schema [
	^ (sharedGeneralizations at: #ConcreteComponent) schema
]

{ #category : #'accessing - ConcreteComponent' }
XSDTypeDefinition >> schema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) schema: aXSDSchema
]

{ #category : #accessing }
XSDTypeDefinition >> simpleType [
	"<type: 'XSDSimpleTypeDefinition' multiplicity: '0..1'>"
	^ simpleType
]

{ #category : #accessing }
XSDTypeDefinition >> simpleType: aXSDSimpleTypeDefinition [
	"<type: 'XSDSimpleTypeDefinition' multiplicity: '0..1'>"
	self assert: [ aXSDSimpleTypeDefinition isNil or: [ aXSDSimpleTypeDefinition oclIsKindOf: 'SimpleTypeDefinition' ] ].
	simpleType := aXSDSimpleTypeDefinition
]

{ #category : #'accessing - NamedComponent' }
XSDTypeDefinition >> targetNamespace [
	^ (sharedGeneralizations at: #NamedComponent) targetNamespace
]

{ #category : #'accessing - NamedComponent' }
XSDTypeDefinition >> targetNamespace: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) targetNamespace: aString
]

{ #category : #'accessing - NamedComponent' }
XSDTypeDefinition >> uRI [
	^ (sharedGeneralizations at: #NamedComponent) uRI
]

{ #category : #'accessing - NamedComponent' }
XSDTypeDefinition >> uRI: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) uRI: aString
]
