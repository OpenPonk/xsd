Class {
	#name : #XSDModelGroupDefinition,
	#superclass : #XSDElement,
	#instVars : [
		'annotation',
		'modelGroup',
		'modelGroupDefinitionReference',
		'resolvedModelGroupDefinition'
	],
	#category : #'XSD-Metamodel-Model'
}

{ #category : #'accessing - NamedComponent' }
XSDModelGroupDefinition >> aliasName [
	^ (sharedGeneralizations at: #NamedComponent) aliasName
]

{ #category : #'accessing - NamedComponent' }
XSDModelGroupDefinition >> aliasName: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) aliasName: aString
]

{ #category : #'accessing - NamedComponent' }
XSDModelGroupDefinition >> aliasURI [
	^ (sharedGeneralizations at: #NamedComponent) aliasURI
]

{ #category : #'accessing - NamedComponent' }
XSDModelGroupDefinition >> aliasURI: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) aliasURI: aString
]

{ #category : #accessing }
XSDModelGroupDefinition >> annotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	^ annotation
]

{ #category : #accessing }
XSDModelGroupDefinition >> annotation: aXSDAnnotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	self assert: [ aXSDAnnotation isNil or: [ aXSDAnnotation oclIsKindOf: 'Annotation' ] ].
	annotation := aXSDAnnotation
]

{ #category : #'accessing - RedefinableComponent' }
XSDModelGroupDefinition >> circular [
	^ (sharedGeneralizations at: #RedefinableComponent) circular
]

{ #category : #'accessing - RedefinableComponent' }
XSDModelGroupDefinition >> circular: aBoolean [
	"<type: 'Boolean' multiplicity: '0..1'>"
	(sharedGeneralizations at: #RedefinableComponent) circular: aBoolean
]

{ #category : #'accessing - ConcreteComponent' }
XSDModelGroupDefinition >> container [
	^ (sharedGeneralizations at: #ConcreteComponent) container
]

{ #category : #'accessing - ConcreteComponent' }
XSDModelGroupDefinition >> container: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) container: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDModelGroupDefinition >> diagnostics [
	^ (sharedGeneralizations at: #ConcreteComponent) diagnostics
]

{ #category : #'accessing - ConcreteComponent' }
XSDModelGroupDefinition >> diagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	(sharedGeneralizations at: #ConcreteComponent) diagnostics: aXSDDiagnostic
]

{ #category : #'accessing - ConcreteComponent' }
XSDModelGroupDefinition >> element [
	^ (sharedGeneralizations at: #ConcreteComponent) element
]

{ #category : #'accessing - ConcreteComponent' }
XSDModelGroupDefinition >> element: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) element: aDOMElement
]

{ #category : #initialization }
XSDModelGroupDefinition >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #RedefinableComponent.
		sharedGeneralizations at: #ParticleContent.
		sharedGeneralizations at: #RedefineContent.
	}
]

{ #category : #initialization }
XSDModelGroupDefinition >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ConcreteComponent put: (XSDConcreteComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Component put: (XSDComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #SchemaContent put: (XSDSchemaContent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedComponent put: (XSDNamedComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefineContent put: (XSDRedefineContent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableComponent put: (XSDRedefinableComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ParticleContent put: (XSDParticleContent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ModelGroupDefinition put: self.
]

{ #category : #accessing }
XSDModelGroupDefinition >> modelGroup [
	"<type: 'XSDModelGroup'>"
	^ modelGroup
]

{ #category : #accessing }
XSDModelGroupDefinition >> modelGroup: aXSDModelGroup [
	"<type: 'XSDModelGroup'>"
	self assert: [ aXSDModelGroup oclIsKindOf: 'ModelGroup' ].
	modelGroup := aXSDModelGroup
]

{ #category : #accessing }
XSDModelGroupDefinition >> modelGroupDefinitionReference [
	"<type: 'Boolean' multiplicity: '0..1'>"
	^ modelGroupDefinitionReference
]

{ #category : #accessing }
XSDModelGroupDefinition >> modelGroupDefinitionReference: aBoolean [
	"<type: 'Boolean' multiplicity: '0..1'>"
	self assert: [ aBoolean isNil or: [ aBoolean isKindOf: Boolean ] ].
	modelGroupDefinitionReference := aBoolean
]

{ #category : #'accessing - NamedComponent' }
XSDModelGroupDefinition >> name [
	^ (sharedGeneralizations at: #NamedComponent) name
]

{ #category : #'accessing - NamedComponent' }
XSDModelGroupDefinition >> name: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) name: aString
]

{ #category : #'accessing - NamedComponent' }
XSDModelGroupDefinition >> qName [
	^ (sharedGeneralizations at: #NamedComponent) qName
]

{ #category : #'accessing - NamedComponent' }
XSDModelGroupDefinition >> qName: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) qName: aString
]

{ #category : #accessing }
XSDModelGroupDefinition >> resolvedModelGroupDefinition [
	"<type: 'XSDModelGroupDefinition'>"
	^ resolvedModelGroupDefinition
]

{ #category : #accessing }
XSDModelGroupDefinition >> resolvedModelGroupDefinition: aXSDModelGroupDefinition [
	"<type: 'XSDModelGroupDefinition'>"
	self assert: [ aXSDModelGroupDefinition oclIsKindOf: 'ModelGroupDefinition' ].
	resolvedModelGroupDefinition := aXSDModelGroupDefinition
]

{ #category : #'accessing - ConcreteComponent' }
XSDModelGroupDefinition >> rootContainer [
	^ (sharedGeneralizations at: #ConcreteComponent) rootContainer
]

{ #category : #'accessing - ConcreteComponent' }
XSDModelGroupDefinition >> rootContainer: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	(sharedGeneralizations at: #ConcreteComponent) rootContainer: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDModelGroupDefinition >> schema [
	^ (sharedGeneralizations at: #ConcreteComponent) schema
]

{ #category : #'accessing - ConcreteComponent' }
XSDModelGroupDefinition >> schema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) schema: aXSDSchema
]

{ #category : #'accessing - NamedComponent' }
XSDModelGroupDefinition >> targetNamespace [
	^ (sharedGeneralizations at: #NamedComponent) targetNamespace
]

{ #category : #'accessing - NamedComponent' }
XSDModelGroupDefinition >> targetNamespace: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) targetNamespace: aString
]

{ #category : #'accessing - NamedComponent' }
XSDModelGroupDefinition >> uRI [
	^ (sharedGeneralizations at: #NamedComponent) uRI
]

{ #category : #'accessing - NamedComponent' }
XSDModelGroupDefinition >> uRI: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) uRI: aString
]
