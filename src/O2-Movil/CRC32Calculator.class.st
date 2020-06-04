Class {
	#name : #CRC32Calculator,
	#superclass : #CRCCalculator,
	#category : #'O2-Movil-Model'
}

{ #category : #public }
CRC32Calculator >> crcFor: data [

^ CRC crc32FromCollection: data
]
