Class {
	#name : #ToDoItemTest,
	#superclass : #TestCase,
	#instVars : [
		'toDoPending',
		'toDoStarted',
		'toDoFinished',
		'finishedMock',
		'withComment',
		'comment'
	],
	#category : #'O2-ToDoList-Test'
}

{ #category : #running }
ToDoItemTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
	super setUp.
	finishedMock := MockFinished new.
toDoPending := ToDoItem name: 'test item'.
toDoStarted := ToDoItem name: 'started item test'.
toDoFinished := ToDoItem name: 'finished item test'.
toDoFinished start.
toDoFinished finish.
toDoStarted start.
comment := 'Hay que hacerlo antes de las 10pm de mañana'.
withComment := ToDoItem name: 'test with comment'.
withComment addComment: comment.
]

{ #category : #tests }
ToDoItemTest >> testAddComment [

|newComment|

newComment := 'This is a new comment'.
self assert: (toDoPending cantidadDeComentarios ) equals: 0.
toDoPending addComment: comment.
self assert: (toDoPending cantidadDeComentarios ) equals: 1.
self assert: (toDoPending comentarios includes: comment).
self deny: (withComment cantidadDeComentarios )  equals: 0.
withComment addComment: newComment.
self assert: (withComment comentarios includes: newComment).

]

{ #category : #tests }
ToDoItemTest >> testFinish [ 

self deny: (toDoStarted inicio) equals: 0.
self assert: (toDoStarted fin) equals: 0.
toDoStarted finish.
self deny: (toDoStarted fin )equals: 0.
]

{ #category : #tests }
ToDoItemTest >> testStart [

self assert: (toDoPending inicio) equals: 0.
toDoPending start.
self deny: (toDoPending inicio) equals: 0.

]

{ #category : #tests }
ToDoItemTest >> testTogglePause [

self should: [toDoPending togglePause] raise: Error.
self should: [ toDoFinished togglePause ] raise: Error.
self assert: (toDoStarted estado class) equals: InProgress.
toDoStarted togglePause.
self assert: (toDoStarted estado class) equals: Paused.
toDoStarted togglePause.
self assert: (toDoStarted estado class) equals: InProgress.

]

{ #category : #tests }
ToDoItemTest >> testWorkedTime [

self should: [ toDoPending workedTime ] raise: Error.
self should: [ toDoStarted workedTime  ] raise: Error.
self assert: ( finishedMock workedTime ) equals: 20.

]
