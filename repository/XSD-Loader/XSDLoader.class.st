Class {
	#name : #XSDLoader,
	#superclass : #Object,
	#instVars : [
		'types'
	],
	#category : #'XSD-Loader'
}

{ #category : #'as yet unclassified' }
XSDLoader >> elementDeclarationFor: anElement [
	| element |
	element := XSDElementDeclaration new
		name: (anElement stringAt: 'name');
		targetNamespace: '???';
		element: anElement.
	self deferredDo: [ element typeDefinition: (types at: (anElement stringAt: 'type')) ].
	^ element
]

{ #category : #'as yet unclassified' }
XSDLoader >> loadElementsOn: aSchema [
	| elementDeclarations |
	elementDeclarations := (aSchema document root elementsAt: 'xs:element')
		collect: [ :anElement | self elementDeclarationFor: anElement ].
	aSchema elementDeclarations: elementDeclarations
]

{ #category : #'as yet unclassified' }
XSDLoader >> loadFromDocument: aDocument [
	| elementVisitor domVisitor |
	elementVisitor := XSDLoadVisitor new.
	domVisitor := XSDXMLElementVisitor new.
	elementVisitor domVisitor: domVisitor.
	domVisitor
		elementVisitor: elementVisitor;
		visit: aDocument.
	^ elementVisitor schema
]

{ #category : #'as yet unclassified' }
XSDLoader >> loadFromFile: aFileReference [
	| doc schema |
	doc := (XMLDOMParser on: aFileReference readStream)
		nodeFactory: (XMLPluggableElementFactory new elementClass: XMLDOMTypedElement);
		parseDocument.
	schema := self loadFromDocument: doc.
	schema schemaLocation: aFileReference fullName.
	^ schema
]

{ #category : #'as yet unclassified' }
XSDLoader >> readElement: anElement schema: aSchema [
	
]

{ #category : #'as yet unclassified' }
XSDLoader >> typeDefinitionFor: anElement [
	^ XSDComplexTypeDefinition new
		name: (anElement stringAt: 'name');
		element: anElement;
		targetNamespace: '???';
		yourself
]

{ #category : #'as yet unclassified' }
XSDLoader >> typeDefinitionsOn: aSchema [
	| typeDefinitions |
	typeDefinitions := (aSchema document root elementsAt: 'xs:complexType')
		collect: [ :anElement | self typeDefinitionFor: anElement ].
	aSchema typeDefinitions: typeDefinitions
]
