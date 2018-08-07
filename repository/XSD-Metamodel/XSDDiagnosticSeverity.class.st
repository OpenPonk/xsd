Class {
	#name : #XSDDiagnosticSeverity,
	#superclass : #XSDEnum,
	#category : #'XSD-Metamodel-Enumerations'
}

{ #category : #'accessing - enum' }
XSDDiagnosticSeverity class >> error [
	^ self on: #error

]

{ #category : #'accessing - enum' }
XSDDiagnosticSeverity class >> fatal [
	^ self on: #fatal

]

{ #category : #'accessing - enum' }
XSDDiagnosticSeverity class >> information [
	^ self on: #information

]

{ #category : #'accessing - enum' }
XSDDiagnosticSeverity class >> warning [
	^ self on: #warning

]

{ #category : #'accessing - enum' }
XSDDiagnosticSeverity >> error [
	^ self on: #error

]

{ #category : #'accessing - enum' }
XSDDiagnosticSeverity >> fatal [
	^ self on: #fatal

]

{ #category : #'accessing - enum' }
XSDDiagnosticSeverity >> information [
	^ self on: #information

]

{ #category : #'accessing - enum' }
XSDDiagnosticSeverity >> warning [
	^ self on: #warning

]
