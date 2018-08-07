Class {
	#name : #XSDMinInclusiveFacet,
	#superclass : #XSDElement,
	#category : #'XSD-Metamodel-Model'
}

{ #category : #'accessing - Facet' }
XSDMinInclusiveFacet >> annotation [
	^ (sharedGeneralizations at: #Facet) annotation
]

{ #category : #'accessing - Facet' }
XSDMinInclusiveFacet >> annotation: aXSDAnnotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) annotation: aXSDAnnotation
]

{ #category : #'accessing - ConcreteComponent' }
XSDMinInclusiveFacet >> container [
	^ (sharedGeneralizations at: #ConcreteComponent) container
]

{ #category : #'accessing - ConcreteComponent' }
XSDMinInclusiveFacet >> container: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) container: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDMinInclusiveFacet >> diagnostics [
	^ (sharedGeneralizations at: #ConcreteComponent) diagnostics
]

{ #category : #'accessing - ConcreteComponent' }
XSDMinInclusiveFacet >> diagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	(sharedGeneralizations at: #ConcreteComponent) diagnostics: aXSDDiagnostic
]

{ #category : #'accessing - Facet' }
XSDMinInclusiveFacet >> effectiveValue [
	^ (sharedGeneralizations at: #Facet) effectiveValue
]

{ #category : #'accessing - Facet' }
XSDMinInclusiveFacet >> effectiveValue: aValue [
	"<type: 'Value' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) effectiveValue: aValue
]

{ #category : #'accessing - ConcreteComponent' }
XSDMinInclusiveFacet >> element [
	^ (sharedGeneralizations at: #ConcreteComponent) element
]

{ #category : #'accessing - ConcreteComponent' }
XSDMinInclusiveFacet >> element: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) element: aDOMElement
]

{ #category : #'accessing - MinFacet' }
XSDMinInclusiveFacet >> exclusive [
	^ (sharedGeneralizations at: #MinFacet) exclusive
]

{ #category : #'accessing - MinFacet' }
XSDMinInclusiveFacet >> exclusive: aBoolean [
	"<type: 'Boolean' multiplicity: '0..1'>"
	(sharedGeneralizations at: #MinFacet) exclusive: aBoolean
]

{ #category : #'accessing - Facet' }
XSDMinInclusiveFacet >> facetName [
	^ (sharedGeneralizations at: #Facet) facetName
]

{ #category : #'accessing - Facet' }
XSDMinInclusiveFacet >> facetName: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) facetName: aString
]

{ #category : #'accessing - FixedFacet' }
XSDMinInclusiveFacet >> fixed [
	^ (sharedGeneralizations at: #FixedFacet) fixed
]

{ #category : #'accessing - FixedFacet' }
XSDMinInclusiveFacet >> fixed: aBoolean [
	"<type: 'Boolean' multiplicity: '0..1'>"
	(sharedGeneralizations at: #FixedFacet) fixed: aBoolean
]

{ #category : #'accessing - MinFacet' }
XSDMinInclusiveFacet >> inclusive [
	^ (sharedGeneralizations at: #MinFacet) inclusive
]

{ #category : #'accessing - MinFacet' }
XSDMinInclusiveFacet >> inclusive: aBoolean [
	"<type: 'Boolean' multiplicity: '0..1'>"
	(sharedGeneralizations at: #MinFacet) inclusive: aBoolean
]

{ #category : #initialization }
XSDMinInclusiveFacet >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #MinFacet.
	}
]

{ #category : #initialization }
XSDMinInclusiveFacet >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ConcreteComponent put: (XSDConcreteComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Component put: (XSDComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Facet put: (XSDFacet newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ConstrainingFacet put: (XSDConstrainingFacet newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #FixedFacet put: (XSDFixedFacet newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #MinFacet put: (XSDMinFacet newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #MinInclusiveFacet put: self.
]

{ #category : #'accessing - Facet' }
XSDMinInclusiveFacet >> lexicalValue [
	^ (sharedGeneralizations at: #Facet) lexicalValue
]

{ #category : #'accessing - Facet' }
XSDMinInclusiveFacet >> lexicalValue: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) lexicalValue: aString
]

{ #category : #'accessing - ConcreteComponent' }
XSDMinInclusiveFacet >> rootContainer [
	^ (sharedGeneralizations at: #ConcreteComponent) rootContainer
]

{ #category : #'accessing - ConcreteComponent' }
XSDMinInclusiveFacet >> rootContainer: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	(sharedGeneralizations at: #ConcreteComponent) rootContainer: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDMinInclusiveFacet >> schema [
	^ (sharedGeneralizations at: #ConcreteComponent) schema
]

{ #category : #'accessing - ConcreteComponent' }
XSDMinInclusiveFacet >> schema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) schema: aXSDSchema
]

{ #category : #'accessing - Facet' }
XSDMinInclusiveFacet >> simpleTypeDefinition [
	^ (sharedGeneralizations at: #Facet) simpleTypeDefinition
]

{ #category : #'accessing - Facet' }
XSDMinInclusiveFacet >> simpleTypeDefinition: aXSDSimpleTypeDefinition [
	"<type: 'XSDSimpleTypeDefinition' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) simpleTypeDefinition: aXSDSimpleTypeDefinition
]

{ #category : #'accessing - MinFacet' }
XSDMinInclusiveFacet >> value [
	^ (sharedGeneralizations at: #MinFacet) value
]

{ #category : #'accessing - MinFacet' }
XSDMinInclusiveFacet >> value: aValue [
	"<type: 'Value' multiplicity: '0..1'>"
	(sharedGeneralizations at: #MinFacet) value: aValue
]
