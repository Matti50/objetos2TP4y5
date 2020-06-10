Class {
	#name : #TestName,
	#superclass : #TestCase,
	#category : #'O2-FileSystem'
}

{ #category : #accessing }
TestName >> log [

Transcript show: self printString; cr; flush.
]

{ #category : #running }
TestName >> tearDown [ 

super tearDown.
self log.
]
