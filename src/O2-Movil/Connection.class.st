Class {
	#name : #Connection,
	#superclass : #Object,
	#category : #'O2-Movil-Model'
}

{ #category : #public }
Connection >> sendData: aString crc: anInteger [

^ self subclassResponsibility.
]

{ #category : #printing }
Connection >> symbol [

^ self subclassResponsibility
]
