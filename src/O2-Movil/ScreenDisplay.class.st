Class {
	#name : #ScreenDisplay,
	#superclass : #Object,
	#category : #'O2-Movil-Model'
}

{ #category : #public }
ScreenDisplay >> showBanner: img [

Transcript show: img; cr.

^ img
]
