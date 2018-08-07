Class {
	#name : #XSDWhiteSpaceFacet,
	#superclass : #XSDElement,
	#instVars : [
		'value'
	],
	#category : #'XSD-Metamodel-Model'
}

{ #category : #'accessing - Facet' }
XSDWhiteSpaceFacet >> annotation [
	^ (sharedGeneralizations at: #Facet) annotation
]

{ #category : #'accessing - Facet' }
XSDWhiteSpaceFacet >> annotation: aXSDAnnotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) annotation: aXSDAnnotation
]

{ #category : #'accessing - ConcreteComponent' }
XSDWhiteSpaceFacet >> container [
	^ (sharedGeneralizations at: #ConcreteComponent) container
]

{ #category : #'accessing - ConcreteComponent' }
XSDWhiteSpaceFacet >> container: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) container: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDWhiteSpaceFacet >> diagnostics [
	^ (sharedGeneralizations at: #ConcreteComponent) diagnostics
]

{ #category : #'accessing - ConcreteComponent' }
XSDWhiteSpaceFacet >> diagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	(sharedGeneralizations at: #ConcreteComponent) diagnostics: aXSDDiagnostic
]

{ #category : #'accessing - Facet' }
XSDWhiteSpaceFacet >> effectiveValue [
	^ (sharedGeneralizations at: #Facet) effectiveValue
]

{ #category : #'accessing - Facet' }
XSDWhiteSpaceFacet >> effectiveValue: aValue [
	"<type: 'Value' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) effectiveValue: aValue
]

{ #category : #'accessing - ConcreteComponent' }
XSDWhiteSpaceFacet >> element [
	^ (sharedGeneralizations at: #ConcreteComponent) element
]

{ #category : #'accessing - ConcreteComponent' }
XSDWhiteSpaceFacet >> element: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) element: aDOMElement
]

{ #category : #'accessing - Facet' }
XSDWhiteSpaceFacet >> facetName [
	^ (sharedGeneralizations at: #Facet) facetName
]

{ #category : #'accessing - Facet' }
XSDWhiteSpaceFacet >> facetName: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) facetName: aString
]

{ #category : #'accessing - FixedFacet' }
XSDWhiteSpaceFacet >> fixed [
	^ (sharedGeneralizations at: #FixedFacet) fixed
]

{ #category : #'accessing - FixedFacet' }
XSDWhiteSpaceFacet >> fixed: aBoolean [
	"<type: 'Boolean' multiplicity: '0..1'>"
	(sharedGeneralizations at: #FixedFacet) fixed: aBoolean
]

{ #category : #initialization }
XSDWhiteSpaceFacet >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #FixedFacet.
	}
]

{ #category : #initialization }
XSDWhiteSpaceFacet >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ConcreteComponent put: (XSDConcreteComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Component put: (XSDComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Facet put: (XSDFacet newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ConstrainingFacet put: (XSDConstrainingFacet newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #FixedFacet put: (XSDFixedFacet newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #WhiteSpaceFacet put: self.
]

{ #category : #'accessing - Facet' }
XSDWhiteSpaceFacet >> lexicalValue [
	^ (sharedGeneralizations at: #Facet) lexicalValue
]

{ #category : #'accessing - Facet' }
XSDWhiteSpaceFacet >> lexicalValue: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) lexicalValue: aString
]

{ #category : #'accessing - ConcreteComponent' }
XSDWhiteSpaceFacet >> rootContainer [
	^ (sharedGeneralizations at: #ConcreteComponent) rootContainer
]

{ #category : #'accessing - ConcreteComponent' }
XSDWhiteSpaceFacet >> rootContainer: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	(sharedGeneralizations at: #ConcreteComponent) rootContainer: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDWhiteSpaceFacet >> schema [
	^ (sharedGeneralizations at: #ConcreteComponent) schema
]

{ #category : #'accessing - ConcreteComponent' }
XSDWhiteSpaceFacet >> schema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) schema: aXSDSchema
]

{ #category : #'accessing - Facet' }
XSDWhiteSpaceFacet >> simpleTypeDefinition [
	^ (sharedGeneralizations at: #Facet) simpleTypeDefinition
]

{ #category : #'accessing - Facet' }
XSDWhiteSpaceFacet >> simpleTypeDefinition: aXSDSimpleTypeDefinition [
	"<type: 'XSDSimpleTypeDefinition' multiplicity: '0..1'>"
	(sharedGeneralizations at: #Facet) simpleTypeDefinition: aXSDSimpleTypeDefinition
]

{ #category : #accessing }
XSDWhiteSpaceFacet >> value [
	"<type: 'XSDWhiteSpace' multiplicity: '0..1'>"
	^ value
]

{ #category : #accessing }
XSDWhiteSpaceFacet >> value: aXSDWhiteSpace [
	"<type: 'XSDWhiteSpace' multiplicity: '0..1'>"
	self assert: [ aXSDWhiteSpace isNil or: [ aXSDWhiteSpace isKindOf: XSDWhiteSpace ] ].
	value := aXSDWhiteSpace
]
