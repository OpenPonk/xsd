Class {
	#name : #XSDXMLElementVisitor,
	#superclass : #XMLDOMElementVisitor,
	#instVars : [
		'elementsLookup'
	],
	#category : #'XSD-Loader'
}

{ #category : #initialization }
XSDXMLElementVisitor >> initialize [
	super initialize.
	elementsLookup := Dictionary new
]

{ #category : #accessing }
XSDXMLElementVisitor >> lookupElementFor: anElement [
	^ elementsLookup at: anElement
]

{ #category : #'visiting - meta' }
XSDXMLElementVisitor >> visitElement: anElement [
	| result |
	result := elementVisitor
		perform: (self visitSelectorFor: anElement localName)
		with: anElement.
	elementsLookup at: anElement put: result.
	^ result
]

{ #category : #visitor }
XSDXMLElementVisitor >> visitGroup: aGroup [
	^ aGroup asArray collect: [ :each | self visit: each ]
]
