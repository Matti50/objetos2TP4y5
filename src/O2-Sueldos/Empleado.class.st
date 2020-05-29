Class {
	#name : #Empleado,
	#superclass : #Object,
	#instVars : [
		'estoyCasado',
		'cantidadDeHijos'
	],
	#category : #'O2-Sueldos-Model'
}

{ #category : #'instance creation' }
Empleado class >> casado: unBoolean hijos: cantHijos [

^ self new inicializarCasado: unBoolean  hijos: cantHijos
 
]

{ #category : #'as yet unclassified' }
Empleado >> bonoAntiguedad [

^ 0.
]

{ #category : #public }
Empleado >> calcularBonoCasado [

estoyCasado ifTrue: [ ^ 500 ].

^ 0.
]

{ #category : #public }
Empleado >> calcularBonoPorHijo [

^ cantidadDeHijos * 100
]

{ #category : #public }
Empleado >> descuento [

^ (self sueldoBasico * 13 / 100) + (self sueldoAdicional * 5 / 100)
]

{ #category : #initialization }
Empleado >> inicializarCasado: unBoolean hijos: cantHijos [.

estoyCasado  := unBoolean .
cantidadDeHijos := cantHijos.
]

{ #category : #public }
Empleado >> sueldo [
^ self sueldoBasico + self sueldoAdicional - self descuento.
]

{ #category : #public }
Empleado >> sueldoAdicional [ 

^ self calcularBonoCasado + self calcularBonoPorHijo + self bonoAntiguedad.
]

{ #category : #public }
Empleado >> sueldoBasico [

^ self subclassResponsibility.
]
