Class {
	#name : #DeviceTest,
	#superclass : #TestCase,
	#instVars : [
		'dev',
		'dev4g'
	],
	#category : #'O2-Movil-Test'
}

{ #category : #running }
DeviceTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."

dev := Device new.
dev4g := Device new.

dev4g conectarCon: (Conn4GAdapter new).
]

{ #category : #tests }
DeviceTest >> testConectarCon [

self assert: (dev conectarCon: (Conn4GAdapter new)) equals: '4G Connection'.
self assert: (dev4g conectarCon: (WifiConn new)) equals: 'Wifi Connection'
]

{ #category : #tests }
DeviceTest >> testConfigurarCRC [

self assert: (dev configurarCRC: (CRC32Calculator new)) equals: 'Se cambio el crcCalculator'.


]

{ #category : #tests }
DeviceTest >> testSend [

self assert: (dev4g send: 'Hola mundo') equals: 'Se envió por 4g: Hola mundo con el crc: 58279'.	
self assert: (dev send: 'Hola mundo') equals: 'Se envió por wifi: Hola mundo y el crc: 58279'.	

dev configurarCRC: CRC32Calculator new.
dev4g configurarCRC: CRC32Calculator new.

self assert: (dev send: 'Hola mundo!' ) equals: 'Se envió por wifi: Hola mundo! y el crc: 4046981747'.
self assert: (dev4g send: 'Hola mundo') equals: 'Se envió por 4g: Hola mundo con el crc: 3816964566'
]
