Class {
	#name : #AbstractFile,
	#superclass : #Object,
	#category : #'O2-FileManager'
}

{ #category : #accessing }
AbstractFile >> extension [
	^ self subclassResponsibility 
]

{ #category : #accessing }
AbstractFile >> fechaDeCreacion [
	^ self subclassResponsibility
]

{ #category : #accessing }
AbstractFile >> fechaDeModificacion [
	^ self subclassResponsibility 
]

{ #category : #accessing }
AbstractFile >> nombre [
	^ self subclassResponsibility
]

{ #category : #accessing }
AbstractFile >> permisos [
	^ self subclassResponsibility
]

{ #category : #'menu commands' }
AbstractFile >> prettyPrint [ 

^ self subclassResponsibility
]

{ #category : #accessing }
AbstractFile >> tamanio [
	^ self subclassResponsibility
]
