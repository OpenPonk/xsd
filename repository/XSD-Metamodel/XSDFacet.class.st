Class {
	#name : #XSDFacet,
	#superclass : #XSDElement,
	#instVars : [
		'annotation',
		'effectiveValue',
		'facetName',
		'lexicalValue',
		'simpleTypeDefinition'
	],
	#category : #'XSD-Metamodel-Model'
}

{ #category : #accessing }
XSDFacet >> annotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	^ annotation
]

{ #category : #accessing }
XSDFacet >> annotation: aXSDAnnotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	self assert: [ aXSDAnnotation isNil or: [ aXSDAnnotation oclIsKindOf: 'Annotation' ] ].
	annotation := aXSDAnnotation
]

{ #category : #'accessing - ConcreteComponent' }
XSDFacet >> container [
	^ (sharedGeneralizations at: #ConcreteComponent) container
]

{ #category : #'accessing - ConcreteComponent' }
XSDFacet >> container: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) container: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDFacet >> diagnostics [
	^ (sharedGeneralizations at: #ConcreteComponent) diagnostics
]

{ #category : #'accessing - ConcreteComponent' }
XSDFacet >> diagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	(sharedGeneralizations at: #ConcreteComponent) diagnostics: aXSDDiagnostic
]

{ #category : #accessing }
XSDFacet >> effectiveValue [
	"<type: 'Value' multiplicity: '0..1'>"
	^ effectiveValue
]

{ #category : #accessing }
XSDFacet >> effectiveValue: aValue [
	"<type: 'Value' multiplicity: '0..1'>"
	self assert: [ aValue isNil or: [ aValue isKindOf: Object ] ].
	effectiveValue := aValue
]

{ #category : #'accessing - ConcreteComponent' }
XSDFacet >> element [
	^ (sharedGeneralizations at: #ConcreteComponent) element
]

{ #category : #'accessing - ConcreteComponent' }
XSDFacet >> element: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) element: aDOMElement
]

{ #category : #accessing }
XSDFacet >> facetName [
	"<type: 'String' multiplicity: '0..1'>"
	^ facetName
]

{ #category : #accessing }
XSDFacet >> facetName: aString [
	"<type: 'String' multiplicity: '0..1'>"
	self assert: [ aString isNil or: [ aString isKindOf: String ] ].
	facetName := aString
]

{ #category : #initialization }
XSDFacet >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Component.
	}
]

{ #category : #initialization }
XSDFacet >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ConcreteComponent put: (XSDConcreteComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Component put: (XSDComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Facet put: self.
]

{ #category : #accessing }
XSDFacet >> lexicalValue [
	"<type: 'String' multiplicity: '0..1'>"
	^ lexicalValue
]

{ #category : #accessing }
XSDFacet >> lexicalValue: aString [
	"<type: 'String' multiplicity: '0..1'>"
	self assert: [ aString isNil or: [ aString isKindOf: String ] ].
	lexicalValue := aString
]

{ #category : #'accessing - ConcreteComponent' }
XSDFacet >> rootContainer [
	^ (sharedGeneralizations at: #ConcreteComponent) rootContainer
]

{ #category : #'accessing - ConcreteComponent' }
XSDFacet >> rootContainer: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	(sharedGeneralizations at: #ConcreteComponent) rootContainer: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDFacet >> schema [
	^ (sharedGeneralizations at: #ConcreteComponent) schema
]

{ #category : #'accessing - ConcreteComponent' }
XSDFacet >> schema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) schema: aXSDSchema
]

{ #category : #accessing }
XSDFacet >> simpleTypeDefinition [
	"<type: 'XSDSimpleTypeDefinition' multiplicity: '0..1'>"
	^ simpleTypeDefinition
]

{ #category : #accessing }
XSDFacet >> simpleTypeDefinition: aXSDSimpleTypeDefinition [
	"<type: 'XSDSimpleTypeDefinition' multiplicity: '0..1'>"
	self assert: [ aXSDSimpleTypeDefinition isNil or: [ aXSDSimpleTypeDefinition oclIsKindOf: 'SimpleTypeDefinition' ] ].
	simpleTypeDefinition := aXSDSimpleTypeDefinition
]
