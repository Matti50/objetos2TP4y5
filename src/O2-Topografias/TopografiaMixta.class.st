Class {
	#name : #TopografiaMixta,
	#superclass : #Topografia,
	#instVars : [
		'partes'
	],
	#category : #'O2-Topografias-Model'
}

{ #category : #accessing }
TopografiaMixta class >> partes: aCollection [

^ self new partes: aCollection.
]

{ #category : #public }
TopografiaMixta >> calcularProporcionDeAgua [

^ (partes sumNumbers: [ :each | each calcularProporcionDeAgua ]) / partes size.
]

{ #category : #public }
TopografiaMixta >> calcularProporcionDeTierra [

^ (partes sumNumbers: [ :each | each calcularProporcionDeTierra ]) / partes size.
]

{ #category : #public }
TopografiaMixta >> compararConMixta: otraTopografia [

|somosIguales i|

somosIguales := true.
i:= 1.
[somosIguales and: [i < 5 ]] whileTrue: [  
	
	somosIguales := (self partes at: i) soyIgualA: (otraTopografia partes at: i). i := i + 1.
	
].

^ somosIguales.
]

{ #category : #initialization }
TopografiaMixta >> initialize [

partes := OrderedCollection new.
]

{ #category : #accessing }
TopografiaMixta >> partes [

^ partes.
]

{ #category : #accessing }
TopografiaMixta >> partes: somePartes [

partes := somePartes
]

{ #category : #public }
TopografiaMixta >> soyIgualA: otraTopografia [

^ otraTopografia compararConMixta: self.
]
