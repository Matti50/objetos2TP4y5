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

{ #category : #public }
SistemaDeArchivos >> archivoMasGrande [

^ self subclassResponsibility.
]

{ #category : #'as yet unclassified' }
SistemaDeArchivos >> archivoMasNuevo [

^ self subclassResponsibility.

]

{ #category : #accessing }
SistemaDeArchivos >> fechaDeCreacion [

^ fechaDeCreacion.
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

{ #category : #public }
SistemaDeArchivos >> soyArchivo [

^ 0.
]

{ #category : #accessing }
SistemaDeArchivos >> tamanio [

^ tamanio.
]
