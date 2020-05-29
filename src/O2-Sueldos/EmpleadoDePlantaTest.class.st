Class {
	#name : #EmpleadoDePlantaTest,
	#superclass : #TestCase,
	#instVars : [
		'conAntiguedadCasadoConHijos',
		'sinAntiguedadCasadoConHijos',
		'conAntiguedadSolteroConHijos',
		'sinAntiguedadSolteroConHijos',
		'conAntiguedadCasadoSinHijos'
	],
	#category : #'O2-Sueldos-Test'
}

{ #category : #running }
EmpleadoDePlantaTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."

super setUp.

conAntiguedadCasadoConHijos := EmpleadoDePlanta casado: true hijos: 2 antiguedad: 4.
sinAntiguedadCasadoConHijos  := EmpleadoDePlanta casado: true hijos: 2 antiguedad: 0.
conAntiguedadSolteroConHijos  := EmpleadoDePlanta casado: false hijos: 2 antiguedad: 4.
conAntiguedadCasadoSinHijos  := EmpleadoDePlanta casado: true hijos: 0 antiguedad: 4.
sinAntiguedadSolteroConHijos := EmpleadoDePlanta casado: false hijos: 2 antiguedad: 0.

]

{ #category : #tests }
EmpleadoDePlantaTest >> testSueldo [

self assert: (conAntiguedadCasadoConHijos sueldo) equals: 3655.
self assert: (sinAntiguedadCasadoConHijos sueldo) equals: 3275.
self assert: (conAntiguedadCasadoSinHijos sueldo) equals: 3465.
self assert: (conAntiguedadSolteroConHijos sueldo) equals: 3180.
self assert: (sinAntiguedadSolteroConHijos sueldo) equals: 2800.  
      
]

{ #category : #tests }
EmpleadoDePlantaTest >> testSueldoAdicional [

self assert: (conAntiguedadCasadoConHijos sueldoAdicional) equals: 1100.
self assert: (sinAntiguedadCasadoConHijos sueldoAdicional) equals: 700.
self assert: (conAntiguedadCasadoSinHijos sueldoAdicional) equals: 900.
self assert: (conAntiguedadSolteroConHijos sueldoAdicional) equals: 600.
self assert: (sinAntiguedadSolteroConHijos sueldoAdicional) equals: 200.  
]
