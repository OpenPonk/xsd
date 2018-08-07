Class {
	#name : #XSDXPathDefinition,
	#superclass : #XSDElement,
	#instVars : [
		'annotation',
		'value',
		'variety'
	],
	#category : #'XSD-Metamodel-Model'
}

{ #category : #accessing }
XSDXPathDefinition >> annotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	^ annotation
]

{ #category : #accessing }
XSDXPathDefinition >> annotation: aXSDAnnotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	self assert: [ aXSDAnnotation isNil or: [ aXSDAnnotation oclIsKindOf: 'Annotation' ] ].
	annotation := aXSDAnnotation
]

{ #category : #'accessing - ConcreteComponent' }
XSDXPathDefinition >> container [
	^ (sharedGeneralizations at: #ConcreteComponent) container
]

{ #category : #'accessing - ConcreteComponent' }
XSDXPathDefinition >> container: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) container: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDXPathDefinition >> diagnostics [
	^ (sharedGeneralizations at: #ConcreteComponent) diagnostics
]

{ #category : #'accessing - ConcreteComponent' }
XSDXPathDefinition >> diagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	(sharedGeneralizations at: #ConcreteComponent) diagnostics: aXSDDiagnostic
]

{ #category : #'accessing - ConcreteComponent' }
XSDXPathDefinition >> element [
	^ (sharedGeneralizations at: #ConcreteComponent) element
]

{ #category : #'accessing - ConcreteComponent' }
XSDXPathDefinition >> element: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) element: aDOMElement
]

{ #category : #initialization }
XSDXPathDefinition >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Component.
	}
]

{ #category : #initialization }
XSDXPathDefinition >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ConcreteComponent put: (XSDConcreteComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Component put: (XSDComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #XPathDefinition put: self.
]

{ #category : #'accessing - ConcreteComponent' }
XSDXPathDefinition >> rootContainer [
	^ (sharedGeneralizations at: #ConcreteComponent) rootContainer
]

{ #category : #'accessing - ConcreteComponent' }
XSDXPathDefinition >> rootContainer: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	(sharedGeneralizations at: #ConcreteComponent) rootContainer: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDXPathDefinition >> schema [
	^ (sharedGeneralizations at: #ConcreteComponent) schema
]

{ #category : #'accessing - ConcreteComponent' }
XSDXPathDefinition >> schema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) schema: aXSDSchema
]

{ #category : #accessing }
XSDXPathDefinition >> value [
	"<type: 'String' multiplicity: '0..1'>"
	^ value
]

{ #category : #accessing }
XSDXPathDefinition >> value: aString [
	"<type: 'String' multiplicity: '0..1'>"
	self assert: [ aString isNil or: [ aString isKindOf: String ] ].
	value := aString
]

{ #category : #accessing }
XSDXPathDefinition >> variety [
	"<type: 'XSDXPathVariety' multiplicity: '0..1'>"
	^ variety
]

{ #category : #accessing }
XSDXPathDefinition >> variety: aXSDXPathVariety [
	"<type: 'XSDXPathVariety' multiplicity: '0..1'>"
	self assert: [ aXSDXPathVariety isNil or: [ aXSDXPathVariety isKindOf: XSDXPathVariety ] ].
	variety := aXSDXPathVariety
]
