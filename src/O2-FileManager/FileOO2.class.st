"
UML : 	https://drive.google.com/file/d/16BfIr2RdB336Ln2EgZaM66JoMUxV8ONi/view?usp=sharing
"
Class {
	#name : #FileOO2,
	#superclass : #AbstractFile,
	#instVars : [
		'nombre',
		'extension',
		'tamanio',
		'fechaDeCreacion',
		'fechaDeModificacion',
		'permisos'
	],
	#category : #'O2-FileManager'
}

{ #category : #accessing }
FileOO2 >> extension [
	^ extension
]

{ #category : #accessing }
FileOO2 >> extension: anObject [
	extension := anObject
]

{ #category : #accessing }
FileOO2 >> fechaDeCreacion [
	^ fechaDeCreacion
]

{ #category : #accessing }
FileOO2 >> fechaDeCreacion: anObject [
	fechaDeCreacion := anObject
]

{ #category : #accessing }
FileOO2 >> fechaDeModificacion [
	^ fechaDeModificacion
]

{ #category : #accessing }
FileOO2 >> fechaDeModificacion: anObject [
	fechaDeModificacion := anObject
]

{ #category : #accessing }
FileOO2 >> nombre [
	^ nombre
]

{ #category : #accessing }
FileOO2 >> nombre: anObject [
	nombre := anObject
]

{ #category : #accessing }
FileOO2 >> permisos [
	^ permisos
]

{ #category : #accessing }
FileOO2 >> permisos: anObject [
	permisos := anObject
]

{ #category : #'menu commands' }
FileOO2 >> prettyPrint [ 

^ ''
]

{ #category : #accessing }
FileOO2 >> tamanio [
	^ tamanio
]

{ #category : #accessing }
FileOO2 >> tamanio: anObject [
	tamanio := anObject
]
