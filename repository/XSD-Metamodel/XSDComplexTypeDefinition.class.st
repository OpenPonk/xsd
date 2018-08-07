Class {
	#name : #XSDComplexTypeDefinition,
	#superclass : #XSDElement,
	#instVars : [
		'abstract',
		'attributeContents',
		'attributeUses',
		'attributeWildcard',
		'attributeWildcardContent',
		'baseTypeDefinition',
		'block',
		'content',
		'contentAnnotation',
		'contentType',
		'contentTypeCategory',
		'derivationMethod',
		'final',
		'lexicalFinal',
		'mixed',
		'prohibitedSubstitutions',
		'rootTypeDefinition',
		'syntheticParticle',
		'syntheticWildcard'
	],
	#category : #'XSD-Metamodel-Model'
}

{ #category : #accessing }
XSDComplexTypeDefinition >> abstract [
	"<type: 'Boolean' multiplicity: '0..1'>"
	^ abstract
]

{ #category : #accessing }
XSDComplexTypeDefinition >> abstract: aBoolean [
	"<type: 'Boolean' multiplicity: '0..1'>"
	self assert: [ aBoolean isNil or: [ aBoolean isKindOf: Boolean ] ].
	abstract := aBoolean
]

{ #category : #'accessing - NamedComponent' }
XSDComplexTypeDefinition >> aliasName [
	^ (sharedGeneralizations at: #NamedComponent) aliasName
]

{ #category : #'accessing - NamedComponent' }
XSDComplexTypeDefinition >> aliasName: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) aliasName: aString
]

{ #category : #'accessing - NamedComponent' }
XSDComplexTypeDefinition >> aliasURI [
	^ (sharedGeneralizations at: #NamedComponent) aliasURI
]

{ #category : #'accessing - NamedComponent' }
XSDComplexTypeDefinition >> aliasURI: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) aliasURI: aString
]

{ #category : #'accessing - TypeDefinition' }
XSDComplexTypeDefinition >> annotation [
	^ (sharedGeneralizations at: #TypeDefinition) annotation
]

{ #category : #'accessing - TypeDefinition' }
XSDComplexTypeDefinition >> annotation: aXSDAnnotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	(sharedGeneralizations at: #TypeDefinition) annotation: aXSDAnnotation
]

{ #category : #'accessing - TypeDefinition' }
XSDComplexTypeDefinition >> annotations [
	^ (sharedGeneralizations at: #TypeDefinition) annotations
]

{ #category : #'accessing - TypeDefinition' }
XSDComplexTypeDefinition >> annotations: aXSDAnnotation [
	"<type: 'XSDAnnotation' multiplicity: '0..*'>"
	(sharedGeneralizations at: #TypeDefinition) annotations: aXSDAnnotation
]

{ #category : #accessing }
XSDComplexTypeDefinition >> attributeContents [
	"<type: 'XSDAttributeGroupContent' multiplicity: '0..*'>"
	^ attributeContents
]

{ #category : #accessing }
XSDComplexTypeDefinition >> attributeContents: aXSDAttributeGroupContent [
	"<type: 'XSDAttributeGroupContent' multiplicity: '0..*'>"
	self assert: [ aXSDAttributeGroupContent allSatisfy: [ :each | each oclIsKindOf: 'AttributeGroupContent' ] ].
	attributeContents := aXSDAttributeGroupContent
]

{ #category : #accessing }
XSDComplexTypeDefinition >> attributeUses [
	"<type: 'XSDAttributeUse' multiplicity: '0..*'>"
	^ attributeUses
]

{ #category : #accessing }
XSDComplexTypeDefinition >> attributeUses: aXSDAttributeUse [
	"<type: 'XSDAttributeUse' multiplicity: '0..*'>"
	self assert: [ aXSDAttributeUse allSatisfy: [ :each | each oclIsKindOf: 'AttributeUse' ] ].
	attributeUses := aXSDAttributeUse
]

{ #category : #accessing }
XSDComplexTypeDefinition >> attributeWildcard [
	"<type: 'XSDWildcard' multiplicity: '0..1'>"
	^ attributeWildcard
]

{ #category : #accessing }
XSDComplexTypeDefinition >> attributeWildcard: aXSDWildcard [
	"<type: 'XSDWildcard' multiplicity: '0..1'>"
	self assert: [ aXSDWildcard isNil or: [ aXSDWildcard oclIsKindOf: 'Wildcard' ] ].
	attributeWildcard := aXSDWildcard
]

{ #category : #accessing }
XSDComplexTypeDefinition >> attributeWildcardContent [
	"<type: 'XSDWildcard' multiplicity: '0..1'>"
	^ attributeWildcardContent
]

{ #category : #accessing }
XSDComplexTypeDefinition >> attributeWildcardContent: aXSDWildcard [
	"<type: 'XSDWildcard' multiplicity: '0..1'>"
	self assert: [ aXSDWildcard isNil or: [ aXSDWildcard oclIsKindOf: 'Wildcard' ] ].
	attributeWildcardContent := aXSDWildcard
]

{ #category : #'accessing - TypeDefinition' }
XSDComplexTypeDefinition >> baseType [
	^ (sharedGeneralizations at: #TypeDefinition) baseType
]

{ #category : #'accessing - TypeDefinition' }
XSDComplexTypeDefinition >> baseType: aXSDTypeDefinition [
	"<type: 'XSDTypeDefinition'>"
	(sharedGeneralizations at: #TypeDefinition) baseType: aXSDTypeDefinition
]

{ #category : #accessing }
XSDComplexTypeDefinition >> baseTypeDefinition [
	"<type: 'XSDTypeDefinition'>"
	^ baseTypeDefinition
]

{ #category : #accessing }
XSDComplexTypeDefinition >> baseTypeDefinition: aXSDTypeDefinition [
	"<type: 'XSDTypeDefinition'>"
	self assert: [ aXSDTypeDefinition oclIsKindOf: 'TypeDefinition' ].
	baseTypeDefinition := aXSDTypeDefinition
]

{ #category : #accessing }
XSDComplexTypeDefinition >> block [
	"<type: 'XSDProhibitedSubstitutions' multiplicity: '0..*'>"
	^ block
]

{ #category : #accessing }
XSDComplexTypeDefinition >> block: aXSDProhibitedSubstitutions [
	"<type: 'XSDProhibitedSubstitutions' multiplicity: '0..*'>"
	self assert: [ aXSDProhibitedSubstitutions allSatisfy: [ :each | each isKindOf: XSDProhibitedSubstitutions ] ].
	block := aXSDProhibitedSubstitutions
]

{ #category : #'accessing - RedefinableComponent' }
XSDComplexTypeDefinition >> circular [
	^ (sharedGeneralizations at: #RedefinableComponent) circular
]

{ #category : #'accessing - RedefinableComponent' }
XSDComplexTypeDefinition >> circular: aBoolean [
	"<type: 'Boolean' multiplicity: '0..1'>"
	(sharedGeneralizations at: #RedefinableComponent) circular: aBoolean
]

{ #category : #'accessing - TypeDefinition' }
XSDComplexTypeDefinition >> complexType [
	^ (sharedGeneralizations at: #TypeDefinition) complexType
]

{ #category : #'accessing - TypeDefinition' }
XSDComplexTypeDefinition >> complexType: aXSDParticle [
	"<type: 'XSDParticle' multiplicity: '0..1'>"
	(sharedGeneralizations at: #TypeDefinition) complexType: aXSDParticle
]

{ #category : #'accessing - ConcreteComponent' }
XSDComplexTypeDefinition >> container [
	^ (sharedGeneralizations at: #ConcreteComponent) container
]

{ #category : #'accessing - ConcreteComponent' }
XSDComplexTypeDefinition >> container: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) container: aXSDConcreteComponent
]

{ #category : #accessing }
XSDComplexTypeDefinition >> content [
	"<type: 'XSDComplexTypeContent' multiplicity: '0..1'>"
	^ content
]

{ #category : #accessing }
XSDComplexTypeDefinition >> content: aXSDComplexTypeContent [
	"<type: 'XSDComplexTypeContent' multiplicity: '0..1'>"
	self assert: [ aXSDComplexTypeContent isNil or: [ aXSDComplexTypeContent oclIsKindOf: 'ComplexTypeContent' ] ].
	content := aXSDComplexTypeContent
]

{ #category : #accessing }
XSDComplexTypeDefinition >> contentAnnotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	^ contentAnnotation
]

{ #category : #accessing }
XSDComplexTypeDefinition >> contentAnnotation: aXSDAnnotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	self assert: [ aXSDAnnotation isNil or: [ aXSDAnnotation oclIsKindOf: 'Annotation' ] ].
	contentAnnotation := aXSDAnnotation
]

{ #category : #accessing }
XSDComplexTypeDefinition >> contentType [
	"<type: 'XSDComplexTypeContent' multiplicity: '0..1'>"
	^ contentType
]

{ #category : #accessing }
XSDComplexTypeDefinition >> contentType: aXSDComplexTypeContent [
	"<type: 'XSDComplexTypeContent' multiplicity: '0..1'>"
	self assert: [ aXSDComplexTypeContent isNil or: [ aXSDComplexTypeContent oclIsKindOf: 'ComplexTypeContent' ] ].
	contentType := aXSDComplexTypeContent
]

{ #category : #accessing }
XSDComplexTypeDefinition >> contentTypeCategory [
	"<type: 'XSDContentTypeCategory' multiplicity: '0..1'>"
	^ contentTypeCategory
]

{ #category : #accessing }
XSDComplexTypeDefinition >> contentTypeCategory: aXSDContentTypeCategory [
	"<type: 'XSDContentTypeCategory' multiplicity: '0..1'>"
	self assert: [ aXSDContentTypeCategory isNil or: [ aXSDContentTypeCategory isKindOf: XSDContentTypeCategory ] ].
	contentTypeCategory := aXSDContentTypeCategory
]

{ #category : #'accessing - TypeDefinition' }
XSDComplexTypeDefinition >> derivationAnnotation [
	^ (sharedGeneralizations at: #TypeDefinition) derivationAnnotation
]

{ #category : #'accessing - TypeDefinition' }
XSDComplexTypeDefinition >> derivationAnnotation: aXSDAnnotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	(sharedGeneralizations at: #TypeDefinition) derivationAnnotation: aXSDAnnotation
]

{ #category : #accessing }
XSDComplexTypeDefinition >> derivationMethod [
	"<type: 'XSDDerivationMethod' multiplicity: '0..1'>"
	^ derivationMethod
]

{ #category : #accessing }
XSDComplexTypeDefinition >> derivationMethod: aXSDDerivationMethod [
	"<type: 'XSDDerivationMethod' multiplicity: '0..1'>"
	self assert: [ aXSDDerivationMethod isNil or: [ aXSDDerivationMethod isKindOf: XSDDerivationMethod ] ].
	derivationMethod := aXSDDerivationMethod
]

{ #category : #'accessing - ConcreteComponent' }
XSDComplexTypeDefinition >> diagnostics [
	^ (sharedGeneralizations at: #ConcreteComponent) diagnostics
]

{ #category : #'accessing - ConcreteComponent' }
XSDComplexTypeDefinition >> diagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	(sharedGeneralizations at: #ConcreteComponent) diagnostics: aXSDDiagnostic
]

{ #category : #'accessing - ConcreteComponent' }
XSDComplexTypeDefinition >> element [
	^ (sharedGeneralizations at: #ConcreteComponent) element
]

{ #category : #'accessing - ConcreteComponent' }
XSDComplexTypeDefinition >> element: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) element: aDOMElement
]

{ #category : #accessing }
XSDComplexTypeDefinition >> final [
	"<type: 'XSDComplexFinal' multiplicity: '0..*'>"
	^ final
]

{ #category : #accessing }
XSDComplexTypeDefinition >> final: aXSDComplexFinal [
	"<type: 'XSDComplexFinal' multiplicity: '0..*'>"
	self assert: [ aXSDComplexFinal allSatisfy: [ :each | each isKindOf: XSDComplexFinal ] ].
	final := aXSDComplexFinal
]

{ #category : #initialization }
XSDComplexTypeDefinition >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #TypeDefinition.
		sharedGeneralizations at: #Scope.
	}
]

{ #category : #initialization }
XSDComplexTypeDefinition >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ConcreteComponent put: (XSDConcreteComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Component put: (XSDComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #SchemaContent put: (XSDSchemaContent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedComponent put: (XSDNamedComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefineContent put: (XSDRedefineContent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableComponent put: (XSDRedefinableComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TypeDefinition put: (XSDTypeDefinition newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Scope put: (XSDScope newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ComplexTypeDefinition put: self.
]

{ #category : #accessing }
XSDComplexTypeDefinition >> lexicalFinal [
	"<type: 'XSDComplexFinal' multiplicity: '0..*'>"
	^ lexicalFinal
]

{ #category : #accessing }
XSDComplexTypeDefinition >> lexicalFinal: aXSDComplexFinal [
	"<type: 'XSDComplexFinal' multiplicity: '0..*'>"
	self assert: [ aXSDComplexFinal allSatisfy: [ :each | each isKindOf: XSDComplexFinal ] ].
	lexicalFinal := aXSDComplexFinal
]

{ #category : #accessing }
XSDComplexTypeDefinition >> mixed [
	"<type: 'Boolean' multiplicity: '0..1'>"
	^ mixed
]

{ #category : #accessing }
XSDComplexTypeDefinition >> mixed: aBoolean [
	"<type: 'Boolean' multiplicity: '0..1'>"
	self assert: [ aBoolean isNil or: [ aBoolean isKindOf: Boolean ] ].
	mixed := aBoolean
]

{ #category : #'accessing - NamedComponent' }
XSDComplexTypeDefinition >> name [
	^ (sharedGeneralizations at: #NamedComponent) name
]

{ #category : #'accessing - NamedComponent' }
XSDComplexTypeDefinition >> name: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) name: aString
]

{ #category : #accessing }
XSDComplexTypeDefinition >> prohibitedSubstitutions [
	"<type: 'XSDProhibitedSubstitutions' multiplicity: '0..*'>"
	^ prohibitedSubstitutions
]

{ #category : #accessing }
XSDComplexTypeDefinition >> prohibitedSubstitutions: aXSDProhibitedSubstitutions [
	"<type: 'XSDProhibitedSubstitutions' multiplicity: '0..*'>"
	self assert: [ aXSDProhibitedSubstitutions allSatisfy: [ :each | each isKindOf: XSDProhibitedSubstitutions ] ].
	prohibitedSubstitutions := aXSDProhibitedSubstitutions
]

{ #category : #'accessing - NamedComponent' }
XSDComplexTypeDefinition >> qName [
	^ (sharedGeneralizations at: #NamedComponent) qName
]

{ #category : #'accessing - NamedComponent' }
XSDComplexTypeDefinition >> qName: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) qName: aString
]

{ #category : #'accessing - ConcreteComponent' }
XSDComplexTypeDefinition >> rootContainer [
	^ (sharedGeneralizations at: #ConcreteComponent) rootContainer
]

{ #category : #'accessing - ConcreteComponent' }
XSDComplexTypeDefinition >> rootContainer: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	(sharedGeneralizations at: #ConcreteComponent) rootContainer: aXSDConcreteComponent
]

{ #category : #'accessing - TypeDefinition' }
XSDComplexTypeDefinition >> rootType [
	^ (sharedGeneralizations at: #TypeDefinition) rootType
]

{ #category : #'accessing - TypeDefinition' }
XSDComplexTypeDefinition >> rootType: aXSDTypeDefinition [
	"<type: 'XSDTypeDefinition'>"
	(sharedGeneralizations at: #TypeDefinition) rootType: aXSDTypeDefinition
]

{ #category : #accessing }
XSDComplexTypeDefinition >> rootTypeDefinition [
	"<type: 'XSDTypeDefinition'>"
	^ rootTypeDefinition
]

{ #category : #accessing }
XSDComplexTypeDefinition >> rootTypeDefinition: aXSDTypeDefinition [
	"<type: 'XSDTypeDefinition'>"
	self assert: [ aXSDTypeDefinition oclIsKindOf: 'TypeDefinition' ].
	rootTypeDefinition := aXSDTypeDefinition
]

{ #category : #'accessing - ConcreteComponent' }
XSDComplexTypeDefinition >> schema [
	^ (sharedGeneralizations at: #ConcreteComponent) schema
]

{ #category : #'accessing - ConcreteComponent' }
XSDComplexTypeDefinition >> schema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) schema: aXSDSchema
]

{ #category : #'accessing - TypeDefinition' }
XSDComplexTypeDefinition >> simpleType [
	^ (sharedGeneralizations at: #TypeDefinition) simpleType
]

{ #category : #'accessing - TypeDefinition' }
XSDComplexTypeDefinition >> simpleType: aXSDSimpleTypeDefinition [
	"<type: 'XSDSimpleTypeDefinition' multiplicity: '0..1'>"
	(sharedGeneralizations at: #TypeDefinition) simpleType: aXSDSimpleTypeDefinition
]

{ #category : #accessing }
XSDComplexTypeDefinition >> syntheticParticle [
	"<type: 'XSDParticle' multiplicity: '0..1'>"
	^ syntheticParticle
]

{ #category : #accessing }
XSDComplexTypeDefinition >> syntheticParticle: aXSDParticle [
	"<type: 'XSDParticle' multiplicity: '0..1'>"
	self assert: [ aXSDParticle isNil or: [ aXSDParticle oclIsKindOf: 'Particle' ] ].
	syntheticParticle := aXSDParticle
]

{ #category : #accessing }
XSDComplexTypeDefinition >> syntheticWildcard [
	"<type: 'XSDWildcard' multiplicity: '0..1'>"
	^ syntheticWildcard
]

{ #category : #accessing }
XSDComplexTypeDefinition >> syntheticWildcard: aXSDWildcard [
	"<type: 'XSDWildcard' multiplicity: '0..1'>"
	self assert: [ aXSDWildcard isNil or: [ aXSDWildcard oclIsKindOf: 'Wildcard' ] ].
	syntheticWildcard := aXSDWildcard
]

{ #category : #'accessing - NamedComponent' }
XSDComplexTypeDefinition >> targetNamespace [
	^ (sharedGeneralizations at: #NamedComponent) targetNamespace
]

{ #category : #'accessing - NamedComponent' }
XSDComplexTypeDefinition >> targetNamespace: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) targetNamespace: aString
]

{ #category : #'accessing - NamedComponent' }
XSDComplexTypeDefinition >> uRI [
	^ (sharedGeneralizations at: #NamedComponent) uRI
]

{ #category : #'accessing - NamedComponent' }
XSDComplexTypeDefinition >> uRI: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) uRI: aString
]
