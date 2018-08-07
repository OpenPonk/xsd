Class {
	#name : #XSDDiagnostic,
	#superclass : #XSDElement,
	#instVars : [
		'annotationURI',
		'column',
		'components',
		'key',
		'line',
		'locationURI',
		'message',
		'node',
		'primaryComponent',
		'severity',
		'substitutions'
	],
	#category : #'XSD-Metamodel-Model'
}

{ #category : #accessing }
XSDDiagnostic >> annotationURI [
	"<type: 'String' multiplicity: '0..1'>"
	^ annotationURI
]

{ #category : #accessing }
XSDDiagnostic >> annotationURI: aString [
	"<type: 'String' multiplicity: '0..1'>"
	self assert: [ aString isNil or: [ aString isKindOf: String ] ].
	annotationURI := aString
]

{ #category : #accessing }
XSDDiagnostic >> column [
	"<type: 'Integer' multiplicity: '0..1'>"
	^ column
]

{ #category : #accessing }
XSDDiagnostic >> column: anInteger [
	"<type: 'Integer' multiplicity: '0..1'>"
	self assert: [ anInteger isNil or: [ anInteger isKindOf: Integer ] ].
	column := anInteger
]

{ #category : #accessing }
XSDDiagnostic >> components [
	"<type: 'XSDConcreteComponent' multiplicity: '1..*'>"
	^ components
]

{ #category : #accessing }
XSDDiagnostic >> components: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '1..*'>"
	self assert: [ aXSDConcreteComponent allSatisfy: [ :each | each oclIsKindOf: 'ConcreteComponent' ] ].
	components := aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDDiagnostic >> container [
	^ (sharedGeneralizations at: #ConcreteComponent) container
]

{ #category : #'accessing - ConcreteComponent' }
XSDDiagnostic >> container: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) container: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDDiagnostic >> diagnostics [
	^ (sharedGeneralizations at: #ConcreteComponent) diagnostics
]

{ #category : #'accessing - ConcreteComponent' }
XSDDiagnostic >> diagnostics: aXSDDiagnostic [
	"<type: 'XSDDiagnostic' multiplicity: '0..*'>"
	(sharedGeneralizations at: #ConcreteComponent) diagnostics: aXSDDiagnostic
]

{ #category : #'accessing - ConcreteComponent' }
XSDDiagnostic >> element [
	^ (sharedGeneralizations at: #ConcreteComponent) element
]

{ #category : #'accessing - ConcreteComponent' }
XSDDiagnostic >> element: aDOMElement [
	"<type: 'DOMElement' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) element: aDOMElement
]

{ #category : #initialization }
XSDDiagnostic >> initializeDirectGeneralizations [
	directGeneralizations := {
		sharedGeneralizations at: #ConcreteComponent.
	}
]

{ #category : #initialization }
XSDDiagnostic >> initializeSharedGeneralizations [
	sharedGeneralizations at: #ConcreteComponent put: (XSDConcreteComponent newOnShared: sharedGeneralizations).
	sharedGeneralizations at: #Diagnostic put: self.
]

{ #category : #accessing }
XSDDiagnostic >> key [
	"<type: 'String' multiplicity: '0..1'>"
	^ key
]

{ #category : #accessing }
XSDDiagnostic >> key: aString [
	"<type: 'String' multiplicity: '0..1'>"
	self assert: [ aString isNil or: [ aString isKindOf: String ] ].
	key := aString
]

{ #category : #accessing }
XSDDiagnostic >> line [
	"<type: 'Integer' multiplicity: '0..1'>"
	^ line
]

{ #category : #accessing }
XSDDiagnostic >> line: anInteger [
	"<type: 'Integer' multiplicity: '0..1'>"
	self assert: [ anInteger isNil or: [ anInteger isKindOf: Integer ] ].
	line := anInteger
]

{ #category : #accessing }
XSDDiagnostic >> locationURI [
	"<type: 'String' multiplicity: '0..1'>"
	^ locationURI
]

{ #category : #accessing }
XSDDiagnostic >> locationURI: aString [
	"<type: 'String' multiplicity: '0..1'>"
	self assert: [ aString isNil or: [ aString isKindOf: String ] ].
	locationURI := aString
]

{ #category : #accessing }
XSDDiagnostic >> message [
	"<type: 'String' multiplicity: '0..1'>"
	^ message
]

{ #category : #accessing }
XSDDiagnostic >> message: aString [
	"<type: 'String' multiplicity: '0..1'>"
	self assert: [ aString isNil or: [ aString isKindOf: String ] ].
	message := aString
]

{ #category : #accessing }
XSDDiagnostic >> node [
	"<type: 'DOMNode' multiplicity: '0..1'>"
	^ node
]

{ #category : #accessing }
XSDDiagnostic >> node: aDOMNode [
	"<type: 'DOMNode' multiplicity: '0..1'>"
	self assert: [ aDOMNode isNil or: [ aDOMNode isKindOf: XMLNode ] ].
	node := aDOMNode
]

{ #category : #accessing }
XSDDiagnostic >> primaryComponent [
	"<type: 'XSDConcreteComponent'>"
	^ primaryComponent
]

{ #category : #accessing }
XSDDiagnostic >> primaryComponent: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	self assert: [ aXSDConcreteComponent oclIsKindOf: 'ConcreteComponent' ].
	primaryComponent := aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDDiagnostic >> rootContainer [
	^ (sharedGeneralizations at: #ConcreteComponent) rootContainer
]

{ #category : #'accessing - ConcreteComponent' }
XSDDiagnostic >> rootContainer: aXSDConcreteComponent [
	"<type: 'XSDConcreteComponent'>"
	(sharedGeneralizations at: #ConcreteComponent) rootContainer: aXSDConcreteComponent
]

{ #category : #'accessing - ConcreteComponent' }
XSDDiagnostic >> schema [
	^ (sharedGeneralizations at: #ConcreteComponent) schema
]

{ #category : #'accessing - ConcreteComponent' }
XSDDiagnostic >> schema: aXSDSchema [
	"<type: 'XSDSchema' multiplicity: '0..1'>"
	(sharedGeneralizations at: #ConcreteComponent) schema: aXSDSchema
]

{ #category : #accessing }
XSDDiagnostic >> severity [
	"<type: 'XSDDiagnosticSeverity' multiplicity: '0..1'>"
	^ severity
]

{ #category : #accessing }
XSDDiagnostic >> severity: aXSDDiagnosticSeverity [
	"<type: 'XSDDiagnosticSeverity' multiplicity: '0..1'>"
	self assert: [ aXSDDiagnosticSeverity isNil or: [ aXSDDiagnosticSeverity isKindOf: XSDDiagnosticSeverity ] ].
	severity := aXSDDiagnosticSeverity
]

{ #category : #accessing }
XSDDiagnostic >> substitutions [
	"<type: 'String' multiplicity: '0..*'>"
	^ substitutions
]

{ #category : #accessing }
XSDDiagnostic >> substitutions: aString [
	"<type: 'String' multiplicity: '0..*'>"
	self assert: [ aString allSatisfy: [ :each | each isKindOf: String ] ].
	substitutions := aString
]
