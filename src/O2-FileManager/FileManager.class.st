Class {
	#name : #FileManager,
	#superclass : #Object,
	#instVars : [
		'file'
	],
	#category : #'O2-FileManager'
}

{ #category : #public }
FileManager >> decorateWithExtension: aFile [

^ FileExtensionDecorator decorates: aFile.

]

{ #category : #public }
FileManager >> decorateWithFechaDeCreacion: aFile [

^ FileFechaDeCreacionDecorator decorates: aFile. 
]

{ #category : #public }
FileManager >> decorateWithFechaDeModificacion: aFile [

^ FileFechaDeModificacionDecorator decorates: aFile. 
]

{ #category : #public }
FileManager >> decorateWithName: aFile [ 

^ FileNameDecorator decorates: aFile
]

{ #category : #public }
FileManager >> decorateWithPermissions: aFile [

^ FilePermissionsDecorator decorates: aFile. 
]

{ #category : #public }
FileManager >> decorateWithTamanio: aFile [ 

^ FileTamanioDecorator decorates: aFile.
]

{ #category : #initialization }
FileManager >> initialize [

file := FileOO2 new.
]
