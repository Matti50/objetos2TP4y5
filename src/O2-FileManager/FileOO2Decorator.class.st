Class {
	#name : #FileOO2Decorator,
	#superclass : #AbstractFile,
	#instVars : [
		'file'
	],
	#category : #'O2-FileManager'
}

{ #category : #'as yet unclassified' }
FileOO2Decorator class >> decorates: aFile [ 

^ self new file: aFile.
]

{ #category : #public }
FileOO2Decorator >> decorate [

^ self subclassResponsibility.
]

{ #category : #accessing }
FileOO2Decorator >> extension [
	^ file extension.
]

{ #category : #accessing }
FileOO2Decorator >> fechaDeCreacion [
	^ file fechaDeCreacion.
]

{ #category : #accessing }
FileOO2Decorator >> fechaDeModificacion [
	^ file fechaDeModificacion 
]

{ #category : #accessing }
FileOO2Decorator >> file: aFile [ 

file:= aFile.
]

{ #category : #accessing }
FileOO2Decorator >> nombre [
	^ file nombre
]

{ #category : #accessing }
FileOO2Decorator >> permisos [
	^ file permisos.
]

{ #category : #'menu commands' }
FileOO2Decorator >> prettyPrint [

^ file prettyPrint,' - ' ,self decorate.
]

{ #category : #accessing }
FileOO2Decorator >> tamanio [
	^ file tamanio
]
