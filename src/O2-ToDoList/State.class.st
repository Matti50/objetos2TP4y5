Class {
	#name : #State,
	#superclass : #Object,
	#category : #'O2-ToDoList-Model'
}

{ #category : #adding }
State >> addComment: aComment item: aToDoItem [

aToDoItem agregarComentario: aComment.
]

{ #category : #initialization }
State >> finish [ 

^ self.
]

{ #category : #accessing }
State >> start: aToDoItem [

^ self.
]

{ #category : #public }
State >> togglePause: aToDoItem [

^ self error: 'El toDoItem no se encuentra ni en paused ni inProgress'
]

{ #category : #public }
State >> workedTime: aToDoItem [

^ aToDoItem minutosDeInicio - Time current minutes.
]
