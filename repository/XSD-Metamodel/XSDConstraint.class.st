Class {
	#name : #XSDConstraint,
	#superclass : #XSDEnum,
	#category : #'XSD-Metamodel-Enumerations'
}

{ #category : #'accessing - enum' }
XSDConstraint class >> default [
	^ self on: #default

]

{ #category : #'accessing - enum' }
XSDConstraint class >> fixed [
	^ self on: #fixed

]

{ #category : #'accessing - enum' }
XSDConstraint >> default [
	^ self on: #default

]

{ #category : #'accessing - enum' }
XSDConstraint >> fixed [
	^ self on: #fixed

]
