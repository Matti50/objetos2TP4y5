Class {
	#name : #MockFinished,
	#superclass : #ToDoItem,
	#category : #'O2-ToDoList-Test'
}

{ #category : #initialization }
MockFinished >> initialize [

estado := Finished new.
inicio := '2020-06-01T20:35:49.699578-03:00' asDateAndTime .
fin := '2020-06-02T12:35:49.699578-03:00' asDateAndTime . 


]
