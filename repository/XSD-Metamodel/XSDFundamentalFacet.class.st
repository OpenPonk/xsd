Class {
	#name : #XSDFundamentalFacet,
	#superclass : #XSDElement,
	#category : #'XSD-Metamodel-Model'
}

{ #category : #'accessing - Facet' }
XSDFundamentalFacet >> annotation [
	^ (sharedGeneralizations at: #Facet) annotation
]

{ #category : #'accessing - Facet' }
XSDFundamentalFacet >> annotation: aXSDAnnotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) annotation: aXSDAnnotation
]

{ #category : #'accessing - ConcreteComponent' }
XSDFundamentalFacet >> container [
	^ (sharedGeneralizations at: #ConcreteComponent) container
]

{ #category : #'accessing - ConcreteComponent' }
XSDFundamentalFacet >> container: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) container: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDFundamentalFacet >> diagnostics [
	^ (sharedGeneralizations at: #ConcreteComponent) diagnostics
]

{ #category : #'accessing - ConcreteComponent' }
XSDFundamentalFacet >> diagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	(sharedGeneralizations at: #ConcreteComponent) diagnostics: aXSDDiagnostic
]

{ #category : #'accessing - Facet' }
XSDFundamentalFacet >> effectiveValue [
	^ (sharedGeneralizations at: #Facet) effectiveValue
]

{ #category : #'accessing - Facet' }
XSDFundamentalFacet >> effectiveValue: aValue [
	"<type: 'Value' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) effectiveValue: aValue
]

{ #category : #'accessing - ConcreteComponent' }
XSDFundamentalFacet >> element [
	^ (sharedGeneralizations at: #ConcreteComponent) element
]

{ #category : #'accessing - ConcreteComponent' }
XSDFundamentalFacet >> element: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) element: aDOMElement
]

{ #category : #'accessing - Facet' }
XSDFundamentalFacet >> facetName [
	^ (sharedGeneralizations at: #Facet) facetName
]

{ #category : #'accessing - Facet' }
XSDFundamentalFacet >> facetName: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) facetName: aString
]

{ #category : #initialization }
XSDFundamentalFacet >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Facet.
	}
]

{ #category : #initialization }
XSDFundamentalFacet >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ConcreteComponent put: (XSDConcreteComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Component put: (XSDComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Facet put: (XSDFacet newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #FundamentalFacet put: self.
]

{ #category : #'accessing - Facet' }
XSDFundamentalFacet >> lexicalValue [
	^ (sharedGeneralizations at: #Facet) lexicalValue
]

{ #category : #'accessing - Facet' }
XSDFundamentalFacet >> lexicalValue: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) lexicalValue: aString
]

{ #category : #'accessing - ConcreteComponent' }
XSDFundamentalFacet >> rootContainer [
	^ (sharedGeneralizations at: #ConcreteComponent) rootContainer
]

{ #category : #'accessing - ConcreteComponent' }
XSDFundamentalFacet >> rootContainer: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	(sharedGeneralizations at: #ConcreteComponent) rootContainer: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDFundamentalFacet >> schema [
	^ (sharedGeneralizations at: #ConcreteComponent) schema
]

{ #category : #'accessing - ConcreteComponent' }
XSDFundamentalFacet >> schema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) schema: aXSDSchema
]

{ #category : #'accessing - Facet' }
XSDFundamentalFacet >> simpleTypeDefinition [
	^ (sharedGeneralizations at: #Facet) simpleTypeDefinition
]

{ #category : #'accessing - Facet' }
XSDFundamentalFacet >> simpleTypeDefinition: aXSDSimpleTypeDefinition [
	"<type: 'XSDSimpleTypeDefinition' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) simpleTypeDefinition: aXSDSimpleTypeDefinition
]
