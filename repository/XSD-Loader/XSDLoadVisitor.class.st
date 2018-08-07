Class {
	#name : #XSDLoadVisitor,
	#superclass : #XMLDOMVisitor,
	#instVars : [
		'schema',
		'deferredActions',
		'domVisitor'
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
					subParticle := XSDParticle new.
					subParticle content: element.
					(el stringAt: 'minOccurs')
						ifNotEmpty: [ :minOccurs | subParticle minOccurs: minOccurs asNumber ].
					(el stringAt: 'maxOccurs')
						ifNotEmpty: [ :maxOccurs | subParticle maxOccurs: (self asUnboundedNatural: maxOccurs) ].
					subParticle ])
]

{ #category : #visiting }
XSDLoadVisitor >> resolveSchemaFromImport: anImport [
	self flag: 'fixme'.
	^ XSDLoader new loadFromFile: 'D:\ns-prog\elements-io-xsd\Schemas' asFileReference / anImport schemaLocation
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
XSDLoadVisitor >> typeNamed: aTypeName [
	aTypeName ifEmpty: [ ^ nil ].
	(aTypeName beginsWith: 'xs:')
		ifTrue: [ ^ self xsdSimpleTypeNamed: (aTypeName withoutPrefix: 'xs:') ].
	(aTypeName beginsWith: 'ns:')
		ifTrue: [ ^ schema typeDefinitions detect: [ :each | each name = (aTypeName withoutPrefix: 'ns:') ] ].
	(aTypeName beginsWith: 'el:')
		ifTrue: [ ^ schema typeDefinitions detect: [ :each | each name = (aTypeName withoutPrefix: 'el:') ] ].
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
XSDLoadVisitor >> visitComplexType: anElement [
	| definition attributeElements contentElements |
	definition := self newInstanceOf: XSDComplexTypeDefinition element: anElement.
	definition name: (anElement stringAt: 'name').
	attributeElements := anElement elementsAt: 'xs:attribute'.
	definition
		attributeUses:
			(attributeElements
				collect: [ :el | XSDAttributeUse new content: (domVisitor visitElement: el) ]).
	contentElements := anElement elements copyWithoutAll: attributeElements.
	self assert: [ contentElements size <= 1 ].
	contentElements
		ifNotEmpty: [ definition content: (domVisitor visit: contentElements first) ].
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
	import resolvedSchema: (self resolveSchemaFromImport: import).
	^ import
]

{ #category : #visiting }
XSDLoadVisitor >> visitInclude: anElement [ 
	| import |
	import := self newInstanceOf: XSDInclude element: anElement.
	(anElement stringAt: 'schemaLocation')
		ifNotEmpty: [ :schemaLocation | import schemaLocation: schemaLocation ].
	import resolvedSchema: (self resolveSchemaFromImport: import).
	^ import
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
		element: anElement;
		targetNamespace: (anElement stringAt: 'targetNamespace').
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
	| definition |
	definition := self newInstanceOf: XSDSimpleTypeDefinition element: anElement.
	definition name: (anElement stringAt: 'name').
	self
		assert: [ anElement elements size = 1 and: [ anElement firstElement name = 'xs:restriction' ] ].
	(anElement firstElement stringAt: 'base')
		ifEmpty: [ self deferredDo: [ definition baseTypeDefinition: (self typeNamed: 'xs:anySimpleType') ] ]
		ifNotEmpty: [ :base | self deferredDo: [ definition baseTypeDefinition: (self typeNamed: base) ] ].
	definition facets: (domVisitor visitGroup: anElement firstElement elements).
	^ definition
]

{ #category : #accessing }
XSDLoadVisitor >> xsdSimpleTypeNamed: aName [
	^ XSDSimpleTypeDefinition new
		name: aName;
		targetNamespace: 'http://www.w3.org/2001/XMLSchema'
]
