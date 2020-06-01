Class {
	#name : #Pending,
	#superclass : #State,
	#category : #'O2-ToDoList-Model'
}

{ #category : #accessing }
Pending >> start: aToDoItem [

aToDoItem inicio: Time current.
aToDoItem estado: (InProgress new).


]

{ #category : #public }
Pending >> workedTime: aToDoItem [

^ self error: 'La tarea aún no ha finalizado'.

]
