Class {
	#name : #TopografiaMixtaTest,
	#superclass : #TopografiaTest,
	#instVars : [
		'topoMixta2',
		'topoMixta3'
	],
	#category : #'O2-Topografias-Test'
}

{ #category : #running }
TopografiaMixtaTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
|col|
super setUp.

topoMixta2 := TopografiaMixta new.
topoMixta2 partes: parts.
topoMixta3 := TopografiaMixta new.
col:= OrderedCollection new.
col add: TopografiaDeTierra new.
col add: TopografiaDeAgua new.
col add: TopografiaDeAgua new.
col add: TopografiaDeAgua new.
topoMixta3 partes: col. 
]

{ #category : #tests }
TopografiaMixtaTest >> testCalcularProporcionDeAgua [

self assert: (topoMixta calcularProporcionDeAgua ) equals: 0.5.
self assert: (topoMixta2 calcularProporcionDeAgua ) equals: 0.5.
self assert: (topoMixta3 calcularProporcionDeAgua ) equals: 0.75.
]

{ #category : #tests }
TopografiaMixtaTest >> testCalcularProporcionDeTierra [

self assert: (topoMixta calcularProporcionDeTierra ) equals: 0.5.
self assert: (topoMixta2 calcularProporcionDeTierra ) equals: 0.5.
self assert: (topoMixta3 calcularProporcionDeTierra ) equals: 0.25.
]

{ #category : #tests }
TopografiaMixtaTest >> testCompararConMixta [

self assert: (topoMixta compararConMixta: topoMixta2).
self deny: (topoMixta2 compararConMixta: topoMixta3).
self deny: (topoDeAgua1 compararConMixta: topoMixta).
self deny: (topoDeTierra compararConMixta: topoMixta3).
]

{ #category : #tests }
TopografiaMixtaTest >> testSoyIgualA [

self assert: (topoMixta soyIgualA: topoMixta2).
self deny: (topoMixta soyIgualA: topoMixta3).
self deny: (topoMixta soyIgualA: topoDeAgua1).
self deny: (topoMixta soyIgualA: topoDeTierra).
]
