Class {
	#name : #Directorio,
	#superclass : #SistemaDeArchivos,
	#instVars : [
		'contenido'
	],
	#category : #'O2-FileSystem'
}

{ #category : #'as yet unclassified' }
Directorio >> agregar: unArchivo [

contenido add: unArchivo.
]

{ #category : #'as yet unclassified' }
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

{ #category : #'as yet unclassified' }
Directorio >> listarContenido: aStream padre: aString [
aStream << aString << '/' << self nombre << self contarArchivos; cr.
(self contenido select: [ :each | (each soyArchivo = 0 ) ]) do: [:each|
	
	(each listarContenido: aStream padre: (aString, '/', self nombre)).
	].

^ aStream contents trimRight.
]
