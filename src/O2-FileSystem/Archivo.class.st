Class {
	#name : #Archivo,
	#superclass : #SistemaDeArchivos,
	#category : #'O2-FileSystem'
}

{ #category : #'instance creation' }
Archivo class >> llamado: unString creadoEl: unaFecha kBytes: unNumero [

^ (self llamado: unString  creadoEl: unaFecha) tamanio: unNumero
]

{ #category : #'instance creation' }
Archivo class >> llamado: unString fecha: unaFecha kBytes: unNumero [
]

{ #category : #public }
Archivo >> archivoMasGrande [

^ self.
]

{ #category : #public }
Archivo >> archivoMasNuevo [

^ self.
]

{ #category : #public }
Archivo >> soyArchivo [ 

^ 1.
]

{ #category : #accessing }
Archivo >> tamanio: unTamanio [ 

tamanio := unTamanio
]
