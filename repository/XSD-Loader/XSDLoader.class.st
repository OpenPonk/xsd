Class {
	#name : #XSDLoader,
	#superclass : #Object,
	#instVars : [
		'baseDirectory',
		'schemaSet'
	],
	#category : #'XSD-Loader'
}

{ #category : #lookup }
XSDLoader >> detectSchemaFileForNamespace: aNamespace in: aDirectory [
	^ (aDirectory files select: [ :each | each extension = 'xsd' ])
		detect: [ :each | (each contents parseXML root attributeAt: 'targetNamespace') = aNamespace ]
]

{ #category : #loading }
XSDLoader >> loadFrom: aStream [
	| doc schema |
	doc := (XMLDOMParser on: aStream readStream)
		nodeFactory: (XMLPluggableElementFactory new elementClass: XMLDOMTypedElement);
		parseDocument.
	schema := self loadFromDocument: doc.
	^ schema
]

{ #category : #loading }
XSDLoader >> loadFromDocument: aDocument [
	| elementVisitor domVisitor |
	elementVisitor := XSDLoadVisitor new.
	elementVisitor
		schemaLookup: [ :namespace :location | self lookupSchemaForNamespace: namespace location: location ].
	domVisitor := XSDXMLElementVisitor new.
	elementVisitor domVisitor: domVisitor.
	domVisitor
		elementVisitor: elementVisitor;
		visit: aDocument.
	^ elementVisitor schema
]

{ #category : #loading }
XSDLoader >> loadFromFile: aFileReference [
	| doc schema |
	baseDirectory := aFileReference parent.
	doc := (XMLDOMParser on: aFileReference readStream)
		nodeFactory: (XMLPluggableElementFactory new elementClass: XMLDOMTypedElement);
		parseDocument.
	schema := self loadFromDocument: doc.
	schema schemaLocation: aFileReference fullName.
	^ schema
]

{ #category : #lookup }
XSDLoader >> lookupSchemaForNamespace: aNamespace location: aLocation [
	self assert: [ aNamespace isNotNil | aLocation isNotNil ].
	aLocation
		ifNotNil: [ self assert: [ baseDirectory isNotNil ].
			^ self loadFromFile: baseDirectory / aLocation ].
	aNamespace
		ifNotNil: [ self assert: [ aNamespace isNotNil ].
			^ self loadFromFile: (self detectSchemaFileForNamespace: aNamespace in: baseDirectory) ]
]
