Class {
	#name : #XSDFractionDigitsFacet,
	#superclass : #XSDElement,
	#instVars : [
		'value'
	],
	#category : #'XSD-Metamodel-Model'
}

{ #category : #'accessing - Facet' }
XSDFractionDigitsFacet >> annotation [
	^ (sharedGeneralizations at: #Facet) annotation
]

{ #category : #'accessing - Facet' }
XSDFractionDigitsFacet >> annotation: aXSDAnnotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) annotation: aXSDAnnotation
]

{ #category : #'accessing - ConcreteComponent' }
XSDFractionDigitsFacet >> container [
	^ (sharedGeneralizations at: #ConcreteComponent) container
]

{ #category : #'accessing - ConcreteComponent' }
XSDFractionDigitsFacet >> container: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) container: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDFractionDigitsFacet >> diagnostics [
	^ (sharedGeneralizations at: #ConcreteComponent) diagnostics
]

{ #category : #'accessing - ConcreteComponent' }
XSDFractionDigitsFacet >> diagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	(sharedGeneralizations at: #ConcreteComponent) diagnostics: aXSDDiagnostic
]

{ #category : #'accessing - Facet' }
XSDFractionDigitsFacet >> effectiveValue [
	^ (sharedGeneralizations at: #Facet) effectiveValue
]

{ #category : #'accessing - Facet' }
XSDFractionDigitsFacet >> effectiveValue: aValue [
	"<type: 'Value' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) effectiveValue: aValue
]

{ #category : #'accessing - ConcreteComponent' }
XSDFractionDigitsFacet >> element [
	^ (sharedGeneralizations at: #ConcreteComponent) element
]

{ #category : #'accessing - ConcreteComponent' }
XSDFractionDigitsFacet >> element: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) element: aDOMElement
]

{ #category : #'accessing - Facet' }
XSDFractionDigitsFacet >> facetName [
	^ (sharedGeneralizations at: #Facet) facetName
]

{ #category : #'accessing - Facet' }
XSDFractionDigitsFacet >> facetName: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) facetName: aString
]

{ #category : #'accessing - FixedFacet' }
XSDFractionDigitsFacet >> fixed [
	^ (sharedGeneralizations at: #FixedFacet) fixed
]

{ #category : #'accessing - FixedFacet' }
XSDFractionDigitsFacet >> fixed: aBoolean [
	"<type: 'Boolean' multiplicity: '0..1'>"
	(sharedGeneralizations at: #FixedFacet) fixed: aBoolean
]

{ #category : #initialization }
XSDFractionDigitsFacet >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #FixedFacet.
	}
]

{ #category : #initialization }
XSDFractionDigitsFacet >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ConcreteComponent put: (XSDConcreteComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Component put: (XSDComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Facet put: (XSDFacet newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ConstrainingFacet put: (XSDConstrainingFacet newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #FixedFacet put: (XSDFixedFacet newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #FractionDigitsFacet put: self.
]

{ #category : #'accessing - Facet' }
XSDFractionDigitsFacet >> lexicalValue [
	^ (sharedGeneralizations at: #Facet) lexicalValue
]

{ #category : #'accessing - Facet' }
XSDFractionDigitsFacet >> lexicalValue: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) lexicalValue: aString
]

{ #category : #'accessing - ConcreteComponent' }
XSDFractionDigitsFacet >> rootContainer [
	^ (sharedGeneralizations at: #ConcreteComponent) rootContainer
]

{ #category : #'accessing - ConcreteComponent' }
XSDFractionDigitsFacet >> rootContainer: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	(sharedGeneralizations at: #ConcreteComponent) rootContainer: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDFractionDigitsFacet >> schema [
	^ (sharedGeneralizations at: #ConcreteComponent) schema
]

{ #category : #'accessing - ConcreteComponent' }
XSDFractionDigitsFacet >> schema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) schema: aXSDSchema
]

{ #category : #'accessing - Facet' }
XSDFractionDigitsFacet >> simpleTypeDefinition [
	^ (sharedGeneralizations at: #Facet) simpleTypeDefinition
]

{ #category : #'accessing - Facet' }
XSDFractionDigitsFacet >> simpleTypeDefinition: aXSDSimpleTypeDefinition [
	"<type: 'XSDSimpleTypeDefinition' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) simpleTypeDefinition: aXSDSimpleTypeDefinition
]

{ #category : #accessing }
XSDFractionDigitsFacet >> value [
	"<type: 'Integer' multiplicity: '0..1'>"
	^ value
]

{ #category : #accessing }
XSDFractionDigitsFacet >> value: anInteger [
	"<type: 'Integer' multiplicity: '0..1'>"
	self assert: [ anInteger isNil or: [ anInteger isKindOf: Integer ] ].
	value := anInteger
]
