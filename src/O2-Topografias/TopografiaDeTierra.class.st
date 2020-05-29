Class {
	#name : #TopografiaDeTierra,
	#superclass : #Topografia,
	#category : #'O2-Topografias-Model'
}

{ #category : #public }
TopografiaDeTierra >> calcularProporcionDeAgua [ 

^ 0.
]

{ #category : #public }
TopografiaDeTierra >> compararConTierra: otraTopografia [.

^ otraTopografia calcularProporcionDeAgua == self calcularProporcionDeAgua.
]

{ #category : #public }
TopografiaDeTierra >> soyIgualA: otraTopografia [

^ otraTopografia compararConTierra: self.
]
