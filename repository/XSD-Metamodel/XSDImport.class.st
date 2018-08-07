Class {
	#name : #XSDImport,
	#superclass : #XSDElement,
	#instVars : [
		'annotation',
		'namespace'
	],
	#category : #'XSD-Metamodel-Model'
}

{ #category : #accessing }
XSDImport >> annotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	^ annotation
]

{ #category : #accessing }
XSDImport >> annotation: aXSDAnnotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	self assert: [ aXSDAnnotation isNil or: [ aXSDAnnotation oclIsKindOf: 'Annotation' ] ].
	annotation := aXSDAnnotation
]

{ #category : #'accessing - ConcreteComponent' }
XSDImport >> container [
	^ (sharedGeneralizations at: #ConcreteComponent) container
]

{ #category : #'accessing - ConcreteComponent' }
XSDImport >> container: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) container: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDImport >> diagnostics [
	^ (sharedGeneralizations at: #ConcreteComponent) diagnostics
]

{ #category : #'accessing - ConcreteComponent' }
XSDImport >> diagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	(sharedGeneralizations at: #ConcreteComponent) diagnostics: aXSDDiagnostic
]

{ #category : #'accessing - ConcreteComponent' }
XSDImport >> element [
	^ (sharedGeneralizations at: #ConcreteComponent) element
]

{ #category : #'accessing - ConcreteComponent' }
XSDImport >> element: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) element: aDOMElement
]

{ #category : #initialization }
XSDImport >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #SchemaDirective.
	}
]

{ #category : #initialization }
XSDImport >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ConcreteComponent put: (XSDConcreteComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #SchemaContent put: (XSDSchemaContent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #SchemaDirective put: (XSDSchemaDirective newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Import put: self.
]

{ #category : #accessing }
XSDImport >> namespace [
	"<type: 'String' multiplicity: '0..1'>"
	^ namespace
]

{ #category : #accessing }
XSDImport >> namespace: aString [
	"<type: 'String' multiplicity: '0..1'>"
	self assert: [ aString isNil or: [ aString isKindOf: String ] ].
	namespace := aString
]

{ #category : #'accessing - SchemaDirective' }
XSDImport >> resolvedSchema [
	^ (sharedGeneralizations at: #SchemaDirective) resolvedSchema
]

{ #category : #'accessing - SchemaDirective' }
XSDImport >> resolvedSchema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #SchemaDirective) resolvedSchema: aXSDSchema
]

{ #category : #'accessing - ConcreteComponent' }
XSDImport >> rootContainer [
	^ (sharedGeneralizations at: #ConcreteComponent) rootContainer
]

{ #category : #'accessing - ConcreteComponent' }
XSDImport >> rootContainer: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	(sharedGeneralizations at: #ConcreteComponent) rootContainer: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDImport >> schema [
	^ (sharedGeneralizations at: #ConcreteComponent) schema
]

{ #category : #'accessing - ConcreteComponent' }
XSDImport >> schema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) schema: aXSDSchema
]

{ #category : #'accessing - SchemaDirective' }
XSDImport >> schemaLocation [
	^ (sharedGeneralizations at: #SchemaDirective) schemaLocation
]

{ #category : #'accessing - SchemaDirective' }
XSDImport >> schemaLocation: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #SchemaDirective) schemaLocation: aString
]
