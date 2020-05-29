Class {
	#name : #EmpleadoTemporarioTest,
	#superclass : #TestCase,
	#instVars : [
		'casadoConHijos',
		'casadoSinHijos',
		'solteroSinHijos',
		'solteroConHijos'
	],
	#category : #'O2-Sueldos-Test'
}

{ #category : #running }
EmpleadoTemporarioTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
	self initialize.
casadoConHijos := EmpleadoTemporario casado: true cantHijos: 2 horas: 40. 
casadoSinHijos := EmpleadoTemporario casado: true cantHijos: 0 horas: 40.
solteroSinHijos  := EmpleadoTemporario casado: false cantHijos: 0 horas: 40.
solteroConHijos := EmpleadoTemporario casado: false cantHijos: 1 horas: 40.

]

{ #category : #tests }
EmpleadoTemporarioTest >> testSueldo [

self assert: (casadoConHijos sueldo) equals: 4493.
self assert: (casadoSinHijos sueldo) equals: 4303.
self assert: (solteroSinHijos sueldo) equals: 3828.
self assert: (solteroConHijos sueldo) equals: 3923.


]

{ #category : #tests }
EmpleadoTemporarioTest >> testSueldoAdicional [

self assert: (casadoConHijos sueldoAdicional ) equals: 700.
self assert: (casadoSinHijos sueldoAdicional ) equals: 500.
self assert: (solteroConHijos sueldoAdicional) equals: 100.
self assert: (solteroSinHijos sueldoAdicional ) equals: 0.
]

{ #category : #tests }
EmpleadoTemporarioTest >> testSueldoBasico [

self assert: (casadoConHijos sueldoBasico ) equals: 4400.
self assert: (casadoSinHijos sueldoBasico ) equals: 4400.
self assert: (solteroConHijos sueldoBasico ) equals: 4400.
self assert: (solteroSinHijos  sueldoBasico ) equals: 4400.
]
