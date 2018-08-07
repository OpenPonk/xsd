Class {
	#name : #XSDVariety,
	#superclass : #XSDEnum,
	#category : #'XSD-Metamodel-Enumerations'
}

{ #category : #'accessing - enum' }
XSDVariety class >> atomic [
	^ self on: #atomic

]

{ #category : #'accessing - enum' }
XSDVariety class >> list [
	^ self on: #list

]

{ #category : #'accessing - enum' }
XSDVariety class >> union [
	^ self on: #union

]

{ #category : #'accessing - enum' }
XSDVariety >> atomic [
	^ self on: #atomic

]

{ #category : #'accessing - enum' }
XSDVariety >> list [
	^ self on: #list

]

{ #category : #'accessing - enum' }
XSDVariety >> union [
	^ self on: #union

]
