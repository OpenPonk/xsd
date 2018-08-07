Class {
	#name : #XSDRedefine,
	#superclass : #XSDElement,
	#instVars : [
		'annotations',
		'contents'
	],
	#category : #'XSD-Metamodel-Model'
}

{ #category : #accessing }
XSDRedefine >> annotations [
	"<type: 'XSDAnnotation' multiplicity: '0..*'>"
	^ annotations
]

{ #category : #accessing }
XSDRedefine >> annotations: aXSDAnnotation [
	"<type: 'XSDAnnotation' multiplicity: '0..*'>"
	self assert: [ aXSDAnnotation allSatisfy: [ :each | each oclIsKindOf: 'Annotation' ] ].
	annotations := aXSDAnnotation
]

{ #category : #'accessing - ConcreteComponent' }
XSDRedefine >> container [
	^ (sharedGeneralizations at: #ConcreteComponent) container
]

{ #category : #'accessing - ConcreteComponent' }
XSDRedefine >> container: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) container: aXSDConcreteComponent
]

{ #category : #accessing }
XSDRedefine >> contents [
	"<type: 'XSDRedefineContent' multiplicity: '0..*'>"
	^ contents
]

{ #category : #accessing }
XSDRedefine >> contents: aXSDRedefineContent [
	"<type: 'XSDRedefineContent' multiplicity: '0..*'>"
	self assert: [ aXSDRedefineContent allSatisfy: [ :each | each oclIsKindOf: 'RedefineContent' ] ].
	contents := aXSDRedefineContent
]

{ #category : #'accessing - ConcreteComponent' }
XSDRedefine >> diagnostics [
	^ (sharedGeneralizations at: #ConcreteComponent) diagnostics
]

{ #category : #'accessing - ConcreteComponent' }
XSDRedefine >> diagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	(sharedGeneralizations at: #ConcreteComponent) diagnostics: aXSDDiagnostic
]

{ #category : #'accessing - ConcreteComponent' }
XSDRedefine >> element [
	^ (sharedGeneralizations at: #ConcreteComponent) element
]

{ #category : #'accessing - ConcreteComponent' }
XSDRedefine >> element: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) element: aDOMElement
]

{ #category : #'accessing - SchemaCompositor' }
XSDRedefine >> incorporatedSchema [
	^ (sharedGeneralizations at: #SchemaCompositor) incorporatedSchema
]

{ #category : #'accessing - SchemaCompositor' }
XSDRedefine >> incorporatedSchema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #SchemaCompositor) incorporatedSchema: aXSDSchema
]

{ #category : #initialization }
XSDRedefine >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #SchemaCompositor.
	}
]

{ #category : #initialization }
XSDRedefine >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ConcreteComponent put: (XSDConcreteComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #SchemaContent put: (XSDSchemaContent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #SchemaDirective put: (XSDSchemaDirective newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #SchemaCompositor put: (XSDSchemaCompositor newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Redefine put: self.
]

{ #category : #'accessing - SchemaDirective' }
XSDRedefine >> resolvedSchema [
	^ (sharedGeneralizations at: #SchemaDirective) resolvedSchema
]

{ #category : #'accessing - SchemaDirective' }
XSDRedefine >> resolvedSchema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #SchemaDirective) resolvedSchema: aXSDSchema
]

{ #category : #'accessing - ConcreteComponent' }
XSDRedefine >> rootContainer [
	^ (sharedGeneralizations at: #ConcreteComponent) rootContainer
]

{ #category : #'accessing - ConcreteComponent' }
XSDRedefine >> rootContainer: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	(sharedGeneralizations at: #ConcreteComponent) rootContainer: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDRedefine >> schema [
	^ (sharedGeneralizations at: #ConcreteComponent) schema
]

{ #category : #'accessing - ConcreteComponent' }
XSDRedefine >> schema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) schema: aXSDSchema
]

{ #category : #'accessing - SchemaDirective' }
XSDRedefine >> schemaLocation [
	^ (sharedGeneralizations at: #SchemaDirective) schemaLocation
]

{ #category : #'accessing - SchemaDirective' }
XSDRedefine >> schemaLocation: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #SchemaDirective) schemaLocation: aString
]
