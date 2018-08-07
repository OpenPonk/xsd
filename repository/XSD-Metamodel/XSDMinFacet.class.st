Class {
	#name : #XSDMinFacet,
	#superclass : #XSDElement,
	#instVars : [
		'exclusive',
		'inclusive',
		'value'
	],
	#category : #'XSD-Metamodel-Model'
}

{ #category : #'accessing - Facet' }
XSDMinFacet >> annotation [
	^ (sharedGeneralizations at: #Facet) annotation
]

{ #category : #'accessing - Facet' }
XSDMinFacet >> annotation: aXSDAnnotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) annotation: aXSDAnnotation
]

{ #category : #'accessing - ConcreteComponent' }
XSDMinFacet >> container [
	^ (sharedGeneralizations at: #ConcreteComponent) container
]

{ #category : #'accessing - ConcreteComponent' }
XSDMinFacet >> container: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) container: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDMinFacet >> diagnostics [
	^ (sharedGeneralizations at: #ConcreteComponent) diagnostics
]

{ #category : #'accessing - ConcreteComponent' }
XSDMinFacet >> diagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	(sharedGeneralizations at: #ConcreteComponent) diagnostics: aXSDDiagnostic
]

{ #category : #'accessing - Facet' }
XSDMinFacet >> effectiveValue [
	^ (sharedGeneralizations at: #Facet) effectiveValue
]

{ #category : #'accessing - Facet' }
XSDMinFacet >> effectiveValue: aValue [
	"<type: 'Value' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) effectiveValue: aValue
]

{ #category : #'accessing - ConcreteComponent' }
XSDMinFacet >> element [
	^ (sharedGeneralizations at: #ConcreteComponent) element
]

{ #category : #'accessing - ConcreteComponent' }
XSDMinFacet >> element: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) element: aDOMElement
]

{ #category : #accessing }
XSDMinFacet >> exclusive [
	"<type: 'Boolean' multiplicity: '0..1'>"
	^ exclusive
]

{ #category : #accessing }
XSDMinFacet >> exclusive: aBoolean [
	"<type: 'Boolean' multiplicity: '0..1'>"
	self assert: [ aBoolean isNil or: [ aBoolean isKindOf: Boolean ] ].
	exclusive := aBoolean
]

{ #category : #'accessing - Facet' }
XSDMinFacet >> facetName [
	^ (sharedGeneralizations at: #Facet) facetName
]

{ #category : #'accessing - Facet' }
XSDMinFacet >> facetName: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) facetName: aString
]

{ #category : #'accessing - FixedFacet' }
XSDMinFacet >> fixed [
	^ (sharedGeneralizations at: #FixedFacet) fixed
]

{ #category : #'accessing - FixedFacet' }
XSDMinFacet >> fixed: aBoolean [
	"<type: 'Boolean' multiplicity: '0..1'>"
	(sharedGeneralizations at: #FixedFacet) fixed: aBoolean
]

{ #category : #accessing }
XSDMinFacet >> inclusive [
	"<type: 'Boolean' multiplicity: '0..1'>"
	^ inclusive
]

{ #category : #accessing }
XSDMinFacet >> inclusive: aBoolean [
	"<type: 'Boolean' multiplicity: '0..1'>"
	self assert: [ aBoolean isNil or: [ aBoolean isKindOf: Boolean ] ].
	inclusive := aBoolean
]

{ #category : #initialization }
XSDMinFacet >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #FixedFacet.
	}
]

{ #category : #initialization }
XSDMinFacet >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ConcreteComponent put: (XSDConcreteComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Component put: (XSDComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Facet put: (XSDFacet newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ConstrainingFacet put: (XSDConstrainingFacet newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #FixedFacet put: (XSDFixedFacet newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #MinFacet put: self.
]

{ #category : #'accessing - Facet' }
XSDMinFacet >> lexicalValue [
	^ (sharedGeneralizations at: #Facet) lexicalValue
]

{ #category : #'accessing - Facet' }
XSDMinFacet >> lexicalValue: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) lexicalValue: aString
]

{ #category : #'accessing - ConcreteComponent' }
XSDMinFacet >> rootContainer [
	^ (sharedGeneralizations at: #ConcreteComponent) rootContainer
]

{ #category : #'accessing - ConcreteComponent' }
XSDMinFacet >> rootContainer: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	(sharedGeneralizations at: #ConcreteComponent) rootContainer: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDMinFacet >> schema [
	^ (sharedGeneralizations at: #ConcreteComponent) schema
]

{ #category : #'accessing - ConcreteComponent' }
XSDMinFacet >> schema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) schema: aXSDSchema
]

{ #category : #'accessing - Facet' }
XSDMinFacet >> simpleTypeDefinition [
	^ (sharedGeneralizations at: #Facet) simpleTypeDefinition
]

{ #category : #'accessing - Facet' }
XSDMinFacet >> simpleTypeDefinition: aXSDSimpleTypeDefinition [
	"<type: 'XSDSimpleTypeDefinition' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) simpleTypeDefinition: aXSDSimpleTypeDefinition
]

{ #category : #accessing }
XSDMinFacet >> value [
	"<type: 'Value' multiplicity: '0..1'>"
	^ value
]

{ #category : #accessing }
XSDMinFacet >> value: aValue [
	"<type: 'Value' multiplicity: '0..1'>"
	self assert: [ aValue isNil or: [ aValue isKindOf: Object ] ].
	value := aValue
]
