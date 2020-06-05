Class {
	#name : #Conn4GAdapter,
	#superclass : #Connection,
	#instVars : [
		'c4g'
	],
	#category : #'O2-Movil-Model'
}

{ #category : #initialization }
Conn4GAdapter >> initialize [ 

c4g := Conn4G new.
]

{ #category : #printing }
Conn4GAdapter >> pict [

^ c4g symb.
]

{ #category : #public }
Conn4GAdapter >> sendData: aString crc: anInteger [

^ c4g transmit: aString crc: anInteger.
]
