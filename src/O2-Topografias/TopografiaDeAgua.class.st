Class {
	#name : #TopografiaDeAgua,
	#superclass : #Topografia,
	#category : #'O2-Topografias-Model'
}

{ #category : #public }
TopografiaDeAgua >> calcularProporcionDeTierra [ 

^ 1 - self calcularProporcionDeAgua
]

{ #category : #public }
TopografiaDeAgua >> compararConAgua: otraTopografia [

^ otraTopografia calcularProporcionDeAgua == self calcularProporcionDeAgua .
]

{ #category : #public }
TopografiaDeAgua >> soyIgualA: otraTopografia [

^ otraTopografia compararConAgua: self.
]
