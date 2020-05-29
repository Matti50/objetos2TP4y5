Class {
	#name : #EmpleadoTemporario,
	#superclass : #Empleado,
	#instVars : [
		'cantidadDeHoras'
	],
	#category : #'O2-Sueldos-Model'
}

{ #category : #'instance creation' }
EmpleadoTemporario class >> casado: unBoolean cantHijos: unaCantidad horas: cantHoras [

^ (self casado: unBoolean  hijos: unaCantidad) inicializarConHoras: cantHoras. 
]

{ #category : #initialization }
EmpleadoTemporario >> inicializarConHoras: canthoras [

cantidadDeHoras := canthoras.
]

{ #category : #public }
EmpleadoTemporario >> sueldoBasico [

^ 4000 + (cantidadDeHoras * 10).
]
