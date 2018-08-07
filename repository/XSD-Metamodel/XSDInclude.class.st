Class {
	#name : #XSDInclude,
	#superclass : #XSDElement,
	#instVars : [
		'annotation'
	],
	#category : #'XSD-Metamodel-Model'
}

{ #category : #accessing }
XSDInclude >> annotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	^ annotation
]

{ #category : #accessing }
XSDInclude >> annotation: aXSDAnnotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	self assert: [ aXSDAnnotation isNil or: [ aXSDAnnotation oclIsKindOf: 'Annotation' ] ].
	annotation := aXSDAnnotation
]

{ #category : #'accessing - ConcreteComponent' }
XSDInclude >> container [
	^ (sharedGeneralizations at: #ConcreteComponent) container
]

{ #category : #'accessing - ConcreteComponent' }
XSDInclude >> container: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) container: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDInclude >> diagnostics [
	^ (sharedGeneralizations at: #ConcreteComponent) diagnostics
]

{ #category : #'accessing - ConcreteComponent' }
XSDInclude >> diagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	(sharedGeneralizations at: #ConcreteComponent) diagnostics: aXSDDiagnostic
]

{ #category : #'accessing - ConcreteComponent' }
XSDInclude >> element [
	^ (sharedGeneralizations at: #ConcreteComponent) element
]

{ #category : #'accessing - ConcreteComponent' }
XSDInclude >> element: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) element: aDOMElement
]

{ #category : #'accessing - SchemaCompositor' }
XSDInclude >> incorporatedSchema [
	^ (sharedGeneralizations at: #SchemaCompositor) incorporatedSchema
]

{ #category : #'accessing - SchemaCompositor' }
XSDInclude >> incorporatedSchema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #SchemaCompositor) incorporatedSchema: aXSDSchema
]

{ #category : #initialization }
XSDInclude >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #SchemaCompositor.
	}
]

{ #category : #initialization }
XSDInclude >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ConcreteComponent put: (XSDConcreteComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #SchemaContent put: (XSDSchemaContent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #SchemaDirective put: (XSDSchemaDirective newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #SchemaCompositor put: (XSDSchemaCompositor newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Include put: self.
]

{ #category : #'accessing - SchemaDirective' }
XSDInclude >> resolvedSchema [
	^ (sharedGeneralizations at: #SchemaDirective) resolvedSchema
]

{ #category : #'accessing - SchemaDirective' }
XSDInclude >> resolvedSchema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #SchemaDirective) resolvedSchema: aXSDSchema
]

{ #category : #'accessing - ConcreteComponent' }
XSDInclude >> rootContainer [
	^ (sharedGeneralizations at: #ConcreteComponent) rootContainer
]

{ #category : #'accessing - ConcreteComponent' }
XSDInclude >> rootContainer: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	(sharedGeneralizations at: #ConcreteComponent) rootContainer: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDInclude >> schema [
	^ (sharedGeneralizations at: #ConcreteComponent) schema
]

{ #category : #'accessing - ConcreteComponent' }
XSDInclude >> schema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) schema: aXSDSchema
]

{ #category : #'accessing - SchemaDirective' }
XSDInclude >> schemaLocation [
	^ (sharedGeneralizations at: #SchemaDirective) schemaLocation
]

{ #category : #'accessing - SchemaDirective' }
XSDInclude >> schemaLocation: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #SchemaDirective) schemaLocation: aString
]
