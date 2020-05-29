Class {
	#name : #BibliotecaTest,
	#superclass : #TestCase,
	#instVars : [
		'biblioVacia',
		'socio',
		'biblioLlena',
		'bibliotecaNeo'
	],
	#category : #'Biblioteca-Test'
}

{ #category : #running }
BibliotecaTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."

self initialize.
biblioVacia := Biblioteca new: (VoorheesExporter new).
biblioLlena := Biblioteca new: (VoorheesExporter new).
socio := Socio nombre: 'Mati' email: 'miEmail@email.com' legajo: '213123/4'.
biblioLlena agregarSocio: (Socio nombre: 'Matias' email: 'mati@email.com' legajo: '1234/5').
biblioLlena agregarSocio: (Socio nombre: 'Rocio' email: 'ro@email.com' legajo: '1234/5').
]

{ #category : #tests }
BibliotecaTest >> testAgregarSocio [

self assert: (biblioVacia socios isEmpty).

biblioVacia agregarSocio: socio.
self assert: (biblioVacia socios includes: socio).

biblioVacia agregarSocio: socio.
self assert: (biblioVacia socios size ) equals: 1.
]

{ #category : #tests }
BibliotecaTest >> testExportarSocios [


|resultadoDelExport|

resultadoDelExport := biblioLlena exportarSocios.

self assert: (resultadoDelExport ) equals: '[
	{
		"nombre" : "Matias",
		"email" : "mati@email.com",
		"legajo" : "1234/5"
	},
	{
		"nombre" : "Rocio",
		"email" : "ro@email.com",
		"legajo" : "1234/5"
	}
]'.

biblioVacia agregarSocio: (Socio nombre: 'Tina Turner' email: 'laTina@email.com' legajo: '1234/5').
resultadoDelExport :=  biblioVacia exportarSocios .

self assert: (resultadoDelExport) equals: '[
	{
		"nombre" : "Tina Turner",
		"email" : "laTina@email.com",
		"legajo" : "1234/5"
	}
]'.

biblioLlena exporter: (NeoJsonAdapter new).
self assert: (biblioLlena exportarSocios) equals: 
'[
	{
		"legajo" : "1234/5",
		"email" : "mati@email.com",
		"nombre" : "Matias"
	},
	{
		"legajo" : "1234/5",
		"email" : "ro@email.com",
		"nombre" : "Rocio"
	}
]'.


]
