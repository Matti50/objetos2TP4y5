Class {
	#name : #ToDoItem,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'comentarios',
		'estado',
		'inicio',
		'fin'
	],
	#category : #'O2-ToDoList-Model'
}

{ #category : #accessing }
ToDoItem class >> name: aName [

^ self new nombre: aName.
]

{ #category : #adding }
ToDoItem >> addComment: aComment [

estado addComment: aComment item: self.
]

{ #category : #public }
ToDoItem >> agregarComentario: unComentario [

comentarios add: unComentario.
]

{ #category : #public }
ToDoItem >> cantidadDeComentarios [
^ comentarios size.
]

{ #category : #testing }
ToDoItem >> comentarios [
^ comentarios.
]

{ #category : #testing }
ToDoItem >> estado [ 

^ estado.
]

{ #category : #accessing }
ToDoItem >> estado: aState [

estado := aState.
]

{ #category : #accessing }
ToDoItem >> fin [

^ fin.
]

{ #category : #accessing }
ToDoItem >> fin: aTimeStamp [

fin := aTimeStamp.
]

{ #category : #public }
ToDoItem >> finish [ 

estado finish: self.
]

{ #category : #accessing }
ToDoItem >> inicio [

^ inicio.
]

{ #category : #accessing }
ToDoItem >> inicio: aTimeStamp [ 

inicio:= aTimeStamp.
]

{ #category : #public }
ToDoItem >> minutosDeFin [

^ fin asTime minutes.
]

{ #category : #public }
ToDoItem >> minutosDeInicio [

^ inicio asTime minutes.
]

{ #category : #accessing }
ToDoItem >> nombre: unNombre [

nombre := unNombre.
estado := Pending new.
comentarios := OrderedCollection new.
inicio:= 0.
fin := 0.

]

{ #category : #public }
ToDoItem >> start [ 

estado start: self.
]

{ #category : #public }
ToDoItem >> togglePause [

estado togglePause: self.
]

{ #category : #public }
ToDoItem >> workedTime [

^ estado workedTime: self.
]
