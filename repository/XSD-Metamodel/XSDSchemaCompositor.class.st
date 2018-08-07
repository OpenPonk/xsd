Class {
	#name : #XSDSchemaCompositor,
	#superclass : #XSDElement,
	#instVars : [
		'incorporatedSchema'
	],
	#category : #'XSD-Metamodel-Model'
}

{ #category : #'accessing - ConcreteComponent' }
XSDSchemaCompositor >> container [
	^ (sharedGeneralizations at: #ConcreteComponent) container
]

{ #category : #'accessing - ConcreteComponent' }
XSDSchemaCompositor >> container: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) container: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDSchemaCompositor >> diagnostics [
	^ (sharedGeneralizations at: #ConcreteComponent) diagnostics
]

{ #category : #'accessing - ConcreteComponent' }
XSDSchemaCompositor >> diagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	(sharedGeneralizations at: #ConcreteComponent) diagnostics: aXSDDiagnostic
]

{ #category : #'accessing - ConcreteComponent' }
XSDSchemaCompositor >> element [
	^ (sharedGeneralizations at: #ConcreteComponent) element
]

{ #category : #'accessing - ConcreteComponent' }
XSDSchemaCompositor >> element: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) element: aDOMElement
]

{ #category : #accessing }
XSDSchemaCompositor >> incorporatedSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	^ incorporatedSchema
]

{ #category : #accessing }
XSDSchemaCompositor >> incorporatedSchema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	self assert: [ aXSDSchema isNil or: [ aXSDSchema oclIsKindOf: 'Schema' ] ].
	incorporatedSchema := aXSDSchema
]

{ #category : #initialization }
XSDSchemaCompositor >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #SchemaDirective.
	}
]

{ #category : #initialization }
XSDSchemaCompositor >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ConcreteComponent put: (XSDConcreteComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #SchemaContent put: (XSDSchemaContent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #SchemaDirective put: (XSDSchemaDirective newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #SchemaCompositor put: self.
]

{ #category : #'accessing - SchemaDirective' }
XSDSchemaCompositor >> resolvedSchema [
	^ (sharedGeneralizations at: #SchemaDirective) resolvedSchema
]

{ #category : #'accessing - SchemaDirective' }
XSDSchemaCompositor >> resolvedSchema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #SchemaDirective) resolvedSchema: aXSDSchema
]

{ #category : #'accessing - ConcreteComponent' }
XSDSchemaCompositor >> rootContainer [
	^ (sharedGeneralizations at: #ConcreteComponent) rootContainer
]

{ #category : #'accessing - ConcreteComponent' }
XSDSchemaCompositor >> rootContainer: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	(sharedGeneralizations at: #ConcreteComponent) rootContainer: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDSchemaCompositor >> schema [
	^ (sharedGeneralizations at: #ConcreteComponent) schema
]

{ #category : #'accessing - ConcreteComponent' }
XSDSchemaCompositor >> schema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) schema: aXSDSchema
]

{ #category : #'accessing - SchemaDirective' }
XSDSchemaCompositor >> schemaLocation [
	^ (sharedGeneralizations at: #SchemaDirective) schemaLocation
]

{ #category : #'accessing - SchemaDirective' }
XSDSchemaCompositor >> schemaLocation: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #SchemaDirective) schemaLocation: aString
]
