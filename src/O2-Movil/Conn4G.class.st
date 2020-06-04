Class {
	#name : #Conn4G,
	#superclass : #Object,
	#instVars : [
		'symb'
	],
	#category : #'O2-Movil-Model'
}

{ #category : #initialization }
Conn4G >> initialize [ 

symb := '4G Connection'
]

{ #category : #accessing }
Conn4G >> symb [

^ symb
]

{ #category : #public }
Conn4G >> transmit: data crc: anInteger [
|msj|

msj := 'Se envió por 4g: ', data, ' con el crc: ', anInteger asString.

Transcript show: msj.

^ msj.

]
