Class {
	#name : #XSDConcreteComponent,
	#superclass : #XSDElement,
	#instVars : [
		'container',
		'diagnostics',
		'element',
		'rootContainer',
		'schema'
	],
	#category : #'XSD-Metamodel-Model'
}

{ #category : #accessing }
XSDConcreteComponent >> container [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	^ container
]

{ #category : #accessing }
XSDConcreteComponent >> container: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	self assert: [ aXSDConcreteComponent isNil or: [ aXSDConcreteComponent oclIsKindOf: 'ConcreteComponent' ] ].
	container := aXSDConcreteComponent
]

{ #category : #accessing }
XSDConcreteComponent >> diagnostics [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	^ diagnostics
]

{ #category : #accessing }
XSDConcreteComponent >> diagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	self assert: [ aXSDDiagnostic allSatisfy: [ :each | each oclIsKindOf: 'Diagnostic' ] ].
	diagnostics := aXSDDiagnostic
]

{ #category : #accessing }
XSDConcreteComponent >> element [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	^ element
]

{ #category : #accessing }
XSDConcreteComponent >> element: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	self assert: [ aDOMElement isNil or: [ aDOMElement isKindOf: XMLElement ] ].
	element := aDOMElement
]

{ #category : #initialization }
XSDConcreteComponent >> initializeDirectGeneralizations [
	directGeneralizations := {
	}
]

{ #category : #initialization }
XSDConcreteComponent >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ConcreteComponent put: self.
]

{ #category : #accessing }
XSDConcreteComponent >> rootContainer [
	"<type: 'XSDConcreteComponent'>"
	^ rootContainer
]

{ #category : #accessing }
XSDConcreteComponent >> rootContainer: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	self assert: [ aXSDConcreteComponent oclIsKindOf: 'ConcreteComponent' ].
	rootContainer := aXSDConcreteComponent
]

{ #category : #accessing }
XSDConcreteComponent >> schema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	^ schema
]

{ #category : #accessing }
XSDConcreteComponent >> schema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	self assert: [ aXSDSchema isNil or: [ aXSDSchema oclIsKindOf: 'Schema' ] ].
	schema := aXSDSchema
]
