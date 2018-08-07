Class {
	#name : #XSDAttributeGroupDefinition,
	#superclass : #XSDElement,
	#instVars : [
		'annotation',
		'attributeGroupDefinitionReference',
		'attributeUses',
		'attributeWildcard',
		'attributeWildcardContent',
		'contents',
		'resolvedAttributeGroupDefinition',
		'syntheticWildcard'
	],
	#category : #'XSD-Metamodel-Model'
}

{ #category : #'accessing - NamedComponent' }
XSDAttributeGroupDefinition >> aliasName [
	^ (sharedGeneralizations at: #NamedComponent) aliasName
]

{ #category : #'accessing - NamedComponent' }
XSDAttributeGroupDefinition >> aliasName: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) aliasName: aString
]

{ #category : #'accessing - NamedComponent' }
XSDAttributeGroupDefinition >> aliasURI [
	^ (sharedGeneralizations at: #NamedComponent) aliasURI
]

{ #category : #'accessing - NamedComponent' }
XSDAttributeGroupDefinition >> aliasURI: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) aliasURI: aString
]

{ #category : #accessing }
XSDAttributeGroupDefinition >> annotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	^ annotation
]

{ #category : #accessing }
XSDAttributeGroupDefinition >> annotation: aXSDAnnotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	self assert: [ aXSDAnnotation isNil or: [ aXSDAnnotation oclIsKindOf: 'Annotation' ] ].
	annotation := aXSDAnnotation
]

{ #category : #accessing }
XSDAttributeGroupDefinition >> attributeGroupDefinitionReference [
	"<type: 'Boolean' multiplicity: '0..1'>"
	^ attributeGroupDefinitionReference
]

{ #category : #accessing }
XSDAttributeGroupDefinition >> attributeGroupDefinitionReference: aBoolean [
	"<type: 'Boolean' multiplicity: '0..1'>"
	self assert: [ aBoolean isNil or: [ aBoolean isKindOf: Boolean ] ].
	attributeGroupDefinitionReference := aBoolean
]

{ #category : #accessing }
XSDAttributeGroupDefinition >> attributeUses [
	"<type: 'XSDAttributeUse' multiplicity: '0..*'>"
	^ attributeUses
]

{ #category : #accessing }
XSDAttributeGroupDefinition >> attributeUses: aXSDAttributeUse [
	"<type: 'XSDAttributeUse' multiplicity: '0..*'>"
	self assert: [ aXSDAttributeUse allSatisfy: [ :each | each oclIsKindOf: 'AttributeUse' ] ].
	attributeUses := aXSDAttributeUse
]

{ #category : #accessing }
XSDAttributeGroupDefinition >> attributeWildcard [
	"<type: 'XSDWildcard' multiplicity: '0..1'>"
	^ attributeWildcard
]

{ #category : #accessing }
XSDAttributeGroupDefinition >> attributeWildcard: aXSDWildcard [
	"<type: 'XSDWildcard' multiplicity: '0..1'>"
	self assert: [ aXSDWildcard isNil or: [ aXSDWildcard oclIsKindOf: 'Wildcard' ] ].
	attributeWildcard := aXSDWildcard
]

{ #category : #accessing }
XSDAttributeGroupDefinition >> attributeWildcardContent [
	"<type: 'XSDWildcard' multiplicity: '0..1'>"
	^ attributeWildcardContent
]

{ #category : #accessing }
XSDAttributeGroupDefinition >> attributeWildcardContent: aXSDWildcard [
	"<type: 'XSDWildcard' multiplicity: '0..1'>"
	self assert: [ aXSDWildcard isNil or: [ aXSDWildcard oclIsKindOf: 'Wildcard' ] ].
	attributeWildcardContent := aXSDWildcard
]

{ #category : #'accessing - RedefinableComponent' }
XSDAttributeGroupDefinition >> circular [
	^ (sharedGeneralizations at: #RedefinableComponent) circular
]

{ #category : #'accessing - RedefinableComponent' }
XSDAttributeGroupDefinition >> circular: aBoolean [
	"<type: 'Boolean' multiplicity: '0..1'>"
	(sharedGeneralizations at: #RedefinableComponent) circular: aBoolean
]

{ #category : #'accessing - ConcreteComponent' }
XSDAttributeGroupDefinition >> container [
	^ (sharedGeneralizations at: #ConcreteComponent) container
]

{ #category : #'accessing - ConcreteComponent' }
XSDAttributeGroupDefinition >> container: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) container: aXSDConcreteComponent
]

{ #category : #accessing }
XSDAttributeGroupDefinition >> contents [
	"<type: 'XSDAttributeGroupContent' multiplicity: '0..*'>"
	^ contents
]

{ #category : #accessing }
XSDAttributeGroupDefinition >> contents: aXSDAttributeGroupContent [
	"<type: 'XSDAttributeGroupContent' multiplicity: '0..*'>"
	self assert: [ aXSDAttributeGroupContent allSatisfy: [ :each | each oclIsKindOf: 'AttributeGroupContent' ] ].
	contents := aXSDAttributeGroupContent
]

{ #category : #'accessing - ConcreteComponent' }
XSDAttributeGroupDefinition >> diagnostics [
	^ (sharedGeneralizations at: #ConcreteComponent) diagnostics
]

{ #category : #'accessing - ConcreteComponent' }
XSDAttributeGroupDefinition >> diagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	(sharedGeneralizations at: #ConcreteComponent) diagnostics: aXSDDiagnostic
]

{ #category : #'accessing - ConcreteComponent' }
XSDAttributeGroupDefinition >> element [
	^ (sharedGeneralizations at: #ConcreteComponent) element
]

{ #category : #'accessing - ConcreteComponent' }
XSDAttributeGroupDefinition >> element: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) element: aDOMElement
]

{ #category : #initialization }
XSDAttributeGroupDefinition >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #RedefinableComponent.
		sharedGeneralizations at: #AttributeGroupContent.
		sharedGeneralizations at: #RedefineContent.
	}
]

{ #category : #initialization }
XSDAttributeGroupDefinition >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ConcreteComponent put: (XSDConcreteComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Component put: (XSDComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #SchemaContent put: (XSDSchemaContent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedComponent put: (XSDNamedComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefineContent put: (XSDRedefineContent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableComponent put: (XSDRedefinableComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #AttributeGroupContent put: (XSDAttributeGroupContent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #AttributeGroupDefinition put: self.
]

{ #category : #'accessing - NamedComponent' }
XSDAttributeGroupDefinition >> name [
	^ (sharedGeneralizations at: #NamedComponent) name
]

{ #category : #'accessing - NamedComponent' }
XSDAttributeGroupDefinition >> name: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) name: aString
]

{ #category : #'accessing - NamedComponent' }
XSDAttributeGroupDefinition >> qName [
	^ (sharedGeneralizations at: #NamedComponent) qName
]

{ #category : #'accessing - NamedComponent' }
XSDAttributeGroupDefinition >> qName: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) qName: aString
]

{ #category : #accessing }
XSDAttributeGroupDefinition >> resolvedAttributeGroupDefinition [
	"<type: 'XSDAttributeGroupDefinition'>"
	^ resolvedAttributeGroupDefinition
]

{ #category : #accessing }
XSDAttributeGroupDefinition >> resolvedAttributeGroupDefinition: aXSDAttributeGroupDefinition [
	"<type: 'XSDAttributeGroupDefinition'>"
	self assert: [ aXSDAttributeGroupDefinition oclIsKindOf: 'AttributeGroupDefinition' ].
	resolvedAttributeGroupDefinition := aXSDAttributeGroupDefinition
]

{ #category : #'accessing - ConcreteComponent' }
XSDAttributeGroupDefinition >> rootContainer [
	^ (sharedGeneralizations at: #ConcreteComponent) rootContainer
]

{ #category : #'accessing - ConcreteComponent' }
XSDAttributeGroupDefinition >> rootContainer: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	(sharedGeneralizations at: #ConcreteComponent) rootContainer: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDAttributeGroupDefinition >> schema [
	^ (sharedGeneralizations at: #ConcreteComponent) schema
]

{ #category : #'accessing - ConcreteComponent' }
XSDAttributeGroupDefinition >> schema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) schema: aXSDSchema
]

{ #category : #accessing }
XSDAttributeGroupDefinition >> syntheticWildcard [
	"<type: 'XSDWildcard' multiplicity: '0..1'>"
	^ syntheticWildcard
]

{ #category : #accessing }
XSDAttributeGroupDefinition >> syntheticWildcard: aXSDWildcard [
	"<type: 'XSDWildcard' multiplicity: '0..1'>"
	self assert: [ aXSDWildcard isNil or: [ aXSDWildcard oclIsKindOf: 'Wildcard' ] ].
	syntheticWildcard := aXSDWildcard
]

{ #category : #'accessing - NamedComponent' }
XSDAttributeGroupDefinition >> targetNamespace [
	^ (sharedGeneralizations at: #NamedComponent) targetNamespace
]

{ #category : #'accessing - NamedComponent' }
XSDAttributeGroupDefinition >> targetNamespace: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) targetNamespace: aString
]

{ #category : #'accessing - NamedComponent' }
XSDAttributeGroupDefinition >> uRI [
	^ (sharedGeneralizations at: #NamedComponent) uRI
]

{ #category : #'accessing - NamedComponent' }
XSDAttributeGroupDefinition >> uRI: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) uRI: aString
]
