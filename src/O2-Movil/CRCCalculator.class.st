Class {
	#name : #CRCCalculator,
	#superclass : #Object,
	#category : #'O2-Movil-Model'
}

{ #category : #public }
CRCCalculator >> crcFor: data [ 

^ self subclassResponsibility.
]
