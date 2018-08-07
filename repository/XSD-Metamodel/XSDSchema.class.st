Class {
	#name : #XSDSchema,
	#superclass : #XSDElement,
	#instVars : [
		'allDiagnostics',
		'annotations',
		'attributeDeclarations',
		'attributeFormDefault',
		'attributeGroupDefinitions',
		'blockDefault',
		'contents',
		'document',
		'elementDeclarations',
		'elementFormDefault',
		'finalDefault',
		'identityConstraintDefinitions',
		'incorporatedVersions',
		'modelGroupDefinitions',
		'notationDeclarations',
		'originalVersion',
		'referencingDirectives',
		'rootVersion',
		'schemaForSchema',
		'schemaLocation',
		'targetNamespace',
		'typeDefinitions',
		'version'
	],
	#category : #'XSD-Metamodel-Model'
}

{ #category : #accessing }
XSDSchema >> allDiagnostics [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	^ allDiagnostics
]

{ #category : #accessing }
XSDSchema >> allDiagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	self assert: [ aXSDDiagnostic allSatisfy: [ :each | each oclIsKindOf: 'Diagnostic' ] ].
	allDiagnostics := aXSDDiagnostic
]

{ #category : #accessing }
XSDSchema >> annotations [
	"<type: 'XSDAnnotation' multiplicity: '0..*'>"
	^ annotations
]

{ #category : #accessing }
XSDSchema >> annotations: aXSDAnnotation [
	"<type: 'XSDAnnotation' multiplicity: '0..*'>"
	self assert: [ aXSDAnnotation allSatisfy: [ :each | each oclIsKindOf: 'Annotation' ] ].
	annotations := aXSDAnnotation
]

{ #category : #accessing }
XSDSchema >> attributeDeclarations [
	"<type: 'XSDAttributeDeclaration' multiplicity: '0..*'>"
	^ attributeDeclarations
]

{ #category : #accessing }
XSDSchema >> attributeDeclarations: aXSDAttributeDeclaration [
	"<type: 'XSDAttributeDeclaration' multiplicity: '0..*'>"
	self assert: [ aXSDAttributeDeclaration allSatisfy: [ :each | each oclIsKindOf: 'AttributeDeclaration' ] ].
	attributeDeclarations := aXSDAttributeDeclaration
]

{ #category : #accessing }
XSDSchema >> attributeFormDefault [
	"<type: 'XSDForm' multiplicity: '0..1'>"
	^ attributeFormDefault
]

{ #category : #accessing }
XSDSchema >> attributeFormDefault: aXSDForm [
	"<type: 'XSDForm' multiplicity: '0..1'>"
	self assert: [ aXSDForm isNil or: [ aXSDForm isKindOf: XSDForm ] ].
	attributeFormDefault := aXSDForm
]

{ #category : #accessing }
XSDSchema >> attributeGroupDefinitions [
	"<type: 'XSDAttributeGroupDefinition' multiplicity: '0..*'>"
	^ attributeGroupDefinitions
]

{ #category : #accessing }
XSDSchema >> attributeGroupDefinitions: aXSDAttributeGroupDefinition [
	"<type: 'XSDAttributeGroupDefinition' multiplicity: '0..*'>"
	self assert: [ aXSDAttributeGroupDefinition allSatisfy: [ :each | each oclIsKindOf: 'AttributeGroupDefinition' ] ].
	attributeGroupDefinitions := aXSDAttributeGroupDefinition
]

{ #category : #accessing }
XSDSchema >> blockDefault [
	"<type: 'XSDDisallowedSubstitutions' multiplicity: '0..*'>"
	^ blockDefault
]

{ #category : #accessing }
XSDSchema >> blockDefault: aXSDDisallowedSubstitutions [
	"<type: 'XSDDisallowedSubstitutions' multiplicity: '0..*'>"
	self assert: [ aXSDDisallowedSubstitutions allSatisfy: [ :each | each isKindOf: XSDDisallowedSubstitutions ] ].
	blockDefault := aXSDDisallowedSubstitutions
]

{ #category : #'accessing - ConcreteComponent' }
XSDSchema >> container [
	^ (sharedGeneralizations at: #ConcreteComponent) container
]

{ #category : #'accessing - ConcreteComponent' }
XSDSchema >> container: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) container: aXSDConcreteComponent
]

{ #category : #accessing }
XSDSchema >> contents [
	"<type: 'XSDSchemaContent' multiplicity: '0..*'>"
	^ contents
]

{ #category : #accessing }
XSDSchema >> contents: aXSDSchemaContent [
	"<type: 'XSDSchemaContent' multiplicity: '0..*'>"
	self assert: [ aXSDSchemaContent allSatisfy: [ :each | each oclIsKindOf: 'SchemaContent' ] ].
	contents := aXSDSchemaContent
]

{ #category : #'accessing - ConcreteComponent' }
XSDSchema >> diagnostics [
	^ (sharedGeneralizations at: #ConcreteComponent) diagnostics
]

{ #category : #'accessing - ConcreteComponent' }
XSDSchema >> diagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	(sharedGeneralizations at: #ConcreteComponent) diagnostics: aXSDDiagnostic
]

{ #category : #accessing }
XSDSchema >> document [
	"<type: 'DOMDocument' multiplicity: '0..1'>"
	^ document
]

{ #category : #accessing }
XSDSchema >> document: aDOMDocument [
	"<type: 'DOMDocument' multiplicity: '0..1'>"
	self assert: [ aDOMDocument isNil or: [ aDOMDocument isKindOf: XMLDocument ] ].
	document := aDOMDocument
]

{ #category : #'accessing - ConcreteComponent' }
XSDSchema >> element [
	^ (sharedGeneralizations at: #ConcreteComponent) element
]

{ #category : #'accessing - ConcreteComponent' }
XSDSchema >> element: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) element: aDOMElement
]

{ #category : #accessing }
XSDSchema >> elementDeclarations [
	"<type: 'XSDElementDeclaration' multiplicity: '0..*'>"
	^ self contents
	select: [ :each | each oclIsKindOf: 'ElementDeclaration' ]
]

{ #category : #accessing }
XSDSchema >> elementDeclarations: aXSDElementDeclaration [
	"<type: 'XSDElementDeclaration' multiplicity: '0..*'>"
	self assert: [ aXSDElementDeclaration allSatisfy: [ :each | each oclIsKindOf: 'ElementDeclaration' ] ].
	elementDeclarations := aXSDElementDeclaration
]

{ #category : #accessing }
XSDSchema >> elementFormDefault [
	"<type: 'XSDForm' multiplicity: '0..1'>"
	^ elementFormDefault
]

{ #category : #accessing }
XSDSchema >> elementFormDefault: aXSDForm [
	"<type: 'XSDForm' multiplicity: '0..1'>"
	self assert: [ aXSDForm isNil or: [ aXSDForm isKindOf: XSDForm ] ].
	elementFormDefault := aXSDForm
]

{ #category : #accessing }
XSDSchema >> finalDefault [
	"<type: 'XSDProhibitedSubstitutions' multiplicity: '0..*'>"
	^ finalDefault
]

{ #category : #accessing }
XSDSchema >> finalDefault: aXSDProhibitedSubstitutions [
	"<type: 'XSDProhibitedSubstitutions' multiplicity: '0..*'>"
	self assert: [ aXSDProhibitedSubstitutions allSatisfy: [ :each | each isKindOf: XSDProhibitedSubstitutions ] ].
	finalDefault := aXSDProhibitedSubstitutions
]

{ #category : #accessing }
XSDSchema >> identityConstraintDefinitions [
	"<type: 'XSDIdentityConstraintDefinition' multiplicity: '0..*'>"
	^ identityConstraintDefinitions
]

{ #category : #accessing }
XSDSchema >> identityConstraintDefinitions: aXSDIdentityConstraintDefinition [
	"<type: 'XSDIdentityConstraintDefinition' multiplicity: '0..*'>"
	self assert: [ aXSDIdentityConstraintDefinition allSatisfy: [ :each | each oclIsKindOf: 'IdentityConstraintDefinition' ] ].
	identityConstraintDefinitions := aXSDIdentityConstraintDefinition
]

{ #category : #accessing }
XSDSchema >> incorporatedVersions [
	"<type: 'XSDSchema' multiplicity: '0..*'>"
	^ incorporatedVersions
]

{ #category : #accessing }
XSDSchema >> incorporatedVersions: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..*'>"
	self assert: [ aXSDSchema allSatisfy: [ :each | each oclIsKindOf: 'Schema' ] ].
	incorporatedVersions := aXSDSchema
]

{ #category : #initialization }
XSDSchema >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Scope.
	}
]

{ #category : #initialization }
XSDSchema >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ConcreteComponent put: (XSDConcreteComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Component put: (XSDComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Scope put: (XSDScope newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Schema put: self.
]

{ #category : #accessing }
XSDSchema >> modelGroupDefinitions [
	"<type: 'XSDModelGroupDefinition' multiplicity: '0..*'>"
	^ modelGroupDefinitions
]

{ #category : #accessing }
XSDSchema >> modelGroupDefinitions: aXSDModelGroupDefinition [
	"<type: 'XSDModelGroupDefinition' multiplicity: '0..*'>"
	self assert: [ aXSDModelGroupDefinition allSatisfy: [ :each | each oclIsKindOf: 'ModelGroupDefinition' ] ].
	modelGroupDefinitions := aXSDModelGroupDefinition
]

{ #category : #accessing }
XSDSchema >> notationDeclarations [
	"<type: 'XSDNotationDeclaration' multiplicity: '0..*'>"
	^ notationDeclarations
]

{ #category : #accessing }
XSDSchema >> notationDeclarations: aXSDNotationDeclaration [
	"<type: 'XSDNotationDeclaration' multiplicity: '0..*'>"
	self assert: [ aXSDNotationDeclaration allSatisfy: [ :each | each oclIsKindOf: 'NotationDeclaration' ] ].
	notationDeclarations := aXSDNotationDeclaration
]

{ #category : #accessing }
XSDSchema >> originalVersion [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	^ originalVersion
]

{ #category : #accessing }
XSDSchema >> originalVersion: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	self assert: [ aXSDSchema isNil or: [ aXSDSchema oclIsKindOf: 'Schema' ] ].
	originalVersion := aXSDSchema
]

{ #category : #accessing }
XSDSchema >> referencingDirectives [
	"<type: 'XSDSchemaDirective' multiplicity: '0..*'>"
	^ referencingDirectives
]

{ #category : #accessing }
XSDSchema >> referencingDirectives: aXSDSchemaDirective [
	"<type: 'XSDSchemaDirective' multiplicity: '0..*'>"
	self assert: [ aXSDSchemaDirective allSatisfy: [ :each | each oclIsKindOf: 'SchemaDirective' ] ].
	referencingDirectives := aXSDSchemaDirective
]

{ #category : #'accessing - ConcreteComponent' }
XSDSchema >> rootContainer [
	^ (sharedGeneralizations at: #ConcreteComponent) rootContainer
]

{ #category : #'accessing - ConcreteComponent' }
XSDSchema >> rootContainer: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	(sharedGeneralizations at: #ConcreteComponent) rootContainer: aXSDConcreteComponent
]

{ #category : #accessing }
XSDSchema >> rootVersion [
	"<type: 'XSDSchema'>"
	^ rootVersion
]

{ #category : #accessing }
XSDSchema >> rootVersion: aXSDSchema [
	"<type: 'XSDSchema'>"
	self assert: [ aXSDSchema oclIsKindOf: 'Schema' ].
	rootVersion := aXSDSchema
]

{ #category : #'accessing - ConcreteComponent' }
XSDSchema >> schema [
	^ (sharedGeneralizations at: #ConcreteComponent) schema
]

{ #category : #'accessing - ConcreteComponent' }
XSDSchema >> schema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) schema: aXSDSchema
]

{ #category : #accessing }
XSDSchema >> schemaForSchema [
	"<type: 'XSDSchema'>"
	^ schemaForSchema
]

{ #category : #accessing }
XSDSchema >> schemaForSchema: aXSDSchema [
	"<type: 'XSDSchema'>"
	self assert: [ aXSDSchema oclIsKindOf: 'Schema' ].
	schemaForSchema := aXSDSchema
]

{ #category : #accessing }
XSDSchema >> schemaLocation [
	"<type: 'String' multiplicity: '0..1'>"
	^ schemaLocation
]

{ #category : #accessing }
XSDSchema >> schemaLocation: aString [
	"<type: 'String' multiplicity: '0..1'>"
	self assert: [ aString isNil or: [ aString isKindOf: String ] ].
	schemaLocation := aString
]

{ #category : #accessing }
XSDSchema >> targetNamespace [
	"<type: 'String' multiplicity: '0..1'>"
	^ targetNamespace
]

{ #category : #accessing }
XSDSchema >> targetNamespace: aString [
	"<type: 'String' multiplicity: '0..1'>"
	self assert: [ aString isNil or: [ aString isKindOf: String ] ].
	targetNamespace := aString
]

{ #category : #accessing }
XSDSchema >> typeDefinitions [
	"<type: 'XSDTypeDefinition' multiplicity: '0..*'>"
	^ (((self contents
	select:
		[ :each | (each oclIsKindOf: 'Import') or: [ each oclIsKindOf: 'Include' ] ])
	flatCollect: [ :each | each resolvedSchema typeDefinitions ])
	, (self contents select: [ :each | each oclIsKindOf: 'TypeDefinition' ]))
	asSet asArray
]

{ #category : #accessing }
XSDSchema >> typeDefinitions: aXSDTypeDefinition [
	"<type: 'XSDTypeDefinition' multiplicity: '0..*'>"
	self assert: [ aXSDTypeDefinition allSatisfy: [ :each | each oclIsKindOf: 'TypeDefinition' ] ].
	typeDefinitions := aXSDTypeDefinition
]

{ #category : #accessing }
XSDSchema >> version [
	"<type: 'String' multiplicity: '0..1'>"
	^ version
]

{ #category : #accessing }
XSDSchema >> version: aString [
	"<type: 'String' multiplicity: '0..1'>"
	self assert: [ aString isNil or: [ aString isKindOf: String ] ].
	version := aString
]
