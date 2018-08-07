Class {
	#name : #XSDLoaderTest,
	#superclass : #TestCase,
	#instVars : [
		'loader',
		'doc',
		'schema'
	],
	#category : #'XSD-Loader'
}

{ #category : #accessing }
XSDLoaderTest >> exampleDocument [
	^ self parseXml: self exampleDocumentContents
]

{ #category : #accessing }
XSDLoaderTest >> exampleDocumentContents [
	^ '<xs:schema targetNamespace="t1" xmlns:xs="http://www.w3.org/2001/XMLSchema">
<xs:element name="e01" type="ct01"/>
<xs:complexType name="ct01">
<xs:choice>
<xs:element name="inline" type="xs:string" minOccurs="2" maxOccurs="3"/>
<xs:any namespace="##other"/>
</xs:choice>
</xs:complexType>
</xs:schema>'
]

{ #category : #utility }
XSDLoaderTest >> parseXml: aStringOrStream [
	^ (XMLDOMParser on: aStringOrStream readStream)
		nodeFactory: (XMLPluggableElementFactory new elementClass: XMLDOMTypedElement);
		parseDocument
]

{ #category : #running }
XSDLoaderTest >> setUp [
	loader := XSDLoader new
]

{ #category : #tests }
XSDLoaderTest >> testLoadFromDocument [
	self skip.
	doc := self exampleDocument.
	schema := loader loadFromDocument: doc.
	self assert: schema document equals: doc.
	self assert: schema targetNamespace equals: 't1'
]
