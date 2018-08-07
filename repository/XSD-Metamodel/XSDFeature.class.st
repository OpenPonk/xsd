Class {
	#name : #XSDFeature,
	#superclass : #XSDElement,
	#instVars : [
		'constraint',
		'featureReference',
		'form',
		'global',
		'lexicalValue',
		'resolvedFeature',
		'scope',
		'type',
		'value'
	],
	#category : #'XSD-Metamodel-Model'
}

{ #category : #'accessing - NamedComponent' }
XSDFeature >> aliasName [
	^ (sharedGeneralizations at: #NamedComponent) aliasName
]

{ #category : #'accessing - NamedComponent' }
XSDFeature >> aliasName: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) aliasName: aString
]

{ #category : #'accessing - NamedComponent' }
XSDFeature >> aliasURI [
	^ (sharedGeneralizations at: #NamedComponent) aliasURI
]

{ #category : #'accessing - NamedComponent' }
XSDFeature >> aliasURI: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) aliasURI: aString
]

{ #category : #accessing }
XSDFeature >> constraint [
	"<type: 'XSDConstraint' multiplicity: '0..1'>"
	^ constraint
]

{ #category : #accessing }
XSDFeature >> constraint: aXSDConstraint [
	"<type: 'XSDConstraint' multiplicity: '0..1'>"
	self assert: [ aXSDConstraint isNil or: [ aXSDConstraint isKindOf: XSDConstraint ] ].
	constraint := aXSDConstraint
]

{ #category : #'accessing - ConcreteComponent' }
XSDFeature >> container [
	^ (sharedGeneralizations at: #ConcreteComponent) container
]

{ #category : #'accessing - ConcreteComponent' }
XSDFeature >> container: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) container: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDFeature >> diagnostics [
	^ (sharedGeneralizations at: #ConcreteComponent) diagnostics
]

{ #category : #'accessing - ConcreteComponent' }
XSDFeature >> diagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	(sharedGeneralizations at: #ConcreteComponent) diagnostics: aXSDDiagnostic
]

{ #category : #'accessing - ConcreteComponent' }
XSDFeature >> element [
	^ (sharedGeneralizations at: #ConcreteComponent) element
]

{ #category : #'accessing - ConcreteComponent' }
XSDFeature >> element: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) element: aDOMElement
]

{ #category : #accessing }
XSDFeature >> featureReference [
	"<type: 'Boolean' multiplicity: '0..1'>"
	^ featureReference
]

{ #category : #accessing }
XSDFeature >> featureReference: aBoolean [
	"<type: 'Boolean' multiplicity: '0..1'>"
	self assert: [ aBoolean isNil or: [ aBoolean isKindOf: Boolean ] ].
	featureReference := aBoolean
]

{ #category : #accessing }
XSDFeature >> form [
	"<type: 'XSDForm' multiplicity: '0..1'>"
	^ form
]

{ #category : #accessing }
XSDFeature >> form: aXSDForm [
	"<type: 'XSDForm' multiplicity: '0..1'>"
	self assert: [ aXSDForm isNil or: [ aXSDForm isKindOf: XSDForm ] ].
	form := aXSDForm
]

{ #category : #accessing }
XSDFeature >> global [
	"<type: 'Boolean' multiplicity: '0..1'>"
	^ global
]

{ #category : #accessing }
XSDFeature >> global: aBoolean [
	"<type: 'Boolean' multiplicity: '0..1'>"
	self assert: [ aBoolean isNil or: [ aBoolean isKindOf: Boolean ] ].
	global := aBoolean
]

{ #category : #initialization }
XSDFeature >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #NamedComponent.
	}
]

{ #category : #initialization }
XSDFeature >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ConcreteComponent put: (XSDConcreteComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Component put: (XSDComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedComponent put: (XSDNamedComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Feature put: self.
]

{ #category : #accessing }
XSDFeature >> lexicalValue [
	"<type: 'String' multiplicity: '0..1'>"
	^ lexicalValue
]

{ #category : #accessing }
XSDFeature >> lexicalValue: aString [
	"<type: 'String' multiplicity: '0..1'>"
	self assert: [ aString isNil or: [ aString isKindOf: String ] ].
	lexicalValue := aString
]

{ #category : #'accessing - NamedComponent' }
XSDFeature >> name [
	^ (sharedGeneralizations at: #NamedComponent) name
]

{ #category : #'accessing - NamedComponent' }
XSDFeature >> name: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) name: aString
]

{ #category : #'accessing - NamedComponent' }
XSDFeature >> qName [
	^ (sharedGeneralizations at: #NamedComponent) qName
]

{ #category : #'accessing - NamedComponent' }
XSDFeature >> qName: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) qName: aString
]

{ #category : #accessing }
XSDFeature >> resolvedFeature [
	"<type: 'XSDFeature'>"
	^ resolvedFeature
]

{ #category : #accessing }
XSDFeature >> resolvedFeature: aXSDFeature [
	"<type: 'XSDFeature'>"
	self assert: [ aXSDFeature oclIsKindOf: 'Feature' ].
	resolvedFeature := aXSDFeature
]

{ #category : #'accessing - ConcreteComponent' }
XSDFeature >> rootContainer [
	^ (sharedGeneralizations at: #ConcreteComponent) rootContainer
]

{ #category : #'accessing - ConcreteComponent' }
XSDFeature >> rootContainer: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	(sharedGeneralizations at: #ConcreteComponent) rootContainer: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDFeature >> schema [
	^ (sharedGeneralizations at: #ConcreteComponent) schema
]

{ #category : #'accessing - ConcreteComponent' }
XSDFeature >> schema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) schema: aXSDSchema
]

{ #category : #accessing }
XSDFeature >> scope [
	"<type: 'XSDScope' multiplicity: '0..1'>"
	^ scope
]

{ #category : #accessing }
XSDFeature >> scope: aXSDScope [
	"<type: 'XSDScope' multiplicity: '0..1'>"
	self assert: [ aXSDScope isNil or: [ aXSDScope oclIsKindOf: 'Scope' ] ].
	scope := aXSDScope
]

{ #category : #'accessing - NamedComponent' }
XSDFeature >> targetNamespace [
	^ (sharedGeneralizations at: #NamedComponent) targetNamespace
]

{ #category : #'accessing - NamedComponent' }
XSDFeature >> targetNamespace: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) targetNamespace: aString
]

{ #category : #accessing }
XSDFeature >> type [
	"<type: 'XSDTypeDefinition'>"
	^ type
]

{ #category : #accessing }
XSDFeature >> type: aXSDTypeDefinition [
	"<type: 'XSDTypeDefinition'>"
	self assert: [ aXSDTypeDefinition oclIsKindOf: 'TypeDefinition' ].
	type := aXSDTypeDefinition
]

{ #category : #'accessing - NamedComponent' }
XSDFeature >> uRI [
	^ (sharedGeneralizations at: #NamedComponent) uRI
]

{ #category : #'accessing - NamedComponent' }
XSDFeature >> uRI: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) uRI: aString
]

{ #category : #accessing }
XSDFeature >> value [
	"<type: 'Value' multiplicity: '0..1'>"
	^ value
]

{ #category : #accessing }
XSDFeature >> value: aValue [
	"<type: 'Value' multiplicity: '0..1'>"
	self assert: [ aValue isNil or: [ aValue isKindOf: Object ] ].
	value := aValue
]
