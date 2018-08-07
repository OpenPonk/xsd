Class {
	#name : #XSDDerivationMethod,
	#superclass : #XSDEnum,
	#category : #'XSD-Metamodel-Enumerations'
}

{ #category : #'accessing - enum' }
XSDDerivationMethod class >> extension [
	^ self on: #extension

]

{ #category : #'accessing - enum' }
XSDDerivationMethod class >> restriction [
	^ self on: #restriction

]

{ #category : #'accessing - enum' }
XSDDerivationMethod >> extension [
	^ self on: #extension

]

{ #category : #'accessing - enum' }
XSDDerivationMethod >> restriction [
	^ self on: #restriction

]
