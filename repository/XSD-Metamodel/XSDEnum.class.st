Class {
	#name : #XSDEnum,
	#superclass : #Object,
	#instVars : [
		'name'
	],
	#category : #'XSD-Metamodel-Enumerations'
}

{ #category : #'instance creation' }
XSDEnum class >> on: aName [
	^ self new
		setName: aName;
		yourself
]

{ #category : #comparing }
XSDEnum >> = anEnum [
	^ self class = anEnum class and: [ self name = anEnum name ]
]

{ #category : #comparing }
XSDEnum >> hash [
	^ self class hash bitXor: self name hash
]

{ #category : #accessing }
XSDEnum >> name [
	^ name
]

{ #category : #initialization }
XSDEnum >> on: aName [
	^ self setName: aName
]

{ #category : #printing }
XSDEnum >> printOn: aStream [
	super printOn: aStream.
	aStream << '(' << self name asString << ')'
]

{ #category : #initialization }
XSDEnum >> setName: aName [
	name := aName
]
