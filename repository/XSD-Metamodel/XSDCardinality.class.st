Class {
	#name : #XSDCardinality,
	#superclass : #XSDEnum,
	#category : #'XSD-Metamodel-Enumerations'
}

{ #category : #'accessing - enum' }
XSDCardinality class >> countablyInfinite [
	^ self on: #countablyInfinite

]

{ #category : #'accessing - enum' }
XSDCardinality class >> finite [
	^ self on: #finite

]

{ #category : #'accessing - enum' }
XSDCardinality >> countablyInfinite [
	^ self on: #countablyInfinite

]

{ #category : #'accessing - enum' }
XSDCardinality >> finite [
	^ self on: #finite

]
