Class {
	#name : #Connection,
	#superclass : #Object,
	#category : #'O2-Movil-Model'
}

{ #category : #accessing }
Connection >> pict [

^ self subclassResponsibility.
]

{ #category : #public }
Connection >> sendData: aString crc: anInteger [

^ self subclassResponsibility.
]
