Class {
	#name : #Directorio,
	#superclass : #SistemaDeArchivos,
	#instVars : [
		'contenido'
	],
	#category : #'O2-FileSystem'
}

{ #category : #adding }
Directorio >> agregar: unArchivo [

contenido add: unArchivo.
]

{ #category : #public }
Directorio >> archivoMasGrande [

^ 	((contenido collect: [ :each | each  archivoMasGrande]) sort: [:a :b | a tamanio > b tamanio]) first.

]

{ #category : #'as yet unclassified' }
Directorio >> archivoMasNuevo [

^ ((contenido collect: [ :each | each  archivoMasNuevo]) sort: [:a :b | a fechaDeCreacion > b fechaDeCreacion]) first.
]

{ #category : #counting }
Directorio >> contarArchivos [
|cantidadArchivos|
cantidadArchivos := contenido sumNumbers: [ :each | each soyArchivo ].

(cantidadArchivos > 0)
ifTrue: [ ^ ' (', (cantidadArchivos asString) , ' archivos)' ].

^ ''
]

{ #category : #accessing }
Directorio >> contenido [

^ contenido.
]

{ #category : #initialization }
Directorio >> initialize [

tamanio := 32.
contenido := OrderedCollection new.
]

{ #category : #public }
Directorio >> listadoDeContenido [


^ self listarContenido: (WriteStream on: String new) padre: ''.


]

{ #category : #private }
Directorio >> listarContenido: aStream padre: aString [
aStream << aString << '/' << self nombre << self contarArchivos; cr.
(self contenido select: [ :each | (each soyArchivo = 0 ) ]) do: [:each|
	
	(each listarContenido: aStream padre: (aString, '/', self nombre)).
	].

^ aStream contents trimRight.
]

{ #category : #accessing }
Directorio >> tamanio [

^ tamanio + (contenido sumNumbers: [ :each | each tamanio ]).
]

{ #category : #public }
Directorio >> tamanoTotalOcupado [

^ self tamanio.
]
