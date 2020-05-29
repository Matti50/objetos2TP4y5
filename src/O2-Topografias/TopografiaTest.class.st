Class {
	#name : #TopografiaTest,
	#superclass : #TestCase,
	#instVars : [
		'topoDeAgua1',
		'topoDeAgua2',
		'topoDeTierra',
		'topoDeTierra2',
		'topoMixta',
		'parts'
	],
	#category : #'O2-Topografias-Test'
}

{ #category : #running }
TopografiaTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."

super setUp.

topoDeAgua1 := TopografiaDeAgua new.
topoDeAgua2 := TopografiaDeAgua new.
topoDeTierra := TopografiaDeTierra new.
topoDeTierra2 := TopografiaDeTierra new.
topoMixta := TopografiaMixta new.
parts := OrderedCollection new.
parts add: TopografiaDeAgua new.
parts add: TopografiaDeTierra new.
parts add: TopografiaDeAgua new.
parts add: TopografiaDeTierra new.

topoMixta partes: parts.

 
]

{ #category : #tests }
TopografiaTest >> testCalcularProporcionDeAgua [

self assert: (topoDeAgua1 calcularProporcionDeAgua ) equals: 1.
self assert: (topoDeTierra calcularProporcionDeAgua ) equals: 0.  
self deny: (topoMixta calcularProporcionDeAgua ) equals: 1.
self deny: (topoMixta calcularProporcionDeAgua ) equals: 0.
self assert: (topoDeAgua1 calcularProporcionDeAgua ) equals: topoDeAgua2 calcularProporcionDeAgua.
self deny: (topoDeAgua1 calcularProporcionDeAgua ) equals: topoDeTierra calcularProporcionDeAgua.
self deny: (topoDeAgua1 calcularProporcionDeAgua) equals: topoMixta calcularProporcionDeAgua.

]

{ #category : #tests }
TopografiaTest >> testCalcularProporcionDeTierra [

self assert: (topoDeAgua1 calcularProporcionDeTierra) equals: 0.
self assert: (topoDeTierra calcularProporcionDeTierra) equals: 1.
self deny: (topoMixta calcularProporcionDeTierra ) equals: 1.
self deny: (topoMixta calcularProporcionDeTierra ) equals: 0.
self assert: (topoDeTierra calcularProporcionDeTierra) equals: topoDeTierra2 calcularProporcionDeTierra.
self deny: (topoDeTierra calcularProporcionDeTierra ) equals: topoDeAgua1 calcularProporcionDeTierra.
self deny: (topoDeTierra calcularProporcionDeTierra ) equals: topoMixta calcularProporcionDeTierra.
]
