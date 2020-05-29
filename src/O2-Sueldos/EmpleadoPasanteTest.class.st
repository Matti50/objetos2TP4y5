Class {
	#name : #EmpleadoPasanteTest,
	#superclass : #TestCase,
	#instVars : [
		'estudianteConExamenes',
		'estudianteSinExamenes'
	],
	#category : #'O2-Sueldos-Test'
}

{ #category : #running }
EmpleadoPasanteTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
	self initialize.
	estudianteConExamenes := EmpleadoPasante examenes: 2.
	estudianteSinExamenes := EmpleadoPasante examenes: 0.
	

]

{ #category : #tests }
EmpleadoPasanteTest >> testSueldo [


self assert: (estudianteConExamenes sueldo) equals: 1930.
self assert: (estudianteSinExamenes sueldo) equals: 1740.
]

{ #category : #tests }
EmpleadoPasanteTest >> testSueldoAdicional [

self assert: (estudianteConExamenes sueldoAdicional ) equals: 200.
self assert: (estudianteSinExamenes  sueldoAdicional ) equals: 0.
]

{ #category : #tests }
EmpleadoPasanteTest >> testSueldoBasico [

self assert: (estudianteConExamenes sueldoBasico ) equals: 2000.
self assert: (estudianteSinExamenes sueldoBasico ) equals: 2000.
]
