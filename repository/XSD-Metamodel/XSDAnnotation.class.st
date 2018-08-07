Class {
	#name : #XSDAnnotation,
	#superclass : #XSDElement,
	#instVars : [
		'applicationInformation',
		'attributes',
		'userInformation'
	],
	#category : #'XSD-Metamodel-Model'
}

{ #category : #accessing }
XSDAnnotation >> applicationInformation [
	"<type: 'DOMElement' multiplicity: '0..*'>"
	^ applicationInformation
]

{ #category : #accessing }
XSDAnnotation >> applicationInformation: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..*'>"
	self assert: [ aDOMElement allSatisfy: [ :each | each isKindOf: XMLElement ] ].
	applicationInformation := aDOMElement
]

{ #category : #accessing }
XSDAnnotation >> attributes [
	"<type: 'DOMAttr' multiplicity: '0..*'>"
	^ attributes
]

{ #category : #accessing }
XSDAnnotation >> attributes: aDOMAttr [
	"<type: 'DOMAttr' multiplicity: '0..*'>"
	self assert: [ aDOMAttr allSatisfy: [ :each | each isKindOf: XMLAttribute ] ].
	attributes := aDOMAttr
]

{ #category : #'accessing - ConcreteComponent' }
XSDAnnotation >> container [
	^ (sharedGeneralizations at: #ConcreteComponent) container
]

{ #category : #'accessing - ConcreteComponent' }
XSDAnnotation >> container: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) container: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDAnnotation >> diagnostics [
	^ (sharedGeneralizations at: #ConcreteComponent) diagnostics
]

{ #category : #'accessing - ConcreteComponent' }
XSDAnnotation >> diagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	(sharedGeneralizations at: #ConcreteComponent) diagnostics: aXSDDiagnostic
]

{ #category : #'accessing - ConcreteComponent' }
XSDAnnotation >> element [
	^ (sharedGeneralizations at: #ConcreteComponent) element
]

{ #category : #'accessing - ConcreteComponent' }
XSDAnnotation >> element: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) element: aDOMElement
]

{ #category : #initialization }
XSDAnnotation >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #Component.
		sharedGeneralizations at: #RedefineContent.
	}
]

{ #category : #initialization }
XSDAnnotation >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ConcreteComponent put: (XSDConcreteComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #SchemaContent put: (XSDSchemaContent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Component put: (XSDComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #RedefineContent put: (XSDRedefineContent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Annotation put: self.
]

{ #category : #'accessing - ConcreteComponent' }
XSDAnnotation >> rootContainer [
	^ (sharedGeneralizations at: #ConcreteComponent) rootContainer
]

{ #category : #'accessing - ConcreteComponent' }
XSDAnnotation >> rootContainer: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	(sharedGeneralizations at: #ConcreteComponent) rootContainer: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDAnnotation >> schema [
	^ (sharedGeneralizations at: #ConcreteComponent) schema
]

{ #category : #'accessing - ConcreteComponent' }
XSDAnnotation >> schema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) schema: aXSDSchema
]

{ #category : #accessing }
XSDAnnotation >> userInformation [
	"<type: 'DOMElement' multiplicity: '0..*'>"
	^ userInformation
]

{ #category : #accessing }
XSDAnnotation >> userInformation: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..*'>"
	self assert: [ aDOMElement allSatisfy: [ :each | each isKindOf: XMLElement ] ].
	userInformation := aDOMElement
]
