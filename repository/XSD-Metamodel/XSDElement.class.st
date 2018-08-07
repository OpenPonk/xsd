Class {
	#name : #XSDElement,
	#superclass : #XSDMetaElement,
	#instVars : [
		'ownedElements',
		'owner',
		'ownedComments'
	],
	#category : #'XSD-Metamodel-Meta'
}

{ #category : #initialization }
XSDElement >> initializeDirectGeneralizations [
	directGeneralizations := {
	}
]

{ #category : #initialization }
XSDElement >> initializeSharedGeneralizations [
	sharedGeneralizations at: #Element put: self.
]
