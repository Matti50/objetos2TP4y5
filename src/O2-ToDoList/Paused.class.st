Class {
	#name : #Paused,
	#superclass : #State,
	#category : #'O2-ToDoList-Model'
}

{ #category : #accessing }
Paused >> finish: aToDoItem [

aToDoItem fin: Time current.
aToDoItem estado: (Finished new)
]

{ #category : #public }
Paused >> togglePause: aToDoItem [

aToDoItem estado: (InProgress new)
]
