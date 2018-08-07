Class {
	#name : #XSDAttributeDeclaration,
	#superclass : #XSDElement,
	#instVars : [
		'annotation',
		'anonymousTypeDefinition',
		'attributeDeclarationReference',
		'resolvedAttributeDeclaration',
		'typeDefinition'
	],
	#category : #'XSD-Metamodel-Model'
}

{ #category : #'accessing - NamedComponent' }
XSDAttributeDeclaration >> aliasName [
	^ (sharedGeneralizations at: #NamedComponent) aliasName
]

{ #category : #'accessing - NamedComponent' }
XSDAttributeDeclaration >> aliasName: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) aliasName: aString
]

{ #category : #'accessing - NamedComponent' }
XSDAttributeDeclaration >> aliasURI [
	^ (sharedGeneralizations at: #NamedComponent) aliasURI
]

{ #category : #'accessing - NamedComponent' }
XSDAttributeDeclaration >> aliasURI: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) aliasURI: aString
]

{ #category : #accessing }
XSDAttributeDeclaration >> annotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	^ annotation
]

{ #category : #accessing }
XSDAttributeDeclaration >> annotation: aXSDAnnotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	self assert: [ aXSDAnnotation isNil or: [ aXSDAnnotation oclIsKindOf: 'Annotation' ] ].
	annotation := aXSDAnnotation
]

{ #category : #accessing }
XSDAttributeDeclaration >> anonymousTypeDefinition [
	"<type: 'XSDSimpleTypeDefinition' multiplicity: '0..1'>"
	^ anonymousTypeDefinition
]

{ #category : #accessing }
XSDAttributeDeclaration >> anonymousTypeDefinition: aXSDSimpleTypeDefinition [
	"<type: 'XSDSimpleTypeDefinition' multiplicity: '0..1'>"
	self assert: [ aXSDSimpleTypeDefinition isNil or: [ aXSDSimpleTypeDefinition oclIsKindOf: 'SimpleTypeDefinition' ] ].
	anonymousTypeDefinition := aXSDSimpleTypeDefinition
]

{ #category : #accessing }
XSDAttributeDeclaration >> attributeDeclarationReference [
	"<type: 'Boolean' multiplicity: '0..1'>"
	^ attributeDeclarationReference
]

{ #category : #accessing }
XSDAttributeDeclaration >> attributeDeclarationReference: aBoolean [
	"<type: 'Boolean' multiplicity: '0..1'>"
	self assert: [ aBoolean isNil or: [ aBoolean isKindOf: Boolean ] ].
	attributeDeclarationReference := aBoolean
]

{ #category : #'accessing - Feature' }
XSDAttributeDeclaration >> constraint [
	^ (sharedGeneralizations at: #Feature) constraint
]

{ #category : #'accessing - Feature' }
XSDAttributeDeclaration >> constraint: aXSDConstraint [
	"<type: 'XSDConstraint' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Feature) constraint: aXSDConstraint
]

{ #category : #'accessing - ConcreteComponent' }
XSDAttributeDeclaration >> container [
	^ (sharedGeneralizations at: #ConcreteComponent) container
]

{ #category : #'accessing - ConcreteComponent' }
XSDAttributeDeclaration >> container: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) container: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDAttributeDeclaration >> diagnostics [
	^ (sharedGeneralizations at: #ConcreteComponent) diagnostics
]

{ #category : #'accessing - ConcreteComponent' }
XSDAttributeDeclaration >> diagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	(sharedGeneralizations at: #ConcreteComponent) diagnostics: aXSDDiagnostic
]

{ #category : #'accessing - ConcreteComponent' }
XSDAttributeDeclaration >> element [
	^ (sharedGeneralizations at: #ConcreteComponent) element
]

{ #category : #'accessing - ConcreteComponent' }
XSDAttributeDeclaration >> element: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) element: aDOMElement
]

{ #category : #'accessing - Feature' }
XSDAttributeDeclaration >> featureReference [
	^ (sharedGeneralizations at: #Feature) featureReference
]

{ #category : #'accessing - Feature' }
XSDAttributeDeclaration >> featureReference: aBoolean [
	"<type: 'Boolean' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Feature) featureReference: aBoolean
]

{ #category : #'accessing - Feature' }
XSDAttributeDeclaration >> form [
	^ (sharedGeneralizations at: #Feature) form
]

{ #category : #'accessing - Feature' }
XSDAttributeDeclaration >> form: aXSDForm [
	"<type: 'XSDForm' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Feature) form: aXSDForm
]

{ #category : #'accessing - Feature' }
XSDAttributeDeclaration >> global [
	^ (sharedGeneralizations at: #Feature) global
]

{ #category : #'accessing - Feature' }
XSDAttributeDeclaration >> global: aBoolean [
	"<type: 'Boolean' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Feature) global: aBoolean
]

{ #category : #initialization }
XSDAttributeDeclaration >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Feature.
		sharedGeneralizations at: #SchemaContent.
	}
]

{ #category : #initialization }
XSDAttributeDeclaration >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ConcreteComponent put: (XSDConcreteComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Component put: (XSDComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedComponent put: (XSDNamedComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Feature put: (XSDFeature newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #SchemaContent put: (XSDSchemaContent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #AttributeDeclaration put: self.
]

{ #category : #'accessing - Feature' }
XSDAttributeDeclaration >> lexicalValue [
	^ (sharedGeneralizations at: #Feature) lexicalValue
]

{ #category : #'accessing - Feature' }
XSDAttributeDeclaration >> lexicalValue: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Feature) lexicalValue: aString
]

{ #category : #'accessing - NamedComponent' }
XSDAttributeDeclaration >> name [
	^ (sharedGeneralizations at: #NamedComponent) name
]

{ #category : #'accessing - NamedComponent' }
XSDAttributeDeclaration >> name: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) name: aString
]

{ #category : #'accessing - NamedComponent' }
XSDAttributeDeclaration >> qName [
	^ (sharedGeneralizations at: #NamedComponent) qName
]

{ #category : #'accessing - NamedComponent' }
XSDAttributeDeclaration >> qName: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) qName: aString
]

{ #category : #accessing }
XSDAttributeDeclaration >> resolvedAttributeDeclaration [
	"<type: 'XSDAttributeDeclaration'>"
	^ resolvedAttributeDeclaration
]

{ #category : #accessing }
XSDAttributeDeclaration >> resolvedAttributeDeclaration: aXSDAttributeDeclaration [
	"<type: 'XSDAttributeDeclaration'>"
	self assert: [ aXSDAttributeDeclaration oclIsKindOf: 'AttributeDeclaration' ].
	resolvedAttributeDeclaration := aXSDAttributeDeclaration
]

{ #category : #'accessing - Feature' }
XSDAttributeDeclaration >> resolvedFeature [
	^ (sharedGeneralizations at: #Feature) resolvedFeature
]

{ #category : #'accessing - Feature' }
XSDAttributeDeclaration >> resolvedFeature: aXSDFeature [
	"<type: 'XSDFeature'>"
	(sharedGeneralizations at: #Feature) resolvedFeature: aXSDFeature
]

{ #category : #'accessing - ConcreteComponent' }
XSDAttributeDeclaration >> rootContainer [
	^ (sharedGeneralizations at: #ConcreteComponent) rootContainer
]

{ #category : #'accessing - ConcreteComponent' }
XSDAttributeDeclaration >> rootContainer: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	(sharedGeneralizations at: #ConcreteComponent) rootContainer: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDAttributeDeclaration >> schema [
	^ (sharedGeneralizations at: #ConcreteComponent) schema
]

{ #category : #'accessing - ConcreteComponent' }
XSDAttributeDeclaration >> schema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) schema: aXSDSchema
]

{ #category : #'accessing - Feature' }
XSDAttributeDeclaration >> scope [
	^ (sharedGeneralizations at: #Feature) scope
]

{ #category : #'accessing - Feature' }
XSDAttributeDeclaration >> scope: aXSDScope [
	"<type: 'XSDScope' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Feature) scope: aXSDScope
]

{ #category : #'accessing - NamedComponent' }
XSDAttributeDeclaration >> targetNamespace [
	^ (sharedGeneralizations at: #NamedComponent) targetNamespace
]

{ #category : #'accessing - NamedComponent' }
XSDAttributeDeclaration >> targetNamespace: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) targetNamespace: aString
]

{ #category : #'accessing - Feature' }
XSDAttributeDeclaration >> type [
	^ (sharedGeneralizations at: #Feature) type
]

{ #category : #'accessing - Feature' }
XSDAttributeDeclaration >> type: aXSDTypeDefinition [
	"<type: 'XSDTypeDefinition'>"
	(sharedGeneralizations at: #Feature) type: aXSDTypeDefinition
]

{ #category : #accessing }
XSDAttributeDeclaration >> typeDefinition [
	"<type: 'XSDSimpleTypeDefinition'>"
	^ typeDefinition
]

{ #category : #accessing }
XSDAttributeDeclaration >> typeDefinition: aXSDSimpleTypeDefinition [
	"<type: 'XSDSimpleTypeDefinition'>"
	self assert: [ aXSDSimpleTypeDefinition oclIsKindOf: 'SimpleTypeDefinition' ].
	typeDefinition := aXSDSimpleTypeDefinition
]

{ #category : #'accessing - NamedComponent' }
XSDAttributeDeclaration >> uRI [
	^ (sharedGeneralizations at: #NamedComponent) uRI
]

{ #category : #'accessing - NamedComponent' }
XSDAttributeDeclaration >> uRI: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) uRI: aString
]

{ #category : #'accessing - Feature' }
XSDAttributeDeclaration >> value [
	^ (sharedGeneralizations at: #Feature) value
]

{ #category : #'accessing - Feature' }
XSDAttributeDeclaration >> value: aValue [
	"<type: 'Value' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Feature) value: aValue
]
