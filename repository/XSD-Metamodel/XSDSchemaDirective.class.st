Class {
	#name : #XSDSchemaDirective,
	#superclass : #XSDElement,
	#instVars : [
		'resolvedSchema',
		'schemaLocation'
	],
	#category : #'XSD-Metamodel-Model'
}

{ #category : #'accessing - ConcreteComponent' }
XSDSchemaDirective >> container [
	^ (sharedGeneralizations at: #ConcreteComponent) container
]

{ #category : #'accessing - ConcreteComponent' }
XSDSchemaDirective >> container: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) container: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDSchemaDirective >> diagnostics [
	^ (sharedGeneralizations at: #ConcreteComponent) diagnostics
]

{ #category : #'accessing - ConcreteComponent' }
XSDSchemaDirective >> diagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	(sharedGeneralizations at: #ConcreteComponent) diagnostics: aXSDDiagnostic
]

{ #category : #'accessing - ConcreteComponent' }
XSDSchemaDirective >> element [
	^ (sharedGeneralizations at: #ConcreteComponent) element
]

{ #category : #'accessing - ConcreteComponent' }
XSDSchemaDirective >> element: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) element: aDOMElement
]

{ #category : #initialization }
XSDSchemaDirective >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #SchemaContent.
	}
]

{ #category : #initialization }
XSDSchemaDirective >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ConcreteComponent put: (XSDConcreteComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #SchemaContent put: (XSDSchemaContent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #SchemaDirective put: self.
]

{ #category : #accessing }
XSDSchemaDirective >> resolvedSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	^ resolvedSchema
]

{ #category : #accessing }
XSDSchemaDirective >> resolvedSchema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	self assert: [ aXSDSchema isNil or: [ aXSDSchema oclIsKindOf: 'Schema' ] ].
	resolvedSchema := aXSDSchema
]

{ #category : #'accessing - ConcreteComponent' }
XSDSchemaDirective >> rootContainer [
	^ (sharedGeneralizations at: #ConcreteComponent) rootContainer
]

{ #category : #'accessing - ConcreteComponent' }
XSDSchemaDirective >> rootContainer: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	(sharedGeneralizations at: #ConcreteComponent) rootContainer: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDSchemaDirective >> schema [
	^ (sharedGeneralizations at: #ConcreteComponent) schema
]

{ #category : #'accessing - ConcreteComponent' }
XSDSchemaDirective >> schema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) schema: aXSDSchema
]

{ #category : #accessing }
XSDSchemaDirective >> schemaLocation [
	"<type: 'String' multiplicity: '0..1'>"
	^ schemaLocation
]

{ #category : #accessing }
XSDSchemaDirective >> schemaLocation: aString [
	"<type: 'String' multiplicity: '0..1'>"
	self assert: [ aString isNil or: [ aString isKindOf: String ] ].
	schemaLocation := aString
]
