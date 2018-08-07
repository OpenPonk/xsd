Class {
	#name : #XSDMinLengthFacet,
	#superclass : #XSDElement,
	#instVars : [
		'value'
	],
	#category : #'XSD-Metamodel-Model'
}

{ #category : #'accessing - Facet' }
XSDMinLengthFacet >> annotation [
	^ (sharedGeneralizations at: #Facet) annotation
]

{ #category : #'accessing - Facet' }
XSDMinLengthFacet >> annotation: aXSDAnnotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) annotation: aXSDAnnotation
]

{ #category : #'accessing - ConcreteComponent' }
XSDMinLengthFacet >> container [
	^ (sharedGeneralizations at: #ConcreteComponent) container
]

{ #category : #'accessing - ConcreteComponent' }
XSDMinLengthFacet >> container: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) container: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDMinLengthFacet >> diagnostics [
	^ (sharedGeneralizations at: #ConcreteComponent) diagnostics
]

{ #category : #'accessing - ConcreteComponent' }
XSDMinLengthFacet >> diagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	(sharedGeneralizations at: #ConcreteComponent) diagnostics: aXSDDiagnostic
]

{ #category : #'accessing - Facet' }
XSDMinLengthFacet >> effectiveValue [
	^ (sharedGeneralizations at: #Facet) effectiveValue
]

{ #category : #'accessing - Facet' }
XSDMinLengthFacet >> effectiveValue: aValue [
	"<type: 'Value' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) effectiveValue: aValue
]

{ #category : #'accessing - ConcreteComponent' }
XSDMinLengthFacet >> element [
	^ (sharedGeneralizations at: #ConcreteComponent) element
]

{ #category : #'accessing - ConcreteComponent' }
XSDMinLengthFacet >> element: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) element: aDOMElement
]

{ #category : #'accessing - Facet' }
XSDMinLengthFacet >> facetName [
	^ (sharedGeneralizations at: #Facet) facetName
]

{ #category : #'accessing - Facet' }
XSDMinLengthFacet >> facetName: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) facetName: aString
]

{ #category : #'accessing - FixedFacet' }
XSDMinLengthFacet >> fixed [
	^ (sharedGeneralizations at: #FixedFacet) fixed
]

{ #category : #'accessing - FixedFacet' }
XSDMinLengthFacet >> fixed: aBoolean [
	"<type: 'Boolean' multiplicity: '0..1'>"
	(sharedGeneralizations at: #FixedFacet) fixed: aBoolean
]

{ #category : #initialization }
XSDMinLengthFacet >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #FixedFacet.
	}
]

{ #category : #initialization }
XSDMinLengthFacet >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ConcreteComponent put: (XSDConcreteComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Component put: (XSDComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Facet put: (XSDFacet newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ConstrainingFacet put: (XSDConstrainingFacet newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #FixedFacet put: (XSDFixedFacet newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #MinLengthFacet put: self.
]

{ #category : #'accessing - Facet' }
XSDMinLengthFacet >> lexicalValue [
	^ (sharedGeneralizations at: #Facet) lexicalValue
]

{ #category : #'accessing - Facet' }
XSDMinLengthFacet >> lexicalValue: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) lexicalValue: aString
]

{ #category : #'accessing - ConcreteComponent' }
XSDMinLengthFacet >> rootContainer [
	^ (sharedGeneralizations at: #ConcreteComponent) rootContainer
]

{ #category : #'accessing - ConcreteComponent' }
XSDMinLengthFacet >> rootContainer: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	(sharedGeneralizations at: #ConcreteComponent) rootContainer: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDMinLengthFacet >> schema [
	^ (sharedGeneralizations at: #ConcreteComponent) schema
]

{ #category : #'accessing - ConcreteComponent' }
XSDMinLengthFacet >> schema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) schema: aXSDSchema
]

{ #category : #'accessing - Facet' }
XSDMinLengthFacet >> simpleTypeDefinition [
	^ (sharedGeneralizations at: #Facet) simpleTypeDefinition
]

{ #category : #'accessing - Facet' }
XSDMinLengthFacet >> simpleTypeDefinition: aXSDSimpleTypeDefinition [
	"<type: 'XSDSimpleTypeDefinition' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) simpleTypeDefinition: aXSDSimpleTypeDefinition
]

{ #category : #accessing }
XSDMinLengthFacet >> value [
	"<type: 'Integer' multiplicity: '0..1'>"
	^ value
]

{ #category : #accessing }
XSDMinLengthFacet >> value: anInteger [
	"<type: 'Integer' multiplicity: '0..1'>"
	self assert: [ anInteger isNil or: [ anInteger isKindOf: Integer ] ].
	value := anInteger
]
