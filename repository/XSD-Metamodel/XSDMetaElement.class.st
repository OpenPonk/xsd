Class {
	#name : #XSDMetaElement,
	#superclass : #Object,
	#instVars : [
		'directGeneralizations',
		'sharedGeneralizations'
	],
	#category : #'XSD-Metamodel-Meta'
}

{ #category : #'instance creation' }
XSDMetaElement class >> newOnShared: aDictionary [
	^ self basicNew
		initializeWithShared: aDictionary;
		yourself
]

{ #category : #'GTInspector - extensions' }
XSDMetaElement >> gtInspectorAllPropertiesIn: aComposite [
	<gtInspectorPresentationOrder: 6>
	aComposite fastTable
		title: 'Properties (All)';
		display: [ self inspectorProperties ];
		column: 'name' evaluated: [ :each | each key ];
		column: 'value' evaluated: [ :each | each value ];
		send: [ :selection | 
			selection isNil
				ifTrue: [ nil ]
				ifFalse: [ selection value ] ]
]

{ #category : #'GTInspector - extensions' }
XSDMetaElement >> gtInspectorGeneralizationsIn: aComposite [
	<gtInspectorPresentationOrder: 8>
	aComposite fastTable
		title: 'Generalizations';
		display: [ sharedGeneralizations associations ];
		column: 'name' evaluated: [ :each | each key ];
		column: 'value' evaluated: [ :each | each value ];
		send: [ :selection | 
			selection isNil
				ifTrue: [ nil ]
				ifFalse: [ selection value ] ]
]

{ #category : #'GTInspector - extensions' }
XSDMetaElement >> gtInspectorPropertiesIn: aComposite [
	<gtInspectorPresentationOrder: 5>
	aComposite fastTable
		title: 'Properties';
		display: [ self nonEmptyinspectorProperties ];
		column: 'name' evaluated: [ :each | each key ];
		column: 'value' evaluated: [ :each | each value ];
		send: [ :selection | 
			selection isNil
				ifTrue: [ nil ]
				ifFalse: [ selection value ] ]
]

{ #category : #accessing }
XSDMetaElement >> identity [
	^ sharedGeneralizations values last
]

{ #category : #initialization }
XSDMetaElement >> initialize [
	super initialize.
	sharedGeneralizations := OrderedDictionary new.
	self initializeSharedGeneralizations.
	self initializeDirectGeneralizations
]

{ #category : #initialization }
XSDMetaElement >> initializeDirectGeneralizations [
	^ self subclassResponsibility
]

{ #category : #initialization }
XSDMetaElement >> initializeSharedGeneralizations [
	^ self subclassResponsibility
]

{ #category : #initialization }
XSDMetaElement >> initializeWithShared: aDictionary [
	super initialize.
	sharedGeneralizations := aDictionary.
	self initializeDirectGeneralizations
]

{ #category : #'GTInspector - extensions' }
XSDMetaElement >> inspectorProperties [
	^ self inspectorPropertiesSelectors collect: [ :each | each -> (self perform: each) ]
]

{ #category : #'GTInspector - extensions' }
XSDMetaElement >> inspectorPropertiesSelectors [
	| classes class |
	classes := Set new.
	class := self class.
	[ class superclass name = 'Object' ]
		whileFalse: [ classes add: class.
			class := class superclass ].
	^ ((((classes flatCollect: #methods) select: [ :each | each numArgs = 0 ])
		select: [ :each | each protocol beginsWith: 'accessing' ]) collect: #selector) sorted
]

{ #category : #'GTInspector - extensions' }
XSDMetaElement >> nonEmptyinspectorProperties [
	^ self inspectorProperties
		reject: [ :pair | pair value isNil or: [ pair value isCollection and: [ pair value isEmpty ] ] ]
]

{ #category : #'ocl-experimental' }
XSDMetaElement >> oclAsType: aClassifier [
	^ sharedGeneralizations at: (self oclClassifierNameFrom: aClassifier)
]

{ #category : #'ocl-experimental' }
XSDMetaElement >> oclClassifierNameFrom: anObject [
	(anObject isKindOf: self class)
		ifTrue: [ ^ anObject name withoutPrefix: 'XSD' ].
	(anObject isKindOf: self)
		ifTrue: [ ^ anObject name ].
	anObject isString
		ifTrue: [ ^ anObject ].
	self error: 'Unknown classifier ' , anObject asString
]

{ #category : #'ocl-experimental' }
XSDMetaElement >> oclIsKindOf: aClassifier [
	"Element is not part of the shared generalization, so extra check is needed."
	aClassifier = #Element
		ifTrue: [ ^ true ].
	^ sharedGeneralizations includesKey: (self oclClassifierNameFrom: aClassifier)
]

{ #category : #'ocl-experimental' }
XSDMetaElement >> oclIsTypeOf: aClassifier [
	"Element is not part of the shared generalization, so extra check is needed."
	aClassifier = #Element
		ifTrue: [ ^ true ].
	^ sharedGeneralizations keys last = (self oclClassifierNameFrom: aClassifier)
]

{ #category : #printing }
XSDMetaElement >> printOn: aStream [
	super printOn: aStream.
	(self class selectors includes: #name)
		ifTrue: [ aStream
				<< '(';
				<< self name printString;
				<< ')' ]
]

{ #category : #accessing }
XSDMetaElement >> xsdClassName [
	^ self className withoutPrefix: 'XSD'
]
