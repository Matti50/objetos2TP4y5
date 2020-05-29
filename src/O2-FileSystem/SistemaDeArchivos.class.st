Class {
	#name : #SistemaDeArchivos,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'fechaDeCreacion',
		'tamanio'
	],
	#category : #'O2-FileSystem'
}

{ #category : #'instance creation' }
SistemaDeArchivos class >> llamado: 	unString creadoEl: unaFecha [
	
^ self new inicializarConNombre: unString  fecha: unaFecha.
]

{ #category : #initialization }
SistemaDeArchivos >> inicializarConNombre: unNombre fecha: unaFecha [

nombre:= unNombre.
fechaDeCreacion := unaFecha.
]

{ #category : #accessing }
SistemaDeArchivos >> nombre [

^ nombre.
]

{ #category : #'as yet unclassified' }
SistemaDeArchivos >> soyArchivo [

^ 0.
]

{ #category : #accessing }
SistemaDeArchivos >> tamanio [

^ tamanio.
]
