Class {
	#name : #XSDOrderedFacet,
	#superclass : #XSDElement,
	#instVars : [
		'value'
	],
	#category : #'XSD-Metamodel-Model'
}

{ #category : #'accessing - Facet' }
XSDOrderedFacet >> annotation [
	^ (sharedGeneralizations at: #Facet) annotation
]

{ #category : #'accessing - Facet' }
XSDOrderedFacet >> annotation: aXSDAnnotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) annotation: aXSDAnnotation
]

{ #category : #'accessing - ConcreteComponent' }
XSDOrderedFacet >> container [
	^ (sharedGeneralizations at: #ConcreteComponent) container
]

{ #category : #'accessing - ConcreteComponent' }
XSDOrderedFacet >> container: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) container: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDOrderedFacet >> diagnostics [
	^ (sharedGeneralizations at: #ConcreteComponent) diagnostics
]

{ #category : #'accessing - ConcreteComponent' }
XSDOrderedFacet >> diagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	(sharedGeneralizations at: #ConcreteComponent) diagnostics: aXSDDiagnostic
]

{ #category : #'accessing - Facet' }
XSDOrderedFacet >> effectiveValue [
	^ (sharedGeneralizations at: #Facet) effectiveValue
]

{ #category : #'accessing - Facet' }
XSDOrderedFacet >> effectiveValue: aValue [
	"<type: 'Value' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) effectiveValue: aValue
]

{ #category : #'accessing - ConcreteComponent' }
XSDOrderedFacet >> element [
	^ (sharedGeneralizations at: #ConcreteComponent) element
]

{ #category : #'accessing - ConcreteComponent' }
XSDOrderedFacet >> element: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) element: aDOMElement
]

{ #category : #'accessing - Facet' }
XSDOrderedFacet >> facetName [
	^ (sharedGeneralizations at: #Facet) facetName
]

{ #category : #'accessing - Facet' }
XSDOrderedFacet >> facetName: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) facetName: aString
]

{ #category : #initialization }
XSDOrderedFacet >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #FundamentalFacet.
	}
]

{ #category : #initialization }
XSDOrderedFacet >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ConcreteComponent put: (XSDConcreteComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Component put: (XSDComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Facet put: (XSDFacet newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #FundamentalFacet put: (XSDFundamentalFacet newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #OrderedFacet put: self.
]

{ #category : #'accessing - Facet' }
XSDOrderedFacet >> lexicalValue [
	^ (sharedGeneralizations at: #Facet) lexicalValue
]

{ #category : #'accessing - Facet' }
XSDOrderedFacet >> lexicalValue: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) lexicalValue: aString
]

{ #category : #'accessing - ConcreteComponent' }
XSDOrderedFacet >> rootContainer [
	^ (sharedGeneralizations at: #ConcreteComponent) rootContainer
]

{ #category : #'accessing - ConcreteComponent' }
XSDOrderedFacet >> rootContainer: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	(sharedGeneralizations at: #ConcreteComponent) rootContainer: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDOrderedFacet >> schema [
	^ (sharedGeneralizations at: #ConcreteComponent) schema
]

{ #category : #'accessing - ConcreteComponent' }
XSDOrderedFacet >> schema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) schema: aXSDSchema
]

{ #category : #'accessing - Facet' }
XSDOrderedFacet >> simpleTypeDefinition [
	^ (sharedGeneralizations at: #Facet) simpleTypeDefinition
]

{ #category : #'accessing - Facet' }
XSDOrderedFacet >> simpleTypeDefinition: aXSDSimpleTypeDefinition [
	"<type: 'XSDSimpleTypeDefinition' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) simpleTypeDefinition: aXSDSimpleTypeDefinition
]

{ #category : #accessing }
XSDOrderedFacet >> value [
	"<type: 'XSDOrdered' multiplicity: '0..1'>"
	^ value
]

{ #category : #accessing }
XSDOrderedFacet >> value: aXSDOrdered [
	"<type: 'XSDOrdered' multiplicity: '0..1'>"
	self assert: [ aXSDOrdered isNil or: [ aXSDOrdered isKindOf: XSDOrdered ] ].
	value := aXSDOrdered
]
