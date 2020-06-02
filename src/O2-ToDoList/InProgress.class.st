Class {
	#name : #InProgress,
	#superclass : #State,
	#category : #'O2-ToDoList-Model'
}

{ #category : #accessing }
InProgress >> finish: aToDoItem [

aToDoItem fin: DateAndTime current.
aToDoItem estado: (Finished new).
]

{ #category : #public }
InProgress >> togglePause: aToDoItem [

aToDoItem estado: (Paused new).
]
