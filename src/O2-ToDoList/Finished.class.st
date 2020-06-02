Class {
	#name : #Finished,
	#superclass : #State,
	#category : #'O2-ToDoList-Model'
}

{ #category : #adding }
Finished >> addComment: aComment item: aToDoItem [

^ self. 
]

{ #category : #public }
Finished >> workedTime: aToDoItem [

^ (aToDoItem fin - aToDoItem inicio) asDuration .
]
