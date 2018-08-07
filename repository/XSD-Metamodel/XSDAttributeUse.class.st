Class {
	#name : #XSDAttributeUse,
	#superclass : #XSDElement,
	#instVars : [
		'attributeDeclaration',
		'constraint',
		'content',
		'lexicalValue',
		'required',
		'use',
		'value'
	],
	#category : #'XSD-Metamodel-Model'
}

{ #category : #accessing }
XSDAttributeUse >> attributeDeclaration [
	"<type: 'XSDAttributeDeclaration'>"
	^ self content
]

{ #category : #accessing }
XSDAttributeUse >> attributeDeclaration: aXSDAttributeDeclaration [
	"<type: 'XSDAttributeDeclaration'>"
	self assert: [ aXSDAttributeDeclaration oclIsKindOf: 'AttributeDeclaration' ].
	attributeDeclaration := aXSDAttributeDeclaration
]

{ #category : #accessing }
XSDAttributeUse >> constraint [
	"<type: 'XSDConstraint' multiplicity: '0..1'>"
	^ constraint
]

{ #category : #accessing }
XSDAttributeUse >> constraint: aXSDConstraint [
	"<type: 'XSDConstraint' multiplicity: '0..1'>"
	self assert: [ aXSDConstraint isNil or: [ aXSDConstraint isKindOf: XSDConstraint ] ].
	constraint := aXSDConstraint
]

{ #category : #'accessing - ConcreteComponent' }
XSDAttributeUse >> container [
	^ (sharedGeneralizations at: #ConcreteComponent) container
]

{ #category : #'accessing - ConcreteComponent' }
XSDAttributeUse >> container: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) container: aXSDConcreteComponent
]

{ #category : #accessing }
XSDAttributeUse >> content [
	"<type: 'XSDAttributeDeclaration'>"
	^ content
]

{ #category : #accessing }
XSDAttributeUse >> content: aXSDAttributeDeclaration [
	"<type: 'XSDAttributeDeclaration'>"
	self assert: [ aXSDAttributeDeclaration oclIsKindOf: 'AttributeDeclaration' ].
	content := aXSDAttributeDeclaration
]

{ #category : #'accessing - ConcreteComponent' }
XSDAttributeUse >> diagnostics [
	^ (sharedGeneralizations at: #ConcreteComponent) diagnostics
]

{ #category : #'accessing - ConcreteComponent' }
XSDAttributeUse >> diagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	(sharedGeneralizations at: #ConcreteComponent) diagnostics: aXSDDiagnostic
]

{ #category : #'accessing - ConcreteComponent' }
XSDAttributeUse >> element [
	^ (sharedGeneralizations at: #ConcreteComponent) element
]

{ #category : #'accessing - ConcreteComponent' }
XSDAttributeUse >> element: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) element: aDOMElement
]

{ #category : #initialization }
XSDAttributeUse >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Component.
		sharedGeneralizations at: #AttributeGroupContent.
	}
]

{ #category : #initialization }
XSDAttributeUse >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ConcreteComponent put: (XSDConcreteComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Component put: (XSDComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #AttributeGroupContent put: (XSDAttributeGroupContent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #AttributeUse put: self.
]

{ #category : #accessing }
XSDAttributeUse >> lexicalValue [
	"<type: 'String' multiplicity: '0..1'>"
	^ lexicalValue
]

{ #category : #accessing }
XSDAttributeUse >> lexicalValue: aString [
	"<type: 'String' multiplicity: '0..1'>"
	self assert: [ aString isNil or: [ aString isKindOf: String ] ].
	lexicalValue := aString
]

{ #category : #accessing }
XSDAttributeUse >> required [
	"<type: 'Boolean' multiplicity: '0..1'>"
	^ required
]

{ #category : #accessing }
XSDAttributeUse >> required: aBoolean [
	"<type: 'Boolean' multiplicity: '0..1'>"
	self assert: [ aBoolean isNil or: [ aBoolean isKindOf: Boolean ] ].
	required := aBoolean
]

{ #category : #'accessing - ConcreteComponent' }
XSDAttributeUse >> rootContainer [
	^ (sharedGeneralizations at: #ConcreteComponent) rootContainer
]

{ #category : #'accessing - ConcreteComponent' }
XSDAttributeUse >> rootContainer: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	(sharedGeneralizations at: #ConcreteComponent) rootContainer: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDAttributeUse >> schema [
	^ (sharedGeneralizations at: #ConcreteComponent) schema
]

{ #category : #'accessing - ConcreteComponent' }
XSDAttributeUse >> schema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) schema: aXSDSchema
]

{ #category : #accessing }
XSDAttributeUse >> use [
	"<type: 'XSDAttributeUseCategory' multiplicity: '0..1'>"
	^ use
]

{ #category : #accessing }
XSDAttributeUse >> use: aXSDAttributeUseCategory [
	"<type: 'XSDAttributeUseCategory' multiplicity: '0..1'>"
	self assert: [ aXSDAttributeUseCategory isNil or: [ aXSDAttributeUseCategory isKindOf: XSDAttributeUseCategory ] ].
	use := aXSDAttributeUseCategory
]

{ #category : #accessing }
XSDAttributeUse >> value [
	"<type: 'Value' multiplicity: '0..1'>"
	^ value
]

{ #category : #accessing }
XSDAttributeUse >> value: aValue [
	"<type: 'Value' multiplicity: '0..1'>"
	self assert: [ aValue isNil or: [ aValue isKindOf: Object ] ].
	value := aValue
]
