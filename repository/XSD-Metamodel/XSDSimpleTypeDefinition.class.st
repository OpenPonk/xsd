Class {
	#name : #XSDSimpleTypeDefinition,
	#superclass : #XSDElement,
	#instVars : [
		'baseTypeDefinition',
		'boundedFacet',
		'cardinalityFacet',
		'contents',
		'effectiveEnumerationFacet',
		'effectiveFractionDigitsFacet',
		'effectiveLengthFacet',
		'effectiveMaxFacet',
		'effectiveMaxLengthFacet',
		'effectiveMinFacet',
		'effectiveMinLengthFacet',
		'effectivePatternFacet',
		'effectiveTotalDigitsFacet',
		'effectiveWhiteSpaceFacet',
		'enumerationFacets',
		'facetContents',
		'facets',
		'final',
		'fractionDigitsFacet',
		'fundamentalFacets',
		'itemTypeDefinition',
		'lengthFacet',
		'lexicalFinal',
		'maxExclusiveFacet',
		'maxFacet',
		'maxInclusiveFacet',
		'maxLengthFacet',
		'memberTypeDefinitions',
		'minExclusiveFacet',
		'minFacet',
		'minInclusiveFacet',
		'minLengthFacet',
		'numericFacet',
		'orderedFacet',
		'patternFacets',
		'primitiveTypeDefinition',
		'rootTypeDefinition',
		'syntheticFacets',
		'totalDigitsFacet',
		'validFacets',
		'variety',
		'whiteSpaceFacet'
	],
	#category : #'XSD-Metamodel-Model'
}

{ #category : #'accessing - NamedComponent' }
XSDSimpleTypeDefinition >> aliasName [
	^ (sharedGeneralizations at: #NamedComponent) aliasName
]

{ #category : #'accessing - NamedComponent' }
XSDSimpleTypeDefinition >> aliasName: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) aliasName: aString
]

{ #category : #'accessing - NamedComponent' }
XSDSimpleTypeDefinition >> aliasURI [
	^ (sharedGeneralizations at: #NamedComponent) aliasURI
]

{ #category : #'accessing - NamedComponent' }
XSDSimpleTypeDefinition >> aliasURI: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) aliasURI: aString
]

{ #category : #'accessing - TypeDefinition' }
XSDSimpleTypeDefinition >> annotation [
	^ (sharedGeneralizations at: #TypeDefinition) annotation
]

{ #category : #'accessing - TypeDefinition' }
XSDSimpleTypeDefinition >> annotation: aXSDAnnotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	(sharedGeneralizations at: #TypeDefinition) annotation: aXSDAnnotation
]

{ #category : #'accessing - TypeDefinition' }
XSDSimpleTypeDefinition >> annotations [
	^ (sharedGeneralizations at: #TypeDefinition) annotations
]

{ #category : #'accessing - TypeDefinition' }
XSDSimpleTypeDefinition >> annotations: aXSDAnnotation [
	"<type: 'XSDAnnotation' multiplicity: '0..*'>"
	(sharedGeneralizations at: #TypeDefinition) annotations: aXSDAnnotation
]

{ #category : #'accessing - TypeDefinition' }
XSDSimpleTypeDefinition >> baseType [
	^ (sharedGeneralizations at: #TypeDefinition) baseType
]

{ #category : #'accessing - TypeDefinition' }
XSDSimpleTypeDefinition >> baseType: aXSDTypeDefinition [
	"<type: 'XSDTypeDefinition'>"
	(sharedGeneralizations at: #TypeDefinition) baseType: aXSDTypeDefinition
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> baseTypeDefinition [
	"<type: 'XSDSimpleTypeDefinition'>"
	^ baseTypeDefinition
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> baseTypeDefinition: aXSDSimpleTypeDefinition [
	"<type: 'XSDSimpleTypeDefinition'>"
	self assert: [ aXSDSimpleTypeDefinition oclIsKindOf: 'SimpleTypeDefinition' ].
	baseTypeDefinition := aXSDSimpleTypeDefinition
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> boundedFacet [
	"<type: 'XSDBoundedFacet'>"
	^ boundedFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> boundedFacet: aXSDBoundedFacet [
	"<type: 'XSDBoundedFacet'>"
	self assert: [ aXSDBoundedFacet oclIsKindOf: 'BoundedFacet' ].
	boundedFacet := aXSDBoundedFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> cardinalityFacet [
	"<type: 'XSDCardinalityFacet'>"
	^ cardinalityFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> cardinalityFacet: aXSDCardinalityFacet [
	"<type: 'XSDCardinalityFacet'>"
	self assert: [ aXSDCardinalityFacet oclIsKindOf: 'CardinalityFacet' ].
	cardinalityFacet := aXSDCardinalityFacet
]

{ #category : #'accessing - RedefinableComponent' }
XSDSimpleTypeDefinition >> circular [
	^ (sharedGeneralizations at: #RedefinableComponent) circular
]

{ #category : #'accessing - RedefinableComponent' }
XSDSimpleTypeDefinition >> circular: aBoolean [
	"<type: 'Boolean' multiplicity: '0..1'>"
	(sharedGeneralizations at: #RedefinableComponent) circular: aBoolean
]

{ #category : #'accessing - TypeDefinition' }
XSDSimpleTypeDefinition >> complexType [
	^ (sharedGeneralizations at: #TypeDefinition) complexType
]

{ #category : #'accessing - TypeDefinition' }
XSDSimpleTypeDefinition >> complexType: aXSDParticle [
	"<type: 'XSDParticle' multiplicity: '0..1'>"
	(sharedGeneralizations at: #TypeDefinition) complexType: aXSDParticle
]

{ #category : #'accessing - ConcreteComponent' }
XSDSimpleTypeDefinition >> container [
	^ (sharedGeneralizations at: #ConcreteComponent) container
]

{ #category : #'accessing - ConcreteComponent' }
XSDSimpleTypeDefinition >> container: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) container: aXSDConcreteComponent
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> contents [
	"<type: 'XSDSimpleTypeDefinition' multiplicity: '0..*'>"
	^ contents
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> contents: aXSDSimpleTypeDefinition [
	"<type: 'XSDSimpleTypeDefinition' multiplicity: '0..*'>"
	self assert: [ aXSDSimpleTypeDefinition allSatisfy: [ :each | each oclIsKindOf: 'SimpleTypeDefinition' ] ].
	contents := aXSDSimpleTypeDefinition
]

{ #category : #'accessing - TypeDefinition' }
XSDSimpleTypeDefinition >> derivationAnnotation [
	^ (sharedGeneralizations at: #TypeDefinition) derivationAnnotation
]

{ #category : #'accessing - TypeDefinition' }
XSDSimpleTypeDefinition >> derivationAnnotation: aXSDAnnotation [
	"<type: 'XSDAnnotation' multiplicity: '0..1'>"
	(sharedGeneralizations at: #TypeDefinition) derivationAnnotation: aXSDAnnotation
]

{ #category : #'accessing - ConcreteComponent' }
XSDSimpleTypeDefinition >> diagnostics [
	^ (sharedGeneralizations at: #ConcreteComponent) diagnostics
]

{ #category : #'accessing - ConcreteComponent' }
XSDSimpleTypeDefinition >> diagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	(sharedGeneralizations at: #ConcreteComponent) diagnostics: aXSDDiagnostic
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> effectiveEnumerationFacet [
	"<type: 'XSDEnumerationFacet' multiplicity: '0..1'>"
	^ effectiveEnumerationFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> effectiveEnumerationFacet: aXSDEnumerationFacet [
	"<type: 'XSDEnumerationFacet' multiplicity: '0..1'>"
	self assert: [ aXSDEnumerationFacet isNil or: [ aXSDEnumerationFacet oclIsKindOf: 'EnumerationFacet' ] ].
	effectiveEnumerationFacet := aXSDEnumerationFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> effectiveFractionDigitsFacet [
	"<type: 'XSDFractionDigitsFacet' multiplicity: '0..1'>"
	^ effectiveFractionDigitsFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> effectiveFractionDigitsFacet: aXSDFractionDigitsFacet [
	"<type: 'XSDFractionDigitsFacet' multiplicity: '0..1'>"
	self assert: [ aXSDFractionDigitsFacet isNil or: [ aXSDFractionDigitsFacet oclIsKindOf: 'FractionDigitsFacet' ] ].
	effectiveFractionDigitsFacet := aXSDFractionDigitsFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> effectiveLengthFacet [
	"<type: 'XSDLengthFacet' multiplicity: '0..1'>"
	^ effectiveLengthFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> effectiveLengthFacet: aXSDLengthFacet [
	"<type: 'XSDLengthFacet' multiplicity: '0..1'>"
	self assert: [ aXSDLengthFacet isNil or: [ aXSDLengthFacet oclIsKindOf: 'LengthFacet' ] ].
	effectiveLengthFacet := aXSDLengthFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> effectiveMaxFacet [
	"<type: 'XSDMaxFacet' multiplicity: '0..1'>"
	^ effectiveMaxFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> effectiveMaxFacet: aXSDMaxFacet [
	"<type: 'XSDMaxFacet' multiplicity: '0..1'>"
	self assert: [ aXSDMaxFacet isNil or: [ aXSDMaxFacet oclIsKindOf: 'MaxFacet' ] ].
	effectiveMaxFacet := aXSDMaxFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> effectiveMaxLengthFacet [
	"<type: 'XSDMaxLengthFacet' multiplicity: '0..1'>"
	^ effectiveMaxLengthFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> effectiveMaxLengthFacet: aXSDMaxLengthFacet [
	"<type: 'XSDMaxLengthFacet' multiplicity: '0..1'>"
	self assert: [ aXSDMaxLengthFacet isNil or: [ aXSDMaxLengthFacet oclIsKindOf: 'MaxLengthFacet' ] ].
	effectiveMaxLengthFacet := aXSDMaxLengthFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> effectiveMinFacet [
	"<type: 'XSDMinFacet' multiplicity: '0..1'>"
	^ effectiveMinFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> effectiveMinFacet: aXSDMinFacet [
	"<type: 'XSDMinFacet' multiplicity: '0..1'>"
	self assert: [ aXSDMinFacet isNil or: [ aXSDMinFacet oclIsKindOf: 'MinFacet' ] ].
	effectiveMinFacet := aXSDMinFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> effectiveMinLengthFacet [
	"<type: 'XSDMinLengthFacet' multiplicity: '0..1'>"
	^ effectiveMinLengthFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> effectiveMinLengthFacet: aXSDMinLengthFacet [
	"<type: 'XSDMinLengthFacet' multiplicity: '0..1'>"
	self assert: [ aXSDMinLengthFacet isNil or: [ aXSDMinLengthFacet oclIsKindOf: 'MinLengthFacet' ] ].
	effectiveMinLengthFacet := aXSDMinLengthFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> effectivePatternFacet [
	"<type: 'XSDPatternFacet' multiplicity: '0..1'>"
	^ effectivePatternFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> effectivePatternFacet: aXSDPatternFacet [
	"<type: 'XSDPatternFacet' multiplicity: '0..1'>"
	self assert: [ aXSDPatternFacet isNil or: [ aXSDPatternFacet oclIsKindOf: 'PatternFacet' ] ].
	effectivePatternFacet := aXSDPatternFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> effectiveTotalDigitsFacet [
	"<type: 'XSDTotalDigitsFacet' multiplicity: '0..1'>"
	^ effectiveTotalDigitsFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> effectiveTotalDigitsFacet: aXSDTotalDigitsFacet [
	"<type: 'XSDTotalDigitsFacet' multiplicity: '0..1'>"
	self assert: [ aXSDTotalDigitsFacet isNil or: [ aXSDTotalDigitsFacet oclIsKindOf: 'TotalDigitsFacet' ] ].
	effectiveTotalDigitsFacet := aXSDTotalDigitsFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> effectiveWhiteSpaceFacet [
	"<type: 'XSDWhiteSpaceFacet' multiplicity: '0..1'>"
	^ effectiveWhiteSpaceFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> effectiveWhiteSpaceFacet: aXSDWhiteSpaceFacet [
	"<type: 'XSDWhiteSpaceFacet' multiplicity: '0..1'>"
	self assert: [ aXSDWhiteSpaceFacet isNil or: [ aXSDWhiteSpaceFacet oclIsKindOf: 'WhiteSpaceFacet' ] ].
	effectiveWhiteSpaceFacet := aXSDWhiteSpaceFacet
]

{ #category : #'accessing - ConcreteComponent' }
XSDSimpleTypeDefinition >> element [
	^ (sharedGeneralizations at: #ConcreteComponent) element
]

{ #category : #'accessing - ConcreteComponent' }
XSDSimpleTypeDefinition >> element: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) element: aDOMElement
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> enumerationFacets [
	"<type: 'XSDEnumerationFacet' multiplicity: '0..*'>"
	^ enumerationFacets
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> enumerationFacets: aXSDEnumerationFacet [
	"<type: 'XSDEnumerationFacet' multiplicity: '0..*'>"
	self assert: [ aXSDEnumerationFacet allSatisfy: [ :each | each oclIsKindOf: 'EnumerationFacet' ] ].
	enumerationFacets := aXSDEnumerationFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> facetContents [
	"<type: 'XSDConstrainingFacet' multiplicity: '0..*'>"
	^ facetContents
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> facetContents: aXSDConstrainingFacet [
	"<type: 'XSDConstrainingFacet' multiplicity: '0..*'>"
	self assert: [ aXSDConstrainingFacet allSatisfy: [ :each | each oclIsKindOf: 'ConstrainingFacet' ] ].
	facetContents := aXSDConstrainingFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> facets [
	"<type: 'XSDConstrainingFacet' multiplicity: '0..*'>"
	^ facets
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> facets: aXSDConstrainingFacet [
	"<type: 'XSDConstrainingFacet' multiplicity: '0..*'>"
	self assert: [ aXSDConstrainingFacet allSatisfy: [ :each | each oclIsKindOf: 'ConstrainingFacet' ] ].
	facets := aXSDConstrainingFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> final [
	"<type: 'XSDSimpleFinal' multiplicity: '0..*'>"
	^ final
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> final: aXSDSimpleFinal [
	"<type: 'XSDSimpleFinal' multiplicity: '0..*'>"
	self assert: [ aXSDSimpleFinal allSatisfy: [ :each | each isKindOf: XSDSimpleFinal ] ].
	final := aXSDSimpleFinal
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> fractionDigitsFacet [
	"<type: 'XSDFractionDigitsFacet' multiplicity: '0..1'>"
	^ fractionDigitsFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> fractionDigitsFacet: aXSDFractionDigitsFacet [
	"<type: 'XSDFractionDigitsFacet' multiplicity: '0..1'>"
	self assert: [ aXSDFractionDigitsFacet isNil or: [ aXSDFractionDigitsFacet oclIsKindOf: 'FractionDigitsFacet' ] ].
	fractionDigitsFacet := aXSDFractionDigitsFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> fundamentalFacets [
	"<type: 'XSDFundamentalFacet' multiplicity: '1..*'>"
	^ fundamentalFacets
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> fundamentalFacets: aXSDFundamentalFacet [
	"<type: 'XSDFundamentalFacet' multiplicity: '1..*'>"
	self assert: [ aXSDFundamentalFacet allSatisfy: [ :each | each oclIsKindOf: 'FundamentalFacet' ] ].
	fundamentalFacets := aXSDFundamentalFacet
]

{ #category : #initialization }
XSDSimpleTypeDefinition >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #TypeDefinition.
		sharedGeneralizations at: #ComplexTypeContent.
	}
]

{ #category : #initialization }
XSDSimpleTypeDefinition >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ConcreteComponent put: (XSDConcreteComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Component put: (XSDComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #SchemaContent put: (XSDSchemaContent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #NamedComponent put: (XSDNamedComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefineContent put: (XSDRedefineContent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefinableComponent put: (XSDRedefinableComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #TypeDefinition put: (XSDTypeDefinition newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #ComplexTypeContent put: (XSDComplexTypeContent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #SimpleTypeDefinition put: self.
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> itemTypeDefinition [
	"<type: 'XSDSimpleTypeDefinition' multiplicity: '0..1'>"
	^ itemTypeDefinition
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> itemTypeDefinition: aXSDSimpleTypeDefinition [
	"<type: 'XSDSimpleTypeDefinition' multiplicity: '0..1'>"
	self assert: [ aXSDSimpleTypeDefinition isNil or: [ aXSDSimpleTypeDefinition oclIsKindOf: 'SimpleTypeDefinition' ] ].
	itemTypeDefinition := aXSDSimpleTypeDefinition
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> lengthFacet [
	"<type: 'XSDLengthFacet' multiplicity: '0..1'>"
	^ lengthFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> lengthFacet: aXSDLengthFacet [
	"<type: 'XSDLengthFacet' multiplicity: '0..1'>"
	self assert: [ aXSDLengthFacet isNil or: [ aXSDLengthFacet oclIsKindOf: 'LengthFacet' ] ].
	lengthFacet := aXSDLengthFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> lexicalFinal [
	"<type: 'XSDSimpleFinal' multiplicity: '0..*'>"
	^ lexicalFinal
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> lexicalFinal: aXSDSimpleFinal [
	"<type: 'XSDSimpleFinal' multiplicity: '0..*'>"
	self assert: [ aXSDSimpleFinal allSatisfy: [ :each | each isKindOf: XSDSimpleFinal ] ].
	lexicalFinal := aXSDSimpleFinal
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> maxExclusiveFacet [
	"<type: 'XSDMaxExclusiveFacet' multiplicity: '0..1'>"
	^ maxExclusiveFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> maxExclusiveFacet: aXSDMaxExclusiveFacet [
	"<type: 'XSDMaxExclusiveFacet' multiplicity: '0..1'>"
	self assert: [ aXSDMaxExclusiveFacet isNil or: [ aXSDMaxExclusiveFacet oclIsKindOf: 'MaxExclusiveFacet' ] ].
	maxExclusiveFacet := aXSDMaxExclusiveFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> maxFacet [
	"<type: 'XSDMaxFacet' multiplicity: '0..1'>"
	^ maxFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> maxFacet: aXSDMaxFacet [
	"<type: 'XSDMaxFacet' multiplicity: '0..1'>"
	self assert: [ aXSDMaxFacet isNil or: [ aXSDMaxFacet oclIsKindOf: 'MaxFacet' ] ].
	maxFacet := aXSDMaxFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> maxInclusiveFacet [
	"<type: 'XSDMaxInclusiveFacet' multiplicity: '0..1'>"
	^ maxInclusiveFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> maxInclusiveFacet: aXSDMaxInclusiveFacet [
	"<type: 'XSDMaxInclusiveFacet' multiplicity: '0..1'>"
	self assert: [ aXSDMaxInclusiveFacet isNil or: [ aXSDMaxInclusiveFacet oclIsKindOf: 'MaxInclusiveFacet' ] ].
	maxInclusiveFacet := aXSDMaxInclusiveFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> maxLengthFacet [
	"<type: 'XSDMaxLengthFacet' multiplicity: '0..1'>"
	^ maxLengthFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> maxLengthFacet: aXSDMaxLengthFacet [
	"<type: 'XSDMaxLengthFacet' multiplicity: '0..1'>"
	self assert: [ aXSDMaxLengthFacet isNil or: [ aXSDMaxLengthFacet oclIsKindOf: 'MaxLengthFacet' ] ].
	maxLengthFacet := aXSDMaxLengthFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> memberTypeDefinitions [
	"<type: 'XSDSimpleTypeDefinition' multiplicity: '0..*'>"
	^ memberTypeDefinitions
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> memberTypeDefinitions: aXSDSimpleTypeDefinition [
	"<type: 'XSDSimpleTypeDefinition' multiplicity: '0..*'>"
	self assert: [ aXSDSimpleTypeDefinition allSatisfy: [ :each | each oclIsKindOf: 'SimpleTypeDefinition' ] ].
	memberTypeDefinitions := aXSDSimpleTypeDefinition
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> minExclusiveFacet [
	"<type: 'XSDMinExclusiveFacet' multiplicity: '0..1'>"
	^ minExclusiveFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> minExclusiveFacet: aXSDMinExclusiveFacet [
	"<type: 'XSDMinExclusiveFacet' multiplicity: '0..1'>"
	self assert: [ aXSDMinExclusiveFacet isNil or: [ aXSDMinExclusiveFacet oclIsKindOf: 'MinExclusiveFacet' ] ].
	minExclusiveFacet := aXSDMinExclusiveFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> minFacet [
	"<type: 'XSDMinFacet' multiplicity: '0..1'>"
	^ minFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> minFacet: aXSDMinFacet [
	"<type: 'XSDMinFacet' multiplicity: '0..1'>"
	self assert: [ aXSDMinFacet isNil or: [ aXSDMinFacet oclIsKindOf: 'MinFacet' ] ].
	minFacet := aXSDMinFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> minInclusiveFacet [
	"<type: 'XSDMinInclusiveFacet' multiplicity: '0..1'>"
	^ minInclusiveFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> minInclusiveFacet: aXSDMinInclusiveFacet [
	"<type: 'XSDMinInclusiveFacet' multiplicity: '0..1'>"
	self assert: [ aXSDMinInclusiveFacet isNil or: [ aXSDMinInclusiveFacet oclIsKindOf: 'MinInclusiveFacet' ] ].
	minInclusiveFacet := aXSDMinInclusiveFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> minLengthFacet [
	"<type: 'XSDMinLengthFacet' multiplicity: '0..1'>"
	^ minLengthFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> minLengthFacet: aXSDMinLengthFacet [
	"<type: 'XSDMinLengthFacet' multiplicity: '0..1'>"
	self assert: [ aXSDMinLengthFacet isNil or: [ aXSDMinLengthFacet oclIsKindOf: 'MinLengthFacet' ] ].
	minLengthFacet := aXSDMinLengthFacet
]

{ #category : #'accessing - NamedComponent' }
XSDSimpleTypeDefinition >> name [
	^ (sharedGeneralizations at: #NamedComponent) name
]

{ #category : #'accessing - NamedComponent' }
XSDSimpleTypeDefinition >> name: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) name: aString
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> numericFacet [
	"<type: 'XSDNumericFacet'>"
	^ numericFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> numericFacet: aXSDNumericFacet [
	"<type: 'XSDNumericFacet'>"
	self assert: [ aXSDNumericFacet oclIsKindOf: 'NumericFacet' ].
	numericFacet := aXSDNumericFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> orderedFacet [
	"<type: 'XSDOrderedFacet'>"
	^ orderedFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> orderedFacet: aXSDOrderedFacet [
	"<type: 'XSDOrderedFacet'>"
	self assert: [ aXSDOrderedFacet oclIsKindOf: 'OrderedFacet' ].
	orderedFacet := aXSDOrderedFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> patternFacets [
	"<type: 'XSDPatternFacet' multiplicity: '0..*'>"
	^ patternFacets
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> patternFacets: aXSDPatternFacet [
	"<type: 'XSDPatternFacet' multiplicity: '0..*'>"
	self assert: [ aXSDPatternFacet allSatisfy: [ :each | each oclIsKindOf: 'PatternFacet' ] ].
	patternFacets := aXSDPatternFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> primitiveTypeDefinition [
	"<type: 'XSDSimpleTypeDefinition' multiplicity: '0..1'>"
	^ primitiveTypeDefinition
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> primitiveTypeDefinition: aXSDSimpleTypeDefinition [
	"<type: 'XSDSimpleTypeDefinition' multiplicity: '0..1'>"
	self assert: [ aXSDSimpleTypeDefinition isNil or: [ aXSDSimpleTypeDefinition oclIsKindOf: 'SimpleTypeDefinition' ] ].
	primitiveTypeDefinition := aXSDSimpleTypeDefinition
]

{ #category : #'accessing - NamedComponent' }
XSDSimpleTypeDefinition >> qName [
	^ (sharedGeneralizations at: #NamedComponent) qName
]

{ #category : #'accessing - NamedComponent' }
XSDSimpleTypeDefinition >> qName: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) qName: aString
]

{ #category : #'accessing - ConcreteComponent' }
XSDSimpleTypeDefinition >> rootContainer [
	^ (sharedGeneralizations at: #ConcreteComponent) rootContainer
]

{ #category : #'accessing - ConcreteComponent' }
XSDSimpleTypeDefinition >> rootContainer: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	(sharedGeneralizations at: #ConcreteComponent) rootContainer: aXSDConcreteComponent
]

{ #category : #'accessing - TypeDefinition' }
XSDSimpleTypeDefinition >> rootType [
	^ (sharedGeneralizations at: #TypeDefinition) rootType
]

{ #category : #'accessing - TypeDefinition' }
XSDSimpleTypeDefinition >> rootType: aXSDTypeDefinition [
	"<type: 'XSDTypeDefinition'>"
	(sharedGeneralizations at: #TypeDefinition) rootType: aXSDTypeDefinition
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> rootTypeDefinition [
	"<type: 'XSDSimpleTypeDefinition'>"
	^ rootTypeDefinition
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> rootTypeDefinition: aXSDSimpleTypeDefinition [
	"<type: 'XSDSimpleTypeDefinition'>"
	self assert: [ aXSDSimpleTypeDefinition oclIsKindOf: 'SimpleTypeDefinition' ].
	rootTypeDefinition := aXSDSimpleTypeDefinition
]

{ #category : #'accessing - ConcreteComponent' }
XSDSimpleTypeDefinition >> schema [
	^ (sharedGeneralizations at: #ConcreteComponent) schema
]

{ #category : #'accessing - ConcreteComponent' }
XSDSimpleTypeDefinition >> schema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) schema: aXSDSchema
]

{ #category : #'accessing - TypeDefinition' }
XSDSimpleTypeDefinition >> simpleType [
	^ (sharedGeneralizations at: #TypeDefinition) simpleType
]

{ #category : #'accessing - TypeDefinition' }
XSDSimpleTypeDefinition >> simpleType: aXSDSimpleTypeDefinition [
	"<type: 'XSDSimpleTypeDefinition' multiplicity: '0..1'>"
	(sharedGeneralizations at: #TypeDefinition) simpleType: aXSDSimpleTypeDefinition
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> syntheticFacets [
	"<type: 'XSDFacet' multiplicity: '0..*'>"
	^ syntheticFacets
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> syntheticFacets: aXSDFacet [
	"<type: 'XSDFacet' multiplicity: '0..*'>"
	self assert: [ aXSDFacet allSatisfy: [ :each | each oclIsKindOf: 'Facet' ] ].
	syntheticFacets := aXSDFacet
]

{ #category : #'accessing - NamedComponent' }
XSDSimpleTypeDefinition >> targetNamespace [
	^ (sharedGeneralizations at: #NamedComponent) targetNamespace
]

{ #category : #'accessing - NamedComponent' }
XSDSimpleTypeDefinition >> targetNamespace: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) targetNamespace: aString
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> totalDigitsFacet [
	"<type: 'XSDTotalDigitsFacet' multiplicity: '0..1'>"
	^ totalDigitsFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> totalDigitsFacet: aXSDTotalDigitsFacet [
	"<type: 'XSDTotalDigitsFacet' multiplicity: '0..1'>"
	self assert: [ aXSDTotalDigitsFacet isNil or: [ aXSDTotalDigitsFacet oclIsKindOf: 'TotalDigitsFacet' ] ].
	totalDigitsFacet := aXSDTotalDigitsFacet
]

{ #category : #'accessing - NamedComponent' }
XSDSimpleTypeDefinition >> uRI [
	^ (sharedGeneralizations at: #NamedComponent) uRI
]

{ #category : #'accessing - NamedComponent' }
XSDSimpleTypeDefinition >> uRI: aString [
	"<type: 'String' multiplicity: '0..1'>"
	(sharedGeneralizations at: #NamedComponent) uRI: aString
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> validFacets [
	"<type: 'String' multiplicity: '0..*'>"
	^ validFacets
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> validFacets: aString [
	"<type: 'String' multiplicity: '0..*'>"
	self assert: [ aString allSatisfy: [ :each | each isKindOf: String ] ].
	validFacets := aString
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> variety [
	"<type: 'XSDVariety' multiplicity: '0..1'>"
	^ variety
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> variety: aXSDVariety [
	"<type: 'XSDVariety' multiplicity: '0..1'>"
	self assert: [ aXSDVariety isNil or: [ aXSDVariety isKindOf: XSDVariety ] ].
	variety := aXSDVariety
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> whiteSpaceFacet [
	"<type: 'XSDWhiteSpaceFacet' multiplicity: '0..1'>"
	^ whiteSpaceFacet
]

{ #category : #accessing }
XSDSimpleTypeDefinition >> whiteSpaceFacet: aXSDWhiteSpaceFacet [
	"<type: 'XSDWhiteSpaceFacet' multiplicity: '0..1'>"
	self assert: [ aXSDWhiteSpaceFacet isNil or: [ aXSDWhiteSpaceFacet oclIsKindOf: 'WhiteSpaceFacet' ] ].
	whiteSpaceFacet := aXSDWhiteSpaceFacet
]
