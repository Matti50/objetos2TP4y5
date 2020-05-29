Class {
	#name : #Topografia,
	#superclass : #Object,
	#category : #'O2-Topografias-Model'
}

{ #category : #public }
Topografia >> calcularProporcionDeAgua [

^ 1.
]

{ #category : #public }
Topografia >> calcularProporcionDeTierra [

^ 1 - self calcularProporcionDeAgua.
]

{ #category : #protected }
Topografia >> compararConAgua: otraTopografia [

^ false.
]

{ #category : #protected }
Topografia >> compararConMixta: otraTopografia [

^ false.
]

{ #category : #protected }
Topografia >> compararConTierra: otraTopografia [

^ false.

]

{ #category : #public }
Topografia >> soyIgualA: otraTopografia [

^ self subclassResponsibility
]
