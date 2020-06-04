"
UML:
https://drive.google.com/file/d/147D-9ytX7vcalee7cePKVYLYeSxvdmAq/view?usp=sharing
"
Class {
	#name : #Device,
	#superclass : #Object,
	#instVars : [
		'ringer',
		'display',
		'connection',
		'crcCalculator'
	],
	#category : #'O2-Movil-Model'
}

{ #category : #public }
Device >> conectarCon: unaConexion [


ringer ring.
connection := unaConexion.
^ display showBanner: (unaConexion symbol). 
]

{ #category : #public }
Device >> configurarCRC: unCRCCalculator [
|msj|

msj := 'Se cambio el crcCalculator'.
Transcript show: msj.
crcCalculator := unCRCCalculator.
^ msj.
]

{ #category : #initialization }
Device >> initialize [ 

ringer := Ring new.
display := ScreenDisplay new.
connection := WifiConn new.
crcCalculator := CRC16Calculator new.

]

{ #category : #public }
Device >> send: data [ 

|crc|

crc := crcCalculator crcFor: data.
^ connection sendData: data crc: crc. 
]
