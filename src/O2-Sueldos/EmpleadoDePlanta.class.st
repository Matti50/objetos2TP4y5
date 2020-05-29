Class {
	#name : #EmpleadoDePlanta,
	#superclass : #Empleado,
	#instVars : [
		'antiguedad'
	],
	#category : #'O2-Sueldos-Model'
}

{ #category : #intanceCreation }
EmpleadoDePlanta class >> casado: unBoolean hijos: unInteger antiguedad: unaAntiguedad [

^ (self casado: unBoolean hijos: unInteger)  inicializarConAntiguedad: unaAntiguedad.
]

{ #category : #'as yet unclassified' }
EmpleadoDePlanta >> bonoAntiguedad [

^ antiguedad * 100
]

{ #category : #initialization }
EmpleadoDePlanta >> inicializarConAntiguedad: unInteger [

antiguedad := unInteger.

]

{ #category : #public }
EmpleadoDePlanta >> sueldoBasico [ 

^ 3000.
]
