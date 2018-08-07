Class {
	#name : #XSDAttributeUseCategory,
	#superclass : #XSDEnum,
	#category : #'XSD-Metamodel-Enumerations'
}

{ #category : #'accessing - enum' }
XSDAttributeUseCategory class >> optional [
	^ self on: #optional

]

{ #category : #'accessing - enum' }
XSDAttributeUseCategory class >> prohibited [
	^ self on: #prohibited

]

{ #category : #'accessing - enum' }
XSDAttributeUseCategory class >> required [
	^ self on: #required

]

{ #category : #'accessing - enum' }
XSDAttributeUseCategory >> optional [
	^ self on: #optional

]

{ #category : #'accessing - enum' }
XSDAttributeUseCategory >> prohibited [
	^ self on: #prohibited

]

{ #category : #'accessing - enum' }
XSDAttributeUseCategory >> required [
	^ self on: #required

]
