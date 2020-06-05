Class {
	#name : #WifiConn,
	#superclass : #Connection,
	#instVars : [
		'pict'
	],
	#category : #'O2-Movil-Model'
}

{ #category : #initialization }
WifiConn >> initialize [ 

pict := 'Wifi Connection'.
]

{ #category : #accessing }
WifiConn >> pict [

^ pict.
]

{ #category : #public }
WifiConn >> sendData: aString crc: anInteger [

|msj|

msj := 'Se envió por wifi: ', aString, ' y el crc: ', anInteger asString.

Transcript show: msj.

^ msj


]
