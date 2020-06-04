Class {
	#name : #OAuth,
	#superclass : #Object,
	#instVars : [
		'isAuth'
	],
	#category : #'TP06-Proxy'
}

{ #category : #public }
OAuth >> attemptAuth [

isAuth := true.
]

{ #category : #initialization }
OAuth >> initialize [

isAuth := false.
]

{ #category : #accessing }
OAuth >> isAuth [

^ isAuth.
]
