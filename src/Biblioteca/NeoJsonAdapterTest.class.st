Class {
	#name : #NeoJsonAdapterTest,
	#superclass : #TestCase,
	#instVars : [
		'neo',
		'people'
	],
	#category : #'Biblioteca-Test'
}

{ #category : #running }
NeoJsonAdapterTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."

neo := NeoJsonAdapter new.
people:= OrderedCollection new.
people add: (Socio nombre: 'Matias Cicchitti' email: 'matias@email.com' legajo: '123/4'). 
people add: (Socio nombre: 'Rocio Sala Espiell' email: 'rocio@email.com' legajo: '124/5').
people add: (Socio nombre: 'Nicolas Prieto' email: 'nicolas@email.com' legajo: '125/6').
]

{ #category : #tests }
NeoJsonAdapterTest >> testExport [

self assert: (neo export: people) equals: '[
	{
		"legajo" : "123/4",
		"email" : "matias@email.com",
		"nombre" : "Matias Cicchitti"
	},
	{
		"legajo" : "124/5",
		"email" : "rocio@email.com",
		"nombre" : "Rocio Sala Espiell"
	},
	{
		"legajo" : "125/6",
		"email" : "nicolas@email.com",
		"nombre" : "Nicolas Prieto"
	}
]'
]
