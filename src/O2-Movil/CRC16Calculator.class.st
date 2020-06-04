Class {
	#name : #CRC16Calculator,
	#superclass : #CRCCalculator,
	#category : #'O2-Movil-Model'
}

{ #category : #public }
CRC16Calculator >> crcFor: data [ 

^ CRC crc16FromCollection: data.
]
