Class {
	#name : #EmpleadoPasante,
	#superclass : #Empleado,
	#instVars : [
		'cantidadDeExamenes'
	],
	#category : #'O2-Sueldos-Model'
}

{ #category : #'instance creation' }
EmpleadoPasante class >> examenes: unInteger [

^ self new inicializarConCantidadDeExamenes: unInteger.
]

{ #category : #initialization }
EmpleadoPasante >> inicializarConCantidadDeExamenes: cantExamenes [

estoyCasado := false.
cantidadDeHijos := 0.
cantidadDeExamenes := cantExamenes.
]

{ #category : #public }
EmpleadoPasante >> sueldoAdicional [

^ 100 * cantidadDeExamenes.
]

{ #category : #public }
EmpleadoPasante >> sueldoBasico [ 

^ 2000.
]
