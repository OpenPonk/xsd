Class {
	#name : #XSDLoadVisitor,
	#superclass : #XMLDOMVisitor,
	#instVars : [
		'schema',
		'deferredActions',
		'domVisitor',
		'schemaLookup'
	],
	#category : #'XSD-Loader'
}

{ #category : #'visiting - internal' }
XSDLoadVisitor >> asUnboundedNatural: aString [
	aString = 'unbounded'
		ifTrue: [ ^ '*' ].
	^ aString asNumber
]

{ #category : #'post-processing' }
XSDLoadVisitor >> deferredDo: aBlock [
	deferredActions add: aBlock
]

{ #category : #accessing }
XSDLoadVisitor >> domVisitor: aVisitor [
	domVisitor := aVisitor
]

{ #category : #initialization }
XSDLoadVisitor >> initialize [
	super initialize.
	deferredActions := OrderedCollection new
]

{ #category : #accessing }
XSDLoadVisitor >> lookupElementFor: anElement [
	^ domVisitor lookupElementFor: anElement
]

{ #category : #accessing }
XSDLoadVisitor >> lookupSchemaForNamespace: aNamespace location: aLocation [
	^ schemaLookup value: aNamespace value: aLocation
]

{ #category : #'instance creation' }
XSDLoadVisitor >> newInstanceOf: aClass element: anElement [
	^ aClass new
		element: anElement;
		schema: schema;
		yourself
]

{ #category : #'visiting - internal' }
XSDLoadVisitor >> processModelGroup: group [
	group
		particles:
			(group element elements
				collect: [ :el | 
					| element subParticle |
					element := domVisitor visitElement: el.
					(element oclIsKindOf: 'Particle')
						ifTrue: [ subParticle := element ]
						ifFalse: [ subParticle := XSDParticle new.
							subParticle content: element ].
					(el stringAt: 'minOccurs')
						ifNotEmpty: [ :minOccurs | subParticle minOccurs: minOccurs asNumber ].
					(el stringAt: 'maxOccurs')
						ifNotEmpty: [ :maxOccurs | subParticle maxOccurs: (self asUnboundedNatural: maxOccurs) ].
					subParticle ])
]

{ #category : #'post-processing' }
XSDLoadVisitor >> runDeferredActions [
	deferredActions do: #value
]

{ #category : #accessing }
XSDLoadVisitor >> schema [
	^ schema
]

{ #category : #accessing }
XSDLoadVisitor >> schemaLookup: aBlock [
	schemaLookup := aBlock
]

{ #category : #accessing }
XSDLoadVisitor >> typeNamed: aTypeName [
	aTypeName ifEmpty: [ ^ nil ].
	(aTypeName beginsWith: 'xs:')
		ifTrue: [ ^ self xsdSimpleTypeNamed: (aTypeName withoutPrefix: 'xs:') ].
	(aTypeName beginsWith: 'ns:')
		ifTrue: [ ^ schema typeDefinitions detect: [ :each | each name = (aTypeName withoutPrefix: 'ns:') ] ].
	(aTypeName beginsWith: 'el:')
		ifTrue: [ ^ schema typeDefinitions detect: [ :each | each name = (aTypeName withoutPrefix: 'el:') ] ].
	(aTypeName includes: $:)
		ifTrue: [ ^ schema typeDefinitions detect: [ :each | each name = (aTypeName splitOn: ':') second ] ].
	^ schema typeDefinitions detect: [ :each | each name = aTypeName ]
]

{ #category : #visiting }
XSDLoadVisitor >> visitAll: anElement [
	| particle modelGroup |
	particle := self newInstanceOf: XSDParticle element: anElement.
	modelGroup := self newInstanceOf: XSDModelGroup element: anElement.
	modelGroup compositor: XSDCompositor all.
	particle content: modelGroup.
	self processModelGroup: modelGroup.
	^ particle
]

{ #category : #visiting }
XSDLoadVisitor >> visitAnnotation: anElement [
	| annotation |
	annotation := self newInstanceOf: XSDAnnotation element: anElement.
	"annotation userInformation: anElement children."
	^ annotation
]

{ #category : #visiting }
XSDLoadVisitor >> visitAny: anElement [
	^ XSDWildcard new
		lexicalNamespaceConstraint: (anElement stringAt: 'namespace');
		namespaceConstraintCategory: XSDNamespaceConstraintCategory not
]

{ #category : #visiting }
XSDLoadVisitor >> visitAttribute: anElement [
	| attribute |
	attribute := self newInstanceOf: XSDAttributeDeclaration element: anElement.
	attribute name: (anElement stringAt: 'name').
	(anElement stringAt: 'type') ifNotEmpty: [ :typeName | self deferredDo: [ attribute type: (self typeNamed: typeName) ] ].
	(anElement stringAt: 'type')
		ifEmpty: [ self assert: [ anElement elements size <= 1 ].
			anElement elements size = 1
				ifTrue: [ attribute type: (domVisitor visit: anElement firstElement) ] ].
	^ attribute
]

{ #category : #visiting }
XSDLoadVisitor >> visitChoice: anElement [
	| particle modelGroup |
	particle := self newInstanceOf: XSDParticle element: anElement.
	modelGroup := self newInstanceOf: XSDModelGroup element: anElement.
	modelGroup compositor: XSDCompositor choice.
	particle content: modelGroup.
	self processModelGroup: modelGroup.
	^ particle
]

{ #category : #visiting }
XSDLoadVisitor >> visitComplexContent: anElement [
	self assert: [ anElement elements size = 1 ].
	self assert: [ anElement firstElement name = 'xs:extension' ]. 
	^ domVisitor visitElement: anElement firstElement
]

{ #category : #visiting }
XSDLoadVisitor >> visitComplexType: anElement [
	| definition attributeElements elements |
	definition := self newInstanceOf: XSDComplexTypeDefinition element: anElement.
	definition name: (anElement stringAt: 'name').
	attributeElements := anElement elementsAt: 'xs:attribute'.
	definition
		attributeUses:
			(attributeElements
				collect: [ :el | XSDAttributeUse new content: (domVisitor visitElement: el) ]).
	elements := anElement elements copyWithoutAll: attributeElements.
	(anElement elementsAt: 'xs:annotation')
		ifNotEmpty: [ :annotationElements | 
			definition annotations: (domVisitor visitGroup: annotationElements).
			elements := elements copyWithoutAll: annotationElements ].
	self assert: [ elements size <= 1 ].
	elements
		ifNotEmpty: [ definition content: (domVisitor visit: elements first).
			elements first name = 'xs:complexContent'
				ifTrue: [ self
						deferredDo: [ definition
								baseTypeDefinition: (self typeNamed: (elements first firstElement attributeAt: 'base')) ] ] ].
	^ definition
]

{ #category : #visiting }
XSDLoadVisitor >> visitElement: anElement [
	| element |
	element := self newInstanceOf: XSDElementDeclaration element: anElement.
	element
		name: (anElement stringAt: 'name');
		schema: schema.
	(anElement stringAt: 'type') ifNotEmpty: [ :typeName | self deferredDo: [ element type: (self typeNamed: typeName) ] ].
	(anElement stringAt: 'type')
		ifEmpty: [ self assert: [ anElement elements size <= 1 ].
			anElement elements size = 1
				ifTrue: [ element type: (self visitComplexType: anElement firstElement) ] ].
	^ element
]

{ #category : #visiting }
XSDLoadVisitor >> visitEnumeration: anElement [
	^ self visitFacet: XSDEnumerationFacet element: anElement
]

{ #category : #visiting }
XSDLoadVisitor >> visitExtension: anElement [
	self assert: [ anElement elements size = 1 ].
	self assert: [ anElement firstElement name = 'xs:sequence' ].
	^ self visitSequence: anElement firstElement
]

{ #category : #'visiting - internal' }
XSDLoadVisitor >> visitFacet: aFacetClass element: anElement [
	| facet |
	facet := self newInstanceOf: aFacetClass element: anElement.
	facet lexicalValue: (anElement stringAt: 'value').
	^ facet
]

{ #category : #visiting }
XSDLoadVisitor >> visitImport: anElement [
	| import |
	import := self newInstanceOf: XSDImport element: anElement.
	(anElement stringAt: 'schemaLocation')
		ifNotEmpty: [ :schemaLocation | import schemaLocation: schemaLocation ].
	(anElement stringAt: 'namespace') ifNotEmpty: [ :namespace | import namespace: namespace ].
	import
		resolvedSchema: (self lookupSchemaForNamespace: import namespace location: import schemaLocation).
	^ import
]

{ #category : #visiting }
XSDLoadVisitor >> visitInclude: anElement [
	| include |
	include := self newInstanceOf: XSDInclude element: anElement.
	(anElement stringAt: 'schemaLocation')
		ifNotEmpty: [ :schemaLocation | include schemaLocation: schemaLocation ].
	include resolvedSchema: (self lookupSchemaForNamespace: nil location: include schemaLocation).
	^ include
]

{ #category : #visiting }
XSDLoadVisitor >> visitMinLength: anElement [
	^ self visitFacet: XSDMinLengthFacet element: anElement
]

{ #category : #visiting }
XSDLoadVisitor >> visitPattern: anElement [
	^ self visitFacet: XSDPatternFacet element: anElement
]

{ #category : #visiting }
XSDLoadVisitor >> visitRestriction: anElement [ 
	self shouldBeImplemented.
]

{ #category : #visiting }
XSDLoadVisitor >> visitSchema: anElement [
	schema := XSDSchema new
		document: anElement document;
		element: anElement.
	(anElement stringAt: 'targetNamespace')
		ifNotEmpty: [ :targetNamespace | schema targetNamespace: targetNamespace ].
	schema contents: (domVisitor visitGroup: anElement elements).
	self runDeferredActions.
	^ schema
]

{ #category : #visiting }
XSDLoadVisitor >> visitSequence: anElement [
	| particle modelGroup |
	particle := self newInstanceOf: XSDParticle element: anElement.
	(anElement stringAt: 'minOccurs')
		ifNotEmpty: [ :minOccurs | particle minOccurs: minOccurs asNumber ].
	(anElement stringAt: 'maxOccurs')
		ifNotEmpty: [ :maxOccurs | particle maxOccurs: (self asUnboundedNatural: maxOccurs) ].
	modelGroup := self newInstanceOf: XSDModelGroup element: anElement.
	modelGroup compositor: XSDCompositor sequence.
	particle content: modelGroup.
	self processModelGroup: modelGroup.
	^ particle
]

{ #category : #visiting }
XSDLoadVisitor >> visitSimpleType: anElement [
	| definition elements |
	definition := self newInstanceOf: XSDSimpleTypeDefinition element: anElement.
	definition name: (anElement stringAt: 'name').
	elements := anElement elements asArray.
	(elements select: [ :each | each name = 'xs:annotation' ])
		ifNotEmpty: [ :annotationElements | 
			definition annotations: (domVisitor visitGroup: annotationElements).
			elements := elements copyWithoutAll: annotationElements ].
	self assert: [ elements size = 1 and: [ elements first name = 'xs:restriction' ] ].
	(elements first stringAt: 'base')
		ifEmpty: [ self deferredDo: [ definition baseTypeDefinition: (self typeNamed: 'xs:anySimpleType') ] ]
		ifNotEmpty: [ :base | self deferredDo: [ definition baseTypeDefinition: (self typeNamed: base) ] ].
	definition facets: (domVisitor visitGroup: elements first elements).
	^ definition
]

{ #category : #accessing }
XSDLoadVisitor >> xsdSimpleTypeNamed: aName [
	^ XSDSimpleTypeDefinition new
		name: aName;
		targetNamespace: 'http://www.w3.org/2001/XMLSchema'
]
