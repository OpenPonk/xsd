Class {
	#name : #XSDIdentityConstraintDefinition,
	#superclass : #XSDElement,
	#instVars : [
		'annotation',
		'fields',
		'identityConstraintCategory',
		'referencedKey',
		'selector'
	],
	#category : #'XSD-Metamodel-Model'
}

{ #category : #'accessing - NamedComponent' }
XSDIdentityConstraintDefinition >> aliasName [
	^ (sharedGeneralizations at: #NamedComponent) aliasName
]

{ #category : #'accessing - NamedComponent' }
XSDIdentityConstraintDefinition >> aliasName: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) aliasName: aString
]

{ #category : #'accessing - NamedComponent' }
XSDIdentityConstraintDefinition >> aliasURI [
	^ (sharedGeneralizations at: #NamedComponent) aliasURI
]

{ #category : #'accessing - NamedComponent' }
XSDIdentityConstraintDefinition >> aliasURI: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) aliasURI: aString
]

{ #category : #accessing }
XSDIdentityConstraintDefinition >> annotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	^ annotation
]

{ #category : #accessing }
XSDIdentityConstraintDefinition >> annotation: aXSDAnnotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	self assert: [ aXSDAnnotation isNil or: [ aXSDAnnotation oclIsKindOf: 'Annotation' ] ].
	annotation := aXSDAnnotation
]

{ #category : #'accessing - ConcreteComponent' }
XSDIdentityConstraintDefinition >> container [
	^ (sharedGeneralizations at: #ConcreteComponent) container
]

{ #category : #'accessing - ConcreteComponent' }
XSDIdentityConstraintDefinition >> container: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) container: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDIdentityConstraintDefinition >> diagnostics [
	^ (sharedGeneralizations at: #ConcreteComponent) diagnostics
]

{ #category : #'accessing - ConcreteComponent' }
XSDIdentityConstraintDefinition >> diagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	(sharedGeneralizations at: #ConcreteComponent) diagnostics: aXSDDiagnostic
]

{ #category : #'accessing - ConcreteComponent' }
XSDIdentityConstraintDefinition >> element [
	^ (sharedGeneralizations at: #ConcreteComponent) element
]

{ #category : #'accessing - ConcreteComponent' }
XSDIdentityConstraintDefinition >> element: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) element: aDOMElement
]

{ #category : #accessing }
XSDIdentityConstraintDefinition >> fields [
	"<type: 'XSDXPathDefinition' multiplicity: '1..*'>"
	^ fields
]

{ #category : #accessing }
XSDIdentityConstraintDefinition >> fields: aXSDXPathDefinition [
	"<type: 'XSDXPathDefinition' multiplicity: '1..*'>"
	self assert: [ aXSDXPathDefinition allSatisfy: [ :each | each oclIsKindOf: 'XPathDefinition' ] ].
	fields := aXSDXPathDefinition
]

{ #category : #accessing }
XSDIdentityConstraintDefinition >> identityConstraintCategory [
	"<type: 'XSDIdentityConstraintCategory' multiplicity: '0..1'>"
	^ identityConstraintCategory
]

{ #category : #accessing }
XSDIdentityConstraintDefinition >> identityConstraintCategory: aXSDIdentityConstraintCategory [
	"<type: 'XSDIdentityConstraintCategory' multiplicity: '0..1'>"
	self assert: [ aXSDIdentityConstraintCategory isNil or: [ aXSDIdentityConstraintCategory isKindOf: XSDIdentityConstraintCategory ] ].
	identityConstraintCategory := aXSDIdentityConstraintCategory
]

{ #category : #initialization }
XSDIdentityConstraintDefinition >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #NamedComponent.
	}
]

{ #category : #initialization }
XSDIdentityConstraintDefinition >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ConcreteComponent put: (XSDConcreteComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Component put: (XSDComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedComponent put: (XSDNamedComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #IdentityConstraintDefinition put: self.
]

{ #category : #'accessing - NamedComponent' }
XSDIdentityConstraintDefinition >> name [
	^ (sharedGeneralizations at: #NamedComponent) name
]

{ #category : #'accessing - NamedComponent' }
XSDIdentityConstraintDefinition >> name: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) name: aString
]

{ #category : #'accessing - NamedComponent' }
XSDIdentityConstraintDefinition >> qName [
	^ (sharedGeneralizations at: #NamedComponent) qName
]

{ #category : #'accessing - NamedComponent' }
XSDIdentityConstraintDefinition >> qName: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) qName: aString
]

{ #category : #accessing }
XSDIdentityConstraintDefinition >> referencedKey [
	"<type: 'XSDIdentityConstraintDefinition' multiplicity: '0..1'>"
	^ referencedKey
]

{ #category : #accessing }
XSDIdentityConstraintDefinition >> referencedKey: aXSDIdentityConstraintDefinition [
	"<type: 'XSDIdentityConstraintDefinition' multiplicity: '0..1'>"
	self assert: [ aXSDIdentityConstraintDefinition isNil or: [ aXSDIdentityConstraintDefinition oclIsKindOf: 'IdentityConstraintDefinition' ] ].
	referencedKey := aXSDIdentityConstraintDefinition
]

{ #category : #'accessing - ConcreteComponent' }
XSDIdentityConstraintDefinition >> rootContainer [
	^ (sharedGeneralizations at: #ConcreteComponent) rootContainer
]

{ #category : #'accessing - ConcreteComponent' }
XSDIdentityConstraintDefinition >> rootContainer: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	(sharedGeneralizations at: #ConcreteComponent) rootContainer: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDIdentityConstraintDefinition >> schema [
	^ (sharedGeneralizations at: #ConcreteComponent) schema
]

{ #category : #'accessing - ConcreteComponent' }
XSDIdentityConstraintDefinition >> schema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) schema: aXSDSchema
]

{ #category : #accessing }
XSDIdentityConstraintDefinition >> selector [
	"<type: 'XSDXPathDefinition'>"
	^ selector
]

{ #category : #accessing }
XSDIdentityConstraintDefinition >> selector: aXSDXPathDefinition [
	"<type: 'XSDXPathDefinition'>"
	self assert: [ aXSDXPathDefinition oclIsKindOf: 'XPathDefinition' ].
	selector := aXSDXPathDefinition
]

{ #category : #'accessing - NamedComponent' }
XSDIdentityConstraintDefinition >> targetNamespace [
	^ (sharedGeneralizations at: #NamedComponent) targetNamespace
]

{ #category : #'accessing - NamedComponent' }
XSDIdentityConstraintDefinition >> targetNamespace: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) targetNamespace: aString
]

{ #category : #'accessing - NamedComponent' }
XSDIdentityConstraintDefinition >> uRI [
	^ (sharedGeneralizations at: #NamedComponent) uRI
]

{ #category : #'accessing - NamedComponent' }
XSDIdentityConstraintDefinition >> uRI: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) uRI: aString
]
